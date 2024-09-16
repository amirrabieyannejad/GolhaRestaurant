using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GolhaRestaurant_main_.Control.menu
{
    public partial class requirement_page : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                MyDataAccesslayer mda = new MyDataAccesslayer();
                string sql = "select * from requirements order by rid desc";
                ProductsDataSource.ConnectionString = mda.stringconn().ToString();
                ProductsDataSource.SelectCommand = sql;
            }
        }
    }
}