using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace GolhaRestaurant_main_.Control
{
    public partial class cook_page : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                UserClass us = new UserClass();
                DataTable dt = us.category();
                ddlcategory.DataSource = dt;
                ddlcategory.DataTextField = "ctype";
                ddlcategory.DataValueField = "cid";
                ddlcategory.DataBind();
            }
        }

        protected void btnsave_Click(object sender, EventArgs e)
        {
            try
            {
                int a = ddlcategory.SelectedIndex+1;
                string sql = string.Format("insert into food (fname,fdescribe,fcategory) values(N'{0}',N'{1}',{2})", txtname.Text, FCKeditor1.Value.Replace("'"," "), (a).ToString());
                MyDataAccesslayer da = new MyDataAccesslayer();
                da.Connect();
                da.Docommand(sql);
                da.Disconnect();
                Response.Redirect("main_page.aspx?sug=ok");
            }
            catch(Exception ex)
            {
                if (ex.Message != null)
                    lblerror.Visible = true;  
            }

        }
    }
}