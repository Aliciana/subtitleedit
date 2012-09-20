﻿using Microsoft.VisualStudio.TestTools.UnitTesting;
using Nikse.SubtitleEdit.Forms;
using System;

namespace Test
{


    /// <summary>
    ///This is a test class for FormRemoveTextForHearImpairedTest and is intended
    ///to contain all FormRemoveTextForHearImpairedTest Unit Tests
    ///</summary>
    [TestClass()]
    public class RemoveTextForHearImpairedTest
    {


        private TestContext testContextInstance;

        /// <summary>
        ///Gets or sets the test context which provides
        ///information about and functionality for the current test run.
        ///</summary>
        public TestContext TestContext
        {
            get
            {
                return testContextInstance;
            }
            set
            {
                testContextInstance = value;
            }
        }

        #region Additional test attributes
        //
        //You can use the following additional attributes as you write your tests:
        //
        //Use ClassInitialize to run code before running the first test in the class
        //[ClassInitialize()]
        //public static void MyClassInitialize(TestContext testContext)
        //{
        //}
        //
        //Use ClassCleanup to run code after all tests in a class have run
        //[ClassCleanup()]
        //public static void MyClassCleanup()
        //{
        //}
        //
        //Use TestInitialize to run code before running each test
        //[TestInitialize()]
        //public void MyTestInitialize()
        //{
        //}
        //
        //Use TestCleanup to run code after each test has run
        //[TestCleanup()]
        //public void MyTestCleanup()
        //{
        //}
        //
        #endregion


        /// <summary>
        ///A test for RemoveColon
        ///</summary>
        [TestMethod()]
        [DeploymentItem("SubtitleEdit.exe")]
        public void RemoveColonTest()
        {
            FormRemoveTextForHearImpaired_Accessor target = new FormRemoveTextForHearImpaired_Accessor();
            string text = "Man over P.A.:\r\nGive back our homes.";
            string expected = "Give back our homes.";
            string actual = target.RemoveColon(text);
            Assert.AreEqual(expected, actual);
        }

        /// <summary>
        ///A test for RemoveHIInsideLine
        ///</summary>
        [TestMethod()]
        [DeploymentItem("SubtitleEdit.exe")]
        public void RemoveHIInsideLine()
        {
            FormRemoveTextForHearImpaired_Accessor target = new FormRemoveTextForHearImpaired_Accessor();
            string text = "Be quiet. (SHUSHING) It's okay.";
            string expected = "Be quiet. It's okay.";
            string actual = target.RemoveHearImpairedtagsInsideLine(text);
            Assert.AreEqual(expected, actual);
        }

        /// <summary>
        ///A test for RemoveHI
        ///</summary>
        [TestMethod()]
        [DeploymentItem("SubtitleEdit.exe")]
        public void RemoveHI1()
        {
            FormRemoveTextForHearImpaired_Accessor target = new FormRemoveTextForHearImpaired_Accessor();
            string text = "- Aw, save it. Storm?\r\n- [Storm]\r\nWe're outta here.";
            string expected = "- Aw, save it. Storm?\r\n- We're outta here.";
            string actual = target.RemoveTextFromHearImpaired(text);
            Assert.AreEqual(expected, actual);
        }

        /// <summary>
        ///A test for RemoveHI
        ///</summary>
        [TestMethod()]
        [DeploymentItem("SubtitleEdit.exe")]
        public void RemoveHI2()
        {
            FormRemoveTextForHearImpaired_Accessor target = new FormRemoveTextForHearImpaired_Accessor();
            string text = "[Chuckles,\r\nCoughing]\r\nBut we lived through it.";
            string expected = "But we lived through it.";
            string actual = target.RemoveTextFromHearImpaired(text);
            Assert.AreEqual(expected, actual);
        }

        /// <summary>
        ///A test for no removal
        ///</summary>
        [TestMethod()]
        [DeploymentItem("SubtitleEdit.exe")]
        public void RemoveHINot()
        {
            FormRemoveTextForHearImpaired_Accessor target = new FormRemoveTextForHearImpaired_Accessor();
            string text = "is the body of a mutant kid\r\non the 6:00 news.";
            string expected = "is the body of a mutant kid\r\non the 6:00 news.";
            string actual = target.RemoveTextFromHearImpaired(text);
            Assert.AreEqual(expected, actual);
        }


        /// <summary>
        ///A test for RemoveHI
        ///</summary>
        [TestMethod()]
        [DeploymentItem("SubtitleEdit.exe")]
        public void RemoveHIMultilineItalic()
        {
            FormRemoveTextForHearImpaired_Accessor target = new FormRemoveTextForHearImpaired_Accessor();
            string text = "<i>NARRATOR:" + Environment.NewLine +
                          "Previously on NCIS</i>";
            string expected = "<i>Previously on NCIS</i>";
            string actual = target.RemoveTextFromHearImpaired(text);
            Assert.AreEqual(expected, actual);
        }

        /// <summary>
        ///A test for RemoveHI
        ///</summary>
        [TestMethod()]
        [DeploymentItem("SubtitleEdit.exe")]
        public void RemoveHISecondLineDelay()
        {
            FormRemoveTextForHearImpaired_Accessor target = new FormRemoveTextForHearImpaired_Accessor();
            string text = "- JOHN: Hey." + Environment.NewLine +
                          "- ...hey.";
            string expected = "- Hey."+ Environment.NewLine +"- ...hey.";
            string actual = target.RemoveTextFromHearImpaired(text);
            Assert.AreEqual(expected, actual);
        }

        [TestMethod()]
        [DeploymentItem("SubtitleEdit.exe")]
        public void RemoveHIQuotes()
        {
            FormRemoveTextForHearImpaired_Accessor target = new FormRemoveTextForHearImpaired_Accessor();
            string text = "- Where?!" + Environment.NewLine + "- Ow!";
            string expected = "Where?!";
            string actual = target.RemoveInterjections(text);
            Assert.AreEqual(expected, actual);
        }


        [TestMethod()]
        [DeploymentItem("SubtitleEdit.exe")]
        public void RemoveRemoveNameOfFirstLine()
        {
            FormRemoveTextForHearImpaired_Accessor target = new FormRemoveTextForHearImpaired_Accessor();
            target.checkBoxRemoveInterjections.Checked = false;
            string text = "HECTOR: Hi." + Environment.NewLine + "-Oh, hey, Hector.";
            string expected = "- Hi." + Environment.NewLine + "- Oh, hey, Hector.";
            string actual = target.RemoveTextFromHearImpaired(text);
            Assert.AreEqual(expected, actual);
        }

        [TestMethod()]
        [DeploymentItem("SubtitleEdit.exe")]
        public void RemoveInterjections()
        {
            FormRemoveTextForHearImpaired_Accessor target = new FormRemoveTextForHearImpaired_Accessor();
            target.checkBoxRemoveInterjections.Checked = true;
            string text = "-Ballpark." + Environment.NewLine + "-Hmm.";
            string expected = "Ballpark.";
            string actual = target.RemoveTextFromHearImpaired(text);
            Assert.AreEqual(expected, actual);
        }

        [TestMethod()]
        [DeploymentItem("SubtitleEdit.exe")]
        public void RemoveInterjections2()
        {
            FormRemoveTextForHearImpaired_Accessor target = new FormRemoveTextForHearImpaired_Accessor();
            target.checkBoxRemoveInterjections.Checked = true;
            string text = "-Ballpark." + Environment.NewLine + "-Mm-hm.";
            string expected = "Ballpark.";
            string actual = target.RemoveTextFromHearImpaired(text);
            Assert.AreEqual(expected, actual);
        }

        [TestMethod()]
        [DeploymentItem("SubtitleEdit.exe")]
        public void RemoveInterjections3()
        {
            FormRemoveTextForHearImpaired_Accessor target = new FormRemoveTextForHearImpaired_Accessor();
            target.checkBoxRemoveInterjections.Checked = true;
            string text = "-Mm-hm." + Environment.NewLine + "-Ballpark.";
            string expected = "Ballpark.";
            string actual = target.RemoveTextFromHearImpaired(text);
            Assert.AreEqual(expected, actual);
        }

    }
}
