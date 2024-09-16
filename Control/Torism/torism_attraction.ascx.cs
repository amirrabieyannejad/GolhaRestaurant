using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace GolhaRestaurant_main_.Control.Torism
{
    public partial class torism_attraction : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MyDataAccesslayer mda = new MyDataAccesslayer();
            string sql = "select * from tourism " ;
            mda.Connect();
            DataTable dt = mda.Select(sql).Tables[0];
            mda.Disconnect();
           // ltrviewattraction.Text = dt.Rows[0][1].ToString();
        }
    }
}