using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;


public class MyDataAccesslayer
{
    public enum ServerType
    {
        SQLServer,Express
    }
    public ServerType type = ServerType.Express;
    public string ServerName = "local";
    public string DBName = "";
    public string Username = "";
    public string Password = "";

    SqlConnection con;
    SqlCommand cmd;
    SqlDataAdapter da;

    public string LastError = "";

    public MyDataAccesslayer()
	{
        con = new SqlConnection();
        cmd = new SqlCommand();
        da = new SqlDataAdapter();

        cmd.Connection = con;
        da.SelectCommand = cmd;
	}
    public string stringconn()
    {
      string sql= "Server =.; Database =Restaurant; Trusted_Connection =True; ";
        //string sql = "Server=www.golhafood.com;Database=golhafcompany_Restaurant;User ID=golhafcompany_golha;Password=1270066137Amir;";
        return sql;
    }
    public bool Connect()
    {
        bool err = false;
        string cs;
        //if (type == ServerType.Express)
        //{
            //cs="data source=.\\SQLEXPRESS;attachdbfilename=|dataDirectory|\\{0};Integrated Security=True;User Instance=True";
            //cs = string.Format(cs, DBName);
        cs = stringconn();
        //cs = "Server=46.4.146.194;Database=golhafcompany_shopdb;User ID=golha;Password=1270066137Amir;";
        //}
        //else if (type== ServerType.SQLServer)
        //{
          //  cs = "server={0};Database={1};UID={2};PWD={3};";
            //cs = string.Format(cs, ServerName, DBName, Username, Password);
        //}
        con.ConnectionString = cs;
        try
        {
            con.Open();
            err = true;
        }
        catch (Exception ex)
        {
            this.LastError += ex.Message;
        }
        return err;
    }
    public void Disconnect()
    {
        con.Close();
    }

    public DataSet Select(string sql)
    {
        DataSet ds = new DataSet();
        cmd.CommandText = sql;
        if (con.State != ConnectionState.Open)
            Connect();
        try
        {
            da.Fill(ds);
        }
        catch (Exception ex)
        {
            this.LastError += ex.Message;
        }
        return ds;
    }
    public bool Docommand(string sql)
    {
        bool r = false;
        cmd.CommandText = sql;
        try
        {
            cmd.ExecuteNonQuery();
            r = true;
        }
        catch (Exception ex)
        {
            this.LastError += ex.Message;
        }
        return r;
    }

    public object ExecuteAndReturnValue(string sql)
    {
        object obj=null;
        cmd.CommandText = sql;
        try
        {
            
            obj = cmd.ExecuteScalar();
        }
        catch(Exception ex)
        {
            this.LastError += ex.Message;
        }
        return obj;
    }

}
