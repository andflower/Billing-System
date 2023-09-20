﻿using Guna.UI2.WinForms;
using System;
using System.Windows.Forms;


namespace BS
{
    public partial class SampleView : Sample
    {
        public SampleView()
        {
            InitializeComponent();
        }

        public virtual void btnViewAdd_Click(object sender, EventArgs e)
        {

        }

        public virtual void txtSearch_TextChanged(object sender, EventArgs e)
        {

        }

        public virtual void txtSearch_IconRightClick(object sender, EventArgs e)
        {

        }

        public virtual void txtSearch_MouseClick(object sender, MouseEventArgs e)
        {
            var t = sender as Guna2TextBox;
            t.SelectionStart = t.Text.Length;
        }
    }
}
