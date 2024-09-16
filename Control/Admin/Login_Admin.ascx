<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Login_Admin.ascx.cs" Inherits="GolhaRestaurant_main_.Control.Admin.Login_Admin" %>
<link href="../../Main_style.css" rel="stylesheet" type="text/css" />
 <a href="../../Main_page.aspx?id=main" id="areturn" dir="rtl" style="text-decoration:none;color:#6C9CFF"
                      onmouseover="document.getElementById('areturn').style.color = '#000000'" 
                    onmouseout="document.getElementById('areturn').style.color = '#6C9CFF'" >بازگشت</a>
<fieldset>
 <legend>ورود مدیریت</legend>
     <asp:Label ID="lblsecurerror" BackColor="#F39F96" Text="**کد امنیتی اشتباه است!" runat="server" Visible="false"></asp:Label>
                    <asp:Label ID="lblerror" BackColor="#F39F96" Text="**نام کاربری نادرست است!" runat="server" Visible="false"></asp:Label>
    <p>
        <asp:Label ID="Label1" runat="server" Text="نام کاربری:"></asp:Label>
        <asp:TextBox ID="txtuser"
            runat="server" ValidationGroup="asec" AutoCompleteType="Disabled" 
            EnableViewState="False"></asp:TextBox> 
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ErrorMessage="*" ControlToValidate="txtuser" ValidationGroup="asec"></asp:RequiredFieldValidator>  
    </p>
    <p>
        <asp:Label ID="Label2" runat="server" Text="رمز عبور:"></asp:Label>
        <asp:TextBox ID="txtpass"
            runat="server" TextMode="Password" ValidationGroup="asec" 
            AutoCompleteType="Disabled"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2"
                runat="server" ErrorMessage="*" ControlToValidate="txtpass" 
            ValidationGroup="asec"></asp:RequiredFieldValidator>
    </p>
    <p>
        <asp:Label ID="lblfirst" runat="server"></asp:Label>+<asp:Label ID="lblsecond" runat="server"></asp:Label>=
        <asp:TextBox ID="txtsecure"
            runat="server" ValidationGroup="asec" AutoCompleteType="Disabled"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator3"
                runat="server" ErrorMessage="*" ControlToValidate="txtsecure" 
            ValidationGroup="asec"></asp:RequiredFieldValidator>
    </p>
    <p>
        <asp:Button ID="btnalogin" runat="server" Text="ورود" CssClass="button" 
            onclick="btnadkogin_Click" ValidationGroup="asec" BorderStyle="None" 
            Width="59px" />
    </p>
</fieldset>
