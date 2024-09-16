using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GolhaRestaurant_main_.Control
{
    public partial class shw_ins_detail : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MyDataAccesslayer mda = new MyDataAccesslayer();
            string id=Request.QueryString["user"];
            string sql = string.Format("select kpicture,kid,ktitle,kdescribe from knowledge where kid={0}",id);
            ProductsDataSource.ConnectionString = mda.stringconn().ToString();
            ProductsDataSource.SelectCommand = sql;

        }
    }
}