using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace GolhaRestaurant_main_.Control
{
    public partial class view_category : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MyDataAccesslayer mda = new MyDataAccesslayer();
            if (Request["user"] != null)
            {
                datascategory.ConnectionString = mda.stringconn();
                datascategory.SelectCommand = string.Format("select * from food where fcategory={0}", Request.QueryString["user"]);
            }
            if (Request["fid"] != null)
            {
                //fill listview
                datascategory.ConnectionString = mda.stringconn();
                datascategory.SelectCommand = string.Format("select * from food where fid={0}", Request["fid"]);
                //literal
                string sql = "select * from food where fid="+Request["fid"];
                mda.Connect();
                DataTable dt=mda.Select(sql).Tables[0];
                mda.Disconnect();
                ltrviewfood.Text ="<hr />" + dt.Rows[0][2].ToString();


            }
        }

        protected void ProductsListView_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}