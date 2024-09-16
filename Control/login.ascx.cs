using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;

namespace GolhaRestaurant_main_
{
    public partial class login : System.Web.UI.UserControl
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Random rnd = new Random();
                lblfirst.Text = rnd.Next(1, 9).ToString();
                lblsecond.Text = rnd.Next(1, 9).ToString();
                
            }
        }

        public void btnusubmit_Click(object sender, EventArgs e)
        {
            UserClass us = new UserClass();
            int c= Convert.ToInt32(lblfirst.Text)+Convert.ToInt32(lblsecond.Text);
            if (c.ToString() == txtsecure.Text)
            {
                try
                {


                    us.insertionUser(txtuuser.Text.Replace("'", " "), txtupass.Text.Replace("'", " "), txtuemail.Text.Replace("'", " "), txtuname.Text.Replace("'", " "), txtufamily.Text.Replace("'", " "));
                    Response.Redirect("Main_page.aspx?id=main&name=سلام  " + txtuuser.Text);
                }
                catch (Exception ex)
                {
                    if (ex.Message != null)
                    {
                        lblerror.Visible = false;
                    }
                    else
                    {
                        lblerror.Visible = false;
                    }
                }
            }
            else 
            {
                lblsecurerror.Visible = true;
                
            }
        }
    
    }
}