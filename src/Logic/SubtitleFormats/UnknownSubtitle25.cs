﻿using System;
using System.Collections.Generic;
using System.Text;
using System.Globalization;
using System.Text.RegularExpressions;

namespace Nikse.SubtitleEdit.Logic.SubtitleFormats
{
    public class UnknownSubtitle25 : SubtitleFormat
    {

        //79.29 1.63
        static readonly Regex RegexTimeCode1 = new Regex(@"^\d+.[0-9]{1,2} \d+.[0-9]{1,2}$", RegexOptions.Compiled);
        static readonly Regex RegexTimeCode2 = new Regex(@"^\d+ \d+.[0-9]{1,2}$", RegexOptions.Compiled);
        static readonly Regex RegexTimeCode3 = new Regex(@"^\d+.[0-9]{1,2} \d+$", RegexOptions.Compiled);

        public override string Extension
        {
            get { return ".sub"; }
        }

        public override string Name
        {
            get { return "Unknown 25"; }
        }

        public override bool IsTimeBased
        {
            get { return true; }
        }

        public override bool IsMine(List<string> lines, string fileName)
        {
            var subtitle = new Subtitle();
            LoadSubtitle(subtitle, lines, fileName);
            return subtitle.Paragraphs.Count > _errorCount;
        }

        public override string ToText(Subtitle subtitle, string title)
        {
            var sb = new StringBuilder();
            sb.AppendLine(@"TITLE=
FILE=
AUTHOR=
TYPE=VIDEO
FORMAT=TIME
NOTE=
");

            Paragraph last = null;
            foreach (Paragraph p in subtitle.Paragraphs)
            {
                sb.AppendLine(string.Format("{0} {1}\r\n{2}\r\n", MakeTimeCode(p.StartTime, last), p.Duration.TotalSeconds.ToString(CultureInfo.InstalledUICulture), p.Text));
                last = p;
            }
            return sb.ToString().Trim().Replace(Environment.NewLine, "\n");
        }

        private string MakeTimeCode(TimeCode timeCode, Paragraph last)
        {
            double start = 0;
            if (last != null)
                start = last.EndTime.TotalSeconds;
            return string.Format("{0:0.0#}", (timeCode.TotalSeconds - start));
        }

        public override void LoadSubtitle(Subtitle subtitle, List<string> lines, string fileName)
        {
            _errorCount = 0;
            Paragraph p = null;
            var sb = new StringBuilder();
            foreach (string line in lines)
            {
                string s = line.TrimEnd();
                if (RegexTimeCode1.IsMatch(s) || RegexTimeCode2.IsMatch(s) || RegexTimeCode3.IsMatch(s))
                {
                    try
                    {
                        if (p != null)
                        {
                            p.Text = sb.ToString().Trim();
                            subtitle.Paragraphs.Add(p);
                        }
                        sb = new StringBuilder();
                        string[] arr = s.Split(" ".ToCharArray(), StringSplitOptions.RemoveEmptyEntries);
                        if (arr.Length == 2)
                        {
                            double secondsSinceLast = double.Parse(arr[0]);
                            double secondsDuration = double.Parse(arr[1]);
                            if (subtitle.Paragraphs.Count > 0)
                            {
                                secondsSinceLast += subtitle.Paragraphs[subtitle.Paragraphs.Count - 1].EndTime.TotalSeconds;
                            }
                            p = new Paragraph(string.Empty, (int)(Math.Round(secondsSinceLast * 1000.0)), (int)(Math.Round((secondsSinceLast + secondsDuration) * 1000.0)));
                        }
                    }
                    catch
                    {
                        _errorCount++;
                        p = null;
                    }
                }
                else if (p != null && s.Length > 0)
                {
                    sb.AppendLine(s.Trim());
                }
                else if (s.Trim().Length > 0)
                {
                    _errorCount++;
                }
            }
            if (p != null)
            {
                p.Text = sb.ToString().Trim();
                subtitle.Paragraphs.Add(p);
            }

            subtitle.Renumber(1);
        }
    }
}
