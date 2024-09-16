using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GolhaRestaurant_main_.Control
{
    public partial class Insertion_science : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnssubmit_Click(object sender, EventArgs e)
        {
            try
            {
                insertion_sc ins = new insertion_sc();
                string path = Server.MapPath(".");
                ins.Locatepics(path, flpimage, txttitle.Text.Replace("'", " "), txtsource.Text.Replace("'", " "), txtdescribe.Text.Replace("'", " "));
                Response.Redirect("Main_page.aspx?id=main&sug=insc");
            }
            catch(Exception ex) 
            {
                if (ex.Message != null)
                     lblerror.Text=ex.Message;
            }

        }
    }
}