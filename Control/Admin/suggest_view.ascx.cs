using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
namespace GolhaRestaurant_main_.Control.suggest
{
    public partial class suggest_view : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MyDataAccesslayer mda = new MyDataAccesslayer();
            string sql = "select susername,sdescribe from suggestion";
            mda.Connect();
            DataTable dt= mda.Select(sql).Tables[0];
            mda.Disconnect();
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }
}