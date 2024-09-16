using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GolhaRestaurant_main_.Control.Admin
{
    public partial class Insertion__requirement : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            convertDate cd=new convertDate();
            try
            {
                MyDataAccesslayer mda = new MyDataAccesslayer();
                string sql =string.Format( "insert into requirements (rtitle,rdescribe,rdate) values(N'{0}',N'{1}',N'{2}')",txttitle.Text,FCKeditor1.Value.Replace("'"," "),cd.convert_Date().ToString());
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