using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

/// <summary>
/// Summary description for UserClass
/// </summary>
public class UserClass
{
    MyDataAccesslayer db = new MyDataAccesslayer();

    public bool CanLogin(string user, string pass)
    {
        bool result = false;
        try
        {
            db.Connect();
            string s = "select count(*) from users where uusername='{0}' and upassword='{1}' ";
            s = string.Format(s, user, pass);
            int count = Int32.Parse(db.ExecuteAndReturnValue(s).ToString());
            db.Disconnect();
            if (count == 1)
                result = true;
            return result;
        }
        catch
        {
            
                return false;
            
        }
    }
             public bool AdminLogin( string pass)
    {
        bool result=false ;
        try
        {
            db.Connect();
            string s = "select count(*) from users where uusername='admin' and upassword='{0}' ";
            s = string.Format(s,  pass);
            int count = Int32.Parse(db.ExecuteAndReturnValue(s).ToString());
            db.Disconnect();
            if (count == 1)
                result = true;
            return result;
        }
        catch(Exception ex) {
            if (ex.Data.Count != 0)
                return false;
            else return true;
        }
                 

    }
    public void insertOpinion(string ip, string opinion)
    {
       
        string sql = "insert into opinion values('{0}',N'{1}')";
        sql = string.Format(sql,ip,opinion);
        db.Connect();
        db.Docommand(sql);
        db.Disconnect();
    }
    public void insertionUser(string user,string pass,string email,string name,string family)
    {

        string sql = "insert into users (uusername,upassword,uemail,uname,ufamily) values(N'{0}',N'{1}',N'{2}',N'{3}',N'{4}')";
        sql = string.Format(sql,user,pass,email,name,family);
        db.Connect();
        db.Docommand(sql);
        db.Disconnect();
    }

    public void InsertionKnowledge(string title, string source, string picture, string describe)
    {

        string sql = string.Format("insert into knowledge (ktitle,ksource,kpicture,kdescribe) values (N'{0}',N'{1}',N'{2}',N'{3}')", title, source, picture, describe);
        db.Connect();
        db.Docommand(sql);
        db.Disconnect(); 
    }

    public bool checkuser(string user)
    {

        bool a = false; 
        try
        {
            string sql = string.Format("validuser '{0}'", user);
            db.Connect();
            DataTable dt = db.Select(sql).Tables[0];
            db.Disconnect();
            if(dt.Rows[0][0]!=null)
            a= true;
        }
        catch(Exception ex)
        {
            if (ex.Message != null)
                a= false;
        }
        return a;
    }
    public DataTable category()
    {
        DataTable dt = new DataTable();
        string sql = "SELECT * FROM category";
        db.Connect();
        dt = db.Select(sql).Tables[0];
        db.Disconnect();
        return dt;
    }
    public UserClass()
	{
		
	}
}
