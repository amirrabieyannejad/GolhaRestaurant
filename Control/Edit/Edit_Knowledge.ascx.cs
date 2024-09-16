using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace GolhaRestaurant_main_.Control.Edit
{
    public partial class Edit_Knoledge : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                MyDataAccesslayer mda = new MyDataAccesslayer();
                string sql = "select * from knowledge_view() order by kid desc";
                ProductsDataSource.ConnectionString = mda.stringconn().ToString();
                ProductsDataSource.SelectCommand = sql;
            }
        }

        protected void ProductsListView_ItemDeleting(object sender, ListViewDeleteEventArgs e)
        {

            string empid = "";

            Label lbl = (ProductsListView.Items[e.ItemIndex].FindControl("EmpIDLabel")) as Label;

            if (lbl != null)

                empid = lbl.Text;

            string DeleteQuery = "Delete from knowledge WHERE kid = " + empid  ;
            MyDataAccesslayer mda = new MyDataAccesslayer();
            mda.Connect();
            mda.Docommand(DeleteQuery);
            mda.Disconnect();

            Response.Redirect("Main_page.aspx?id=kedit");
            //ProductsListView.EditIndex = -1;

            //lvEmployee.DataSource = GetEmployee("Select * from Employee");

            //lvEmployee.DataBind();

        }
       





    }
}