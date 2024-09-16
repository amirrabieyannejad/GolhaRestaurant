using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

/// <summary>
/// Summary description for convertDate
/// </summary>
public class convertDate
{
	public String convert_Date ()
    {
        //گرفتن تاریخ شمسی از سیستم
        System.Globalization.PersianCalendar dtePersianCalendar = new System.Globalization.PersianCalendar();
        string Year, Month, Day, strResult;
        DateTime Date_Now = DateTime.Now;
        Year = dtePersianCalendar.GetYear(Date_Now).ToString();
        Month = dtePersianCalendar.GetMonth(Date_Now).ToString();
        Day = dtePersianCalendar.GetDayOfMonth(Date_Now).ToString();
        strResult = Year + "/" + Month + "/" + Day;
        return strResult;
    }
    public String Persian_convert_date(string id)
    {
        MyDataAccesslayer mda = new MyDataAccesslayer();
        string sql = "select * from requirements where rid="+id +" order by rid desc";
        mda.Connect();
        DataTable dt = mda.Select(sql).Tables[0];
        mda.Disconnect();
        string a = dt.Rows[0][3].ToString();
        DateTime dtime = Convert.ToDateTime(a);

        System.Globalization.PersianCalendar pc = new System.Globalization.PersianCalendar();
        string year = pc.GetYear(dtime).ToString();
        string month = pc.GetMonth(dtime).ToString();
        string day = pc.GetDayOfMonth(dtime).ToString();
        string result = year + "/" + month + "/" + day;
        return result; 
    }
    public convertDate()
	{
		//
		// TODO: Add constructor logic here
		//
	}
}
