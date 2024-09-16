using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GolhaRestaurant_main_.Control.Admin
{
    public partial class Login_Admin : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Random rnd = new Random();
                lblfirst.Text = rnd.Next(1, 9).ToString();
                lblsecond.Text = rnd.Next(1, 9).ToString();
                lblerror.Visible = false;
                lblsecurerror.Visible = false;

            }
        }

        protected void btnadkogin_Click(object sender, EventArgs e)
        {


            UserClass us = new UserClass();
            int c = Convert.ToInt32(lblfirst.Text) + Convert.ToInt32(lblsecond.Text);
            
            if (c.ToString() == txtsecure.Text )
            {
                if (us.AdminLogin(txtpass.Text.Replace("'", " ")) == true && txtuser.Text == "admin" )
                {
                    Session["admin"] = "1";
                    if (Request["id"] == "cooksec")
                    {
                        
                        Response.Redirect("Main_page.aspx?id=cooksec");
                    }
                    else if (Request["id"] == "sciencesec")
                    {
                        
                        Response.Redirect("Main_page.aspx?id=sciencesec");
                    }
                    else if (Request["id"] == "suggestsec")
                    {
                        
                        Response.Redirect("Main_page.aspx?id=suggestsec");
                    }
                    else if(Request["id"]=="kedit")
                        Response.Redirect("Main_page.aspx?id=kedit");
                    else if (Request["id"] == "cedit")
                        Response.Redirect("Main_page.aspx?id=cedit");

                }
                else
                {
                    lblerror.Visible = true;
                }

            }
            else
            {
                lblsecurerror.Visible = true;
            }
        }
        
    }
}