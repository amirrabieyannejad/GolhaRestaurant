<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Insertion_requirements.ascx.cs" Inherits="GolhaRestaurant_main_.Control.Admin.Insertion__requirement" %><%@ Register assembly="FredCK.FCKeditorV2" namespace="FredCK.FCKeditorV2" tagprefix="FCKeditorV2" %>

<%@ Register Assembly="FredCK.FCKeditorV2" Namespace="FredCK.FCKeditorV2" TagPrefix="FCKeditorV2" %>
<link href="../../Main_style.css" rel="stylesheet" type="text/css" />


<fieldset>
      <legend>افزوذن به نیازمندیها</legend>
      <a href="../../Main_page.aspx?id=suggestsec" id="areturn" dir="rtl" style="text-decoration:none;color:#6C9CFF"
                      onmouseover="document.getElementById('areturn').style.color = '#000000'" 
                    onmouseout="document.getElementById('areturn').style.color = '#6C9CFF'" >بازگشت</a>
      <p>
       <asp:Label ID="lblerror" BackColor="Red" Text="**اطلاعات ثبت نشده است !" runat="server" Visible="False"></asp:Label>     
      </p>
      <p>
      
          <asp:Label ID="Label1" runat="server" Text="موضوع:"></asp:Label>
          <asp:TextBox ID="txttitle" runat="server" ValidationGroup="requir"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
              ErrorMessage="*" ControlToValidate="txttitle" ValidationGroup="requir"></asp:RequiredFieldValidator>
      
      </p>
      <p>
      
          <asp:Label ID="Label2" runat="server" Text="شرح:"></asp:Label>
          <FCKeditorV2:FCKeditor ID="FCKeditor1" runat="server" Height="400px">
          </FCKeditorV2:FCKeditor>
          </p>
          <p>
             
              
              </p>
      <p>
            
          <asp:Button ID="Button1" runat="server" BorderStyle="None" CssClass="button" 
              Text="ثبت" ValidationGroup="requir" Width="49px" onclick="Button1_Click" />
            
      </p>
      <p></p>
     
</fieldset>