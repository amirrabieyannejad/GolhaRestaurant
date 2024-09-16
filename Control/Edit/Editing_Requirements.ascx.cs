using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace GolhaRestaurant_main_.Control.Edit
{
    public partial class Editing_Requirements : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MyDataAccesslayer mda = new MyDataAccesslayer();
            
            //
            if (!IsPostBack)
            {
                mda.Connect();
                DataTable dt2 = mda.Select("select * from requirements where rid=" + Request["user"].ToString()).Tables[0];
                mda.Disconnect();
                txttitle.Text = dt2.Rows[0][1].ToString();
                FCKeditor1.Value = dt2.Rows[0][2].ToString();
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            convertDate cd=new convertDate();
            MyDataAccesslayer mda = new MyDataAccesslayer();
            string sql = string.Format( "update requirements set rtitle=N'{0}' , rdescribe=N'{1}' , rdate=N'{2}' where rid={3}",txttitle.Text.Replace("'"," "),FCKeditor1.Value.Replace("'"," "),cd.convert_Date().ToString(),Request["user"].ToString());
            try
            {
                mda.Connect();
                mda.Docommand(sql);
                mda.Disconnect();
                lblerror.Visible = false;
                Response.Redirect("Main_Page.aspx?sug=ok");
            }
            catch (Exception ex)
            {
                if (ex.Message != null)
                    lblerror.Visible = true;
            }

        }
    }
}