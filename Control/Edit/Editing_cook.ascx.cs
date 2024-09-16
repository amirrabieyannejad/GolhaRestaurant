using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace GolhaRestaurant_main_.Control.Edit
{
    public partial class Editing_cook : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                MyDataAccesslayer mda = new MyDataAccesslayer();
                UserClass us = new UserClass();
                DataTable dt = us.category();
                ddlcategory.DataSource = dt;
                ddlcategory.DataTextField = "ctype";
                ddlcategory.DataValueField = "cid";
                ddlcategory.DataBind();
                ddlcategory.SelectedIndex = Convert.ToInt32(Request["type"].ToString())-1;
                //
                mda.Connect();
                DataTable dt2 = mda.Select("select * from food where fid=" + Request["user"].ToString()+" order by fid desc").Tables[0];
                mda.Disconnect();
                txtname.Text=dt2.Rows[0][1].ToString();
                FCKeditor1.Value = dt2.Rows[0][3].ToString();
            }

        }

        protected void btnsave_Click(object sender, EventArgs e)
        {
            MyDataAccesslayer mda = new MyDataAccesslayer();
            try
            {
                string sql = string.Format("update food set fname=N'{0}' , fcategory={1} , fdescribe=N'{2}' where fid={3}", txtname.Text.Replace("'"," "), ddlcategory.SelectedIndex+1 , FCKeditor1.Value.Replace("'"," "), Request["user"].ToString());
                mda.Connect();
                mda.Docommand(sql);
                mda.Disconnect();
                lblerror.Visible = false;
                Response.Redirect("Main_Page.aspx?sug=ok");
            }
            catch(Exception ex)
            {
                if (ex.Message != null)
                    lblerror.Visible = true;
            }

        }
    }
}