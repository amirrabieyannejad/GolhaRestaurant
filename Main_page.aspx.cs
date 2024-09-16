using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using PersianDatePickup;
using System.Data;
using System.Web.UI.WebControls;


namespace GolhaRestaurant_main_
{
    
    public partial class Main_page : System.Web.UI.Page
    {
        System.Web.UI.Control c = new System.Web.UI.Control();
           
        protected void Page_Load(object sender, EventArgs e)
        {
            
            
            
            if (!IsPostBack)
            {

               //
                MyDataAccesslayer db = new MyDataAccesslayer();
               //default poll value
                RadioButtonList1.SelectedIndex = 0;

               //chart
               SqlDataSource1.ConnectionString = db.stringconn().ToString();
              //error SqlDataSource1.SelectCommand = "poll";
                
               
                //
                
                //
                if (Request.QueryString["id"] == null)
                {
                    c = LoadControl("~/Control/First_page.ascx");
                    pnlmain.Controls.Add(c);
                }
              
                    
            }

            if (Request.QueryString["name"] != "")
            {
                lblacount.Text = Request.QueryString["name"];
            }
            else lblacount.Text = "";

            if (Request.QueryString["error"] == "true")
            {
                lblerror.Visible = true;
                
            }
            if (Request.QueryString["error"] == "false")
            {
                lblerror.Visible = false;
            }


            if (Session["validate"]!= null)
            {
                btnsignout.Visible = true;
            }
        
            ////
            if (Session["uname"] != null)
            {
                lblacount.Text = Session["uname"].ToString();
            }
            
            if (Request.QueryString["sug"] == "ok" || Request.QueryString["sug"] == "insc")
            {
                pnlmsg.Visible = true;
            }
             
            
               
               
        }

        protected void btnmainpage_Click(object sender, EventArgs e)
        {
            Response.Redirect("Main_page.aspx?id=main");
        }

    

        protected void btnalogin_Click(object sender, EventArgs e)
        {
            
           
            UserClass us = new UserClass();
            if (us.CanLogin(txtuser.Text.Replace("'", " "), txtpass.Text.Replace("'", " ")) == true)
                {
                    Session["validate"] = "1";
                    lblacount.Text = "خوش آمدید:" + txtuser.Text.Replace("'", " ");
                    Session["uname"] = lblacount.Text.Replace("'", " ");
                    Response.Redirect(string.Format("Main_page.aspx?error={0}&name={1}","false", lblacount.Text));
                    
                    //

                }
                else if (us.CanLogin(txtuser.Text, txtpass.Text)==false)
                {
                    Response.Redirect("Main_page.aspx?error=true");
                }
            
        }

    

        protected void btncomment_Click(object sender, EventArgs e)
        {
            
            UserClass us = new UserClass();
           
                us.insertOpinion(HttpContext.Current.Request.UserHostAddress, RadioButtonList1.SelectedItem.ToString());
                Response.Redirect("Main_page.aspx?sug=ok");
           
        }

        protected void pnlmain_Init(object sender, EventArgs e)
        {
           
                if (Request.QueryString["id"] == "login")
                {
                    pnlmain.Controls.Remove(c);
                    c = LoadControl("~/Control/login.ascx");
                    pnlmain.Controls.Add(c);
                }

                else if (Request.QueryString["id"] == "main")
                {
                    pnlmain.Controls.Remove(c);
                    c = LoadControl("~/Control/First_page.ascx");
                    pnlmain.Controls.Add(c);
                }
                else if (Request.QueryString["id"] == "suggestion")
                {
                    c = LoadControl("~/Control/opinion_page.ascx");
                    pnlmain.Controls.Add(c);
                }
                
                else if (Request.QueryString["id"] == "learn")
                {
                    
                    c = LoadControl("~/Control/learning_page.ascx");
                    pnlmain.Controls.Add(c);
                }
                
                
                else if (Request.QueryString["id"] == "cookview")
                {
                    c = LoadControl("~/Control/cook_view.ascx");
                    pnlmain.Controls.Add(c);
                }
                else if (Request.QueryString["id"] == "viewcategory")
                {
                c = LoadControl("~/Control/view_category.ascx");
                    pnlmain.Controls.Add(c);
                }
                else if (Request.QueryString["id"] == "viewfood" && Request.QueryString["user"] != null)
                {
                    c = LoadControl("~/Control/view_food.ascx");
                    pnlmain.Controls.Add(c);
                }
                else if (Request.QueryString["id"] == "torism")
                {
                    c = LoadControl("~/Control/Torism/torism_attraction.ascx");
                    pnlmain.Controls.Add(c);
                }
                else if (Request.QueryString["id"] == "map")
                {
                    c = LoadControl("~/Control/Torism/map_page.ascx");
                    pnlmain.Controls.Add(c);
                }
                else if (Request.QueryString["id"] == "ins" && Request.QueryString["user"] != null)
                {
                    c = LoadControl("~/Control/shw_ins_detail.ascx");
                    pnlmain.Controls.Add(c);
                }
                else if (Request.QueryString["id"] == "menu")
                {
                    c = LoadControl("~/Control/menu/Food_menu.ascx");
                    pnlmain.Controls.Add(c);
                }
                if (Request.QueryString["id"] == "aboutus")
                {
                    pnlmain.Controls.Remove(c);
                    c = LoadControl("~/Control/Admin/aboutus.ascx");
                    pnlmain.Controls.Add(c);
                }
                if (Request.QueryString["id"] == "contactus")
                {
                    pnlmain.Controls.Remove(c);
                    c = LoadControl("~/Control/Admin/Contactus.ascx");
                    pnlmain.Controls.Add(c);
                }
            //admin
                else if (Request.QueryString["id"] == "suggestsec")
                {
                    if (Session["admin"] != null)
                    {
                        c = LoadControl("~/Control/Admin/suggest_view.ascx");
                        pnlmain.Controls.Add(c);
                    }
                    else
                    {
                        c = LoadControl("~/Control/Admin/Login_Admin.ascx");
                        pnlmain.Controls.Add(c);
                    }
                }
               
                else if (Request.QueryString["id"] == "sciencesec")
                {
                    if (Session["admin"] != null)
                    {
                        c = LoadControl("~/Control/Admin/Insertion_science.ascx");
                        pnlmain.Controls.Add(c);
                    }
                    else
                    {
                        c = LoadControl("~/Control/Admin/Login_Admin.ascx");
                        pnlmain.Controls.Add(c);
                    }
                    
                }
               
                else if (Request.QueryString["id"] == "kedit")
                {
                    if (Session["admin"] != null)
                    {
                        c = LoadControl("~/Control/Edit/Edit_Knowledge.ascx");
                        pnlmain.Controls.Add(c);
                    }
                    else
                    {
                        c = LoadControl("~/Control/Admin/Login_Admin.ascx");
                        pnlmain.Controls.Add(c);
                    }
                }
                
                else if (Request.QueryString["id"] == "kediting")
                {
                    if (Session["admin"] != null)
                    {
                        c = LoadControl("~/Control/Edit/Editing_knowledge.ascx");
                        pnlmain.Controls.Add(c);
                    }
                    else
                    {
                        c = LoadControl("~/Control/Admin/Login_Admin.ascx");
                        pnlmain.Controls.Add(c);
                    }
                   
                }
                ///cook
                else if (Request.QueryString["id"] == "cooksec")
                {
                    if (Session["admin"] != null)
                    {
                        c = LoadControl("~/Control/Admin/cook_page.ascx");
                        pnlmain.Controls.Add(c);
                    }
                    else
                    {
                        c = LoadControl("~/Control/Admin/Login_Admin.ascx");
                        pnlmain.Controls.Add(c);
                    }
                }
                else if (Request.QueryString["id"] == "cedit")
                
                {
                    if (Session["admin"] != null)
                    {
                        c = LoadControl("~/Control/Edit/Edit_cook.ascx");
                        pnlmain.Controls.Add(c);
                    }
                    else
                    {
                        c = LoadControl("~/Control/Admin/Login_Admin.ascx");
                        pnlmain.Controls.Add(c);
                    }
                }
                else if (Request.QueryString["id"] == "cediting")
                {
                    if (Session["admin"] != null)
                    {
                        c = LoadControl("~/Control/Edit/Editing_cook.ascx");
                        pnlmain.Controls.Add(c);
                    }
                    else
                    {
                        c = LoadControl("~/Control/Admin/Login_Admin.ascx");
                        pnlmain.Controls.Add(c);
                    }

                }
               
               
                ///requirement page
                else if (Request.QueryString["id"] == "rediting")
                {
                    if (Session["admin"] != null)
                    {
                        c = LoadControl("~/Control/Edit/Editing_requirements.ascx");
                        pnlmain.Controls.Add(c);
                    }
                    else
                    {
                        c = LoadControl("~/Control/Admin/Login_Admin.ascx");
                        pnlmain.Controls.Add(c);
                    }

                }
                else if (Request.QueryString["id"] == "require")
                {
                    
                        c = LoadControl("~/Control/menu/requirements_page.ascx");
                        pnlmain.Controls.Add(c);
                   

                }
                else if (Request.QueryString["id"] == "insrequest")
                {
                    if (Session["admin"] != null)
                    {
                        c = LoadControl("~/Control/Admin/Insertion_requirements.ascx");
                        pnlmain.Controls.Add(c);
                    }
                    else
                    {
                        c = LoadControl("~/Control/Admin/Login_Admin.ascx");
                        pnlmain.Controls.Add(c);
                    }

                }
                else if (Request.QueryString["id"] == "request")
                {
                    if (Session["admin"] != null)
                    {
                        c = LoadControl("~/Control/Edit/Edit_Requirements.ascx");
                        pnlmain.Controls.Add(c);
                    }
                    else
                    {
                        c = LoadControl("~/Control/Admin/Login_Admin.ascx");
                        pnlmain.Controls.Add(c);
                    }

                }
                //adminout
                if (Request.QueryString["id"] == "adminout")
                {
                    if (Session["admin"] != null)
                    {
                        Session["admin"] = null;
                        Response.Redirect("main_page.aspx?id=main");
                    }
                 }
           

        }

        protected void btnsignout_Click(object sender, EventArgs e)
        {
            Session["validate"] =null;
            Session["uname"] = null;
            Response.Redirect("Main_page.aspx?id=main");
            btnsignout.Visible = false;
        }

        protected void btnsuggest_Click(object sender, EventArgs e)
        {
            Response.Redirect("Main_page.aspx?id=suggestion");
        }

        protected void btnimages_Click(object sender, EventArgs e)
        {

        }

        protected void btnmenu_Click(object sender, EventArgs e)
        {
            Response.Redirect("Main_page.aspx?id=menu");
        }

        protected void btnmap_Click(object sender, EventArgs e)
        {
            Response.Redirect("Main_page.aspx?id=map");
        }

        protected void btncontact_Click(object sender, EventArgs e)
        {
            Response.Redirect("Main_Page.aspx?id=contactus");
        }

        protected void btnaboutus_Click(object sender, EventArgs e)
        {
            Response.Redirect("Main_Page.aspx?id=aboutus");
        }

        protected void btnrequir_Click(object sender, EventArgs e)
        {
            Response.Redirect("Main_Page.aspx?id=require");
        }
      
    }
}