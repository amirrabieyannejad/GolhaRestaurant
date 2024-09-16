using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace GolhaRestaurant_main_.Control.Edit
{
    public partial class Editing_knowledge : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                MyDataAccesslayer mda = new MyDataAccesslayer();
                mda.Connect();
                string sql = "select * from knowledge where kid=" + Request["user"].ToString()+" order by kid desc";
                DataTable dt = mda.Select(sql).Tables[0];
                mda.Disconnect();
                txttitle.Text = dt.Rows[0][1].ToString();
                txtsource.Text = dt.Rows[0][3].ToString();
                txtdescribe.Text = dt.Rows[0][2].ToString();
                txtpathpic.Text = dt.Rows[0][4].ToString();
            }
        }

        protected void btnksubmit_Click(object sender, EventArgs e)
        {
            
           

            if (flpimage.HasFile)
            {
                insertion_sc isc = new insertion_sc();
                string path = Server.MapPath(".");
                isc.update_Locatepics(path, flpimage, txttitle.Text, txtsource.Text,txtdescribe.Text, Request["user"].ToString());
                Response.Redirect("Main_page.aspx?id=kedit");
            }
            else if (!flpimage.HasFile)
            {
                MyDataAccesslayer mda = new MyDataAccesslayer();
                string sql =string.Format("update knowledge set ktitle=N'{0}' , ksourse=N'{1}' , kpicture='{2}' , kdescribe=N'{3}' where kid={4} ",txttitle.Text,txtsource.Text,txtpathpic.Text,txtdescribe.Text,Request["user"].ToString());
                mda.Connect();
                mda.Docommand(sql);
                mda.Disconnect();
                Response.Redirect("Main_page.aspx?id=kedit");
            }
        }
    }
}