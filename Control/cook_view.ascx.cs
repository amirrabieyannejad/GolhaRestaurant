using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace GolhaRestaurant_main_.Control
{
    public partial class cook_view : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                MyDataAccesslayer mda = new MyDataAccesslayer();
                datascategory.ConnectionString = mda.stringconn().ToString();
                datascategory.SelectCommand = "select * from category";
            }
        }
    }
}