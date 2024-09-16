using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GolhaRestaurant_main_.Control.Edit
{
    public partial class Edit_requirement : System.Web.UI.UserControl
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
        protected void ProductsListView_ItemDeleting(object sender, ListViewDeleteEventArgs e)
        {

            string empid = "";

            Label lbl = (ProductsListView.Items[e.ItemIndex].FindControl("EmpIDLabel")) as Label;

            if (lbl != null)

                empid = lbl.Text;

            string DeleteQuery = "Delete from requirements WHERE rid = " + empid;
            MyDataAccesslayer mda = new MyDataAccesslayer();
            mda.Connect();
            mda.Docommand(DeleteQuery);
            mda.Disconnect();

            Response.Redirect("Main_page.aspx?id=request");
            //ProductsListView.EditIndex = -1;

            //lvEmployee.DataSource = GetEmployee("Select * from Employee");

            //lvEmployee.DataBind();

        }
    }
}