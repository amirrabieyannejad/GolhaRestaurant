using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GolhaRestaurant_main_.Control
{
    public partial class opinion_page : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void send_Click(object sender, EventArgs e)
        {
            UserClass us=new UserClass();
            MyDataAccesslayer mda = new MyDataAccesslayer();
            if (us.checkuser(txtuser.Text))
            {

                string sql = string.Format("insert into suggestion (susername,sdescribe) values(N'{0}',N'{1}')", txtuser.Text.Replace("'", " "), txtopinion.Text.Replace("'", " "));
                mda.Connect();
                mda.Docommand(sql);
                mda.Disconnect();
                Response.Redirect("Main_page.aspx?id=main&sug=ok");
            }
            else
            {
                lblerror.Visible = true;
            }
        }
    }
}