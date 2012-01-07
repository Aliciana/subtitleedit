﻿using System;
using System.Collections.Generic;
using System.Text;
using System.Text.RegularExpressions;

namespace Nikse.SubtitleEdit.Logic.SubtitleFormats
{
    class PinnacleImpression : SubtitleFormat
    {
        Regex regexTimeCodes = new Regex(@"^\d\d:\d\d:\d\d:\d\d \d\d:\d\d:\d\d:\d\d ", RegexOptions.Compiled);
        
        public override string Extension
        {
            get { return ".txt"; }
        }

        public override string Name
        {
            get { return "Pinnacle Impression"; }
        }

        public override bool HasLineNumber
        {
            get { return false; }
        }

        public override bool IsTimeBased
        {
            get { return true; }
        }

        public override bool IsMine(List<string> lines, string fileName)
        {
            var subtitle = new Subtitle();
            StringBuilder sb = new StringBuilder();
            foreach (string line in lines)
                sb.AppendLine(line);
            if (sb.ToString().Contains("#INPOINT OUTPOINT PATH"))
            {
                LoadSubtitle(subtitle, lines, fileName);
                return subtitle.Paragraphs.Count > _errorCount;
            }
            return false;
        }

        public override string ToText(Subtitle subtitle, string title)
        {
            StringBuilder sb = new StringBuilder();
            sb.AppendLine(@"-------------------------------------------------
#INPOINT OUTPOINT PATH
-------------------------------------------------");
            int index = 0;
            foreach (Paragraph p in subtitle.Paragraphs)
            {
//00:03:15:22 00:03:23:10 This is line one.
//This is line two.
                sb.AppendLine(string.Format("{0} {1} {2}", EncodeTimeCode(p.StartTime), EncodeTimeCode(p.EndTime), Utilities.RemoveHtmlTags(p.Text)));
                index++;
            }
            sb.AppendLine(@"-------------------------------------------------");

            return sb.ToString();
        }

        private string EncodeTimeCode(TimeCode time)
        {
            //00:03:15:22 (last is frame)
            int frames = time.Milliseconds / (1000 / 30);
            return string.Format("{0:00}:{1:00}:{2:00}:{3:00}", time.Hours, time.Minutes, time.Seconds, frames);
        }

        public override void LoadSubtitle(Subtitle subtitle, List<string> lines, string fileName)
        {
            //00:03:15:22 00:03:23:10 This is line one.
            //This is line two.
            Paragraph p = null;
            subtitle.Paragraphs.Clear();            
            foreach (string line in lines)
            {
                if (regexTimeCodes.IsMatch(line))
                {
                    string temp = line.Substring(0, regexTimeCodes.Match(line).Length);
                    string start = temp.Substring(0, 11);
                    string end = temp.Substring(12, 11);

                    string[] startParts = start.Split(":".ToCharArray(), StringSplitOptions.RemoveEmptyEntries);
                    string[] endParts = end.Split(":".ToCharArray(), StringSplitOptions.RemoveEmptyEntries);
                    if (startParts.Length == 4 && endParts.Length == 4)
                    {
                        string text = line.Remove(0, regexTimeCodes.Match(line).Length-1).Trim();
                        p = new Paragraph(DecodeTimeCode(startParts), DecodeTimeCode(endParts), text);
                        subtitle.Paragraphs.Add(p);
                    }
                }
                else if (line.Trim().Length == 0)
                {
                    // skip these lines
                }
                else if (line.Trim().Length > 0 && p != null)
                {
                    if (string.IsNullOrEmpty(p.Text))
                        p.Text = line;
                    else
                        p.Text = p.Text + Environment.NewLine + line;
                }
            }

            subtitle.Renumber(1);
        }

        private TimeCode DecodeTimeCode(string[] parts)
        {
            //00:00:07:12
            string hour = parts[0];
            string minutes = parts[1];
            string seconds = parts[2];
            string frames = parts[3];

            int milliseconds = (int)((1000 / 30.0) * int.Parse(frames));
            if (milliseconds > 999)
                milliseconds = 999;

            TimeCode tc = new TimeCode(int.Parse(hour), int.Parse(minutes), int.Parse(seconds), milliseconds);
            return tc;
        }

    }
}

