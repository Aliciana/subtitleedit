﻿using System;
using System.Net;
using System.Windows.Forms;
using Nikse.SubtitleEdit.Logic;
using System.Drawing;

namespace Nikse.SubtitleEdit.Forms
{
    public sealed partial class NetworkStart : Form
    {

        Logic.Networking.NikseWebServiceSession _networkSession;
        string _fileName;

        public NetworkStart()
        {
            InitializeComponent();
            labelStatus.Text = string.Empty;
            Text = Configuration.Settings.Language.NetworkStart.Title;
            labelInfo.Text = Configuration.Settings.Language.NetworkStart.Information;
            labelSessionKey.Text = Configuration.Settings.Language.General.SessionKey;
            labelUserName.Text = Configuration.Settings.Language.General.UserName;
            labelWebServiceUrl.Text = Configuration.Settings.Language.General.WebServiceUrl;
            buttonStart.Text = Configuration.Settings.Language.NetworkStart.Start;
            buttonCancel.Text = Configuration.Settings.Language.General.Cancel;
            FixLargeFonts();
        }

        private void FixLargeFonts()
        {
            Graphics graphics = this.CreateGraphics();
            SizeF textSize = graphics.MeasureString(buttonCancel.Text, this.Font);
            if (textSize.Height > buttonCancel.Height - 4)
            {
                int newButtonHeight = (int)(textSize.Height + 7 + 0.5);
                Utilities.SetButtonHeight(this, newButtonHeight, 1);
            }
        }

        internal void Initialize(Logic.Networking.NikseWebServiceSession networkSession, string fileName)
        {
            _networkSession = networkSession;
            _fileName = fileName;

            textBoxSessionKey.Text = Configuration.Settings.NetworkSettings.SessionKey;
            if (textBoxSessionKey.Text.Trim().Length < 2)
                textBoxSessionKey.Text = Guid.NewGuid().ToString().Replace("-", string.Empty);

            comboBoxWebServiceUrl.Text = Configuration.Settings.NetworkSettings.WebServiceUrl;
            textBoxUserName.Text = Configuration.Settings.NetworkSettings.UserName;
            if (textBoxUserName.Text.Trim().Length < 2)
                textBoxUserName.Text = Dns.GetHostName();
        }

        private void buttonStart_Click(object sender, EventArgs e)
        {
            Configuration.Settings.NetworkSettings.SessionKey = textBoxSessionKey.Text;
            Configuration.Settings.NetworkSettings.WebServiceUrl = comboBoxWebServiceUrl.Text;
            Configuration.Settings.NetworkSettings.UserName = textBoxUserName.Text;

            buttonStart.Enabled = false;
            buttonCancel.Enabled = false;
            textBoxSessionKey.Enabled = false;
            textBoxUserName.Enabled = false;
            comboBoxWebServiceUrl.Enabled = false;
            labelStatus.Text = string.Format(Configuration.Settings.Language.NetworkStart.ConnectionTo, comboBoxWebServiceUrl.Text);
            Refresh();

            try
            {
                string message;
                _networkSession.StartServer(comboBoxWebServiceUrl.Text, textBoxSessionKey.Text, textBoxUserName.Text, _fileName, out message);
                if (message != "OK")
                {
                    MessageBox.Show(message);
                }
                else
                {
                    DialogResult = DialogResult.OK;
                    return;
                }
            }
            catch (Exception exception)
            {
                MessageBox.Show(exception.Message);
            }
            buttonStart.Enabled = true;
            buttonCancel.Enabled = true;
            textBoxSessionKey.Enabled = false;
            textBoxUserName.Enabled = true;
            comboBoxWebServiceUrl.Enabled = true;
            labelStatus.Text = string.Empty;
        }

        private void buttonCancel_Click(object sender, EventArgs e)
        {
            DialogResult = DialogResult.Cancel;
        }

        private void NetworkNew_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Escape)
                DialogResult = DialogResult.Cancel;
        }
    }
}
