using System;
using System.Data;
using System.Configuration;

using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

using System.Data.SqlClient;


/// <summary>
/// Summary description for Locatepics
/// </summary>
public class insertion_sc
{
    public void Locatepics(string path, FileUpload flppicture,
       string title, string source,string describe)
    {
        
        //0- Generet random Name
        //path -->>   d:\myeshop\MyCP\Product
        string[] Path_parts = path.Split('\\');
        //Path_Parts -->> [d:][Myeshop][MyCp][product]
        path = "";
        for (int i = 0; i < Path_parts.Length; i++)
        {
            path += Path_parts[i] + "\\";
            //path -->> d:\\myeshop\\
        }
        path += "NewsPic\\";
        Random r = new Random();
        string filename = r.Next(100000, 2000000).ToString();
        string ext = System.IO.Path.GetExtension(flppicture.PostedFile.FileName);
        while (System.IO.File.Exists(path + filename + "." + ext))
        {
            filename = r.Next(100000, 200000).ToString();
        }
        //1- Save Picture In Server Folder

        //Check Extension And File Size

        flppicture.PostedFile.SaveAs(path + filename + ext);
        string picture = "NewsPic/" + filename.ToString() + ext.ToString();

        // MyDataAccesslayer da = new MyDataAccesslayer();
        //string sql = string.Format("insert into knowledge (ktitle,ksource,kpicture,kdescribe) values (N'{0}',N'{1}',N'{2}',N'{3}')", title, source, picture, describe);
        //da.Connect();
        //da.Docommand(sql);
        // da.Disconnect();
        UserClass us = new UserClass();
        us.InsertionKnowledge(title.Replace("'", " "), source.Replace("'", " "), picture.Replace("'", " "), describe.Replace("'", " "));

    }
    public void update_Locatepics(string path, FileUpload flppicture,
       string title, string source, string describe,string id)
    {
        flppicture.Height = 70;
        flppicture.Width = 70;
        //0- Generet random Name
        //path -->>   d:\myeshop\MyCP\Product
        string[] Path_parts = path.Split('\\');
        //Path_Parts -->> [d:][Myeshop][MyCp][product]
        path = "";
        for (int i = 0; i < Path_parts.Length; i++)
        {
            path += Path_parts[i] + "\\";
            //path -->> d:\\myeshop\\
        }
        path += "NewsPic\\";
        Random r = new Random();
        string filename = "";
        filename = r.Next(100000, 2000000).ToString();
        string ext = System.IO.Path.GetExtension(flppicture.PostedFile.FileName);
        while (System.IO.File.Exists(path + filename + "." + ext))
        {
            filename = r.Next(100000, 200000).ToString();
        }
        //1- Save Picture In Serv er Folder

        //Check Extension And File Size
       
        flppicture.PostedFile.SaveAs(path + filename + ext);
        string picture = "NewsPic/" + filename.ToString() + ext.ToString();

        MyDataAccesslayer da = new MyDataAccesslayer();
        
        string sql = string.Format("update knowledge set ktitle=N'{0}' , ksourse=N'{1}' , kpicture='{2}' , kdescribe=N'{3}' where kid={4} ", title, source, picture, describe,id);
        da.Connect();
        da.Docommand(sql);
        da.Disconnect();

    }
    public insertion_sc()
	{
		//
		// TODO: Add constructor logic here
		//
	}
}
