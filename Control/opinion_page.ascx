<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="opinion_page.ascx.cs" Inherits="GolhaRestaurant_main_.Control.opinion_page" %>
<link href="../../Main_style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
    function mouseOver() {
        window.event.srcElement.style.backgroundImage = "url('Image/refooter.jpg')"
        window.event.srcElement.style.cursor = "hand"
    }
    function mouseOut() {
        window.event.srcElement.style.backgroundImage = "url('Image/footer.jpg')"
    }
</script>
<fieldset dir="rtl">
    <legend align="right">ارسال پیشنهادات و نظرات</legend>
    <br />
    <p>
            <asp:Label ID="lblerror" BackColor="#F39F96" Text="**نام کاربری ثبت نشده است  !" runat="server" Visible="false"></asp:Label>
    </p>
    <p>
        
        <asp:Label ID="Label1" runat="server" Text="نام کاربری:"></asp:Label>
        <asp:TextBox ID="txtuser" runat="server" ValidationGroup="op"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ErrorMessage="*" ControlToValidate="txtuser" ValidationGroup="op"></asp:RequiredFieldValidator>
        
    </p>    
   
    <p>
    
        
    
        <asp:Label ID="Label3" runat="server" Text="پیشنهاد:"></asp:Label>
        <asp:TextBox ID="txtopinion" runat="server" TextMode="MultiLine" 
            ValidationGroup="op"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ErrorMessage="*" ControlToValidate="txtopinion" ValidationGroup="op"></asp:RequiredFieldValidator>
    
    </p>
    <p>
    
        <asp:Button ID="send" runat="server" Text="ارسال" CssClass="button" 
            BorderStyle="None" onclick="send_Click" ValidationGroup="op" onmouseover="mouseOver()" onmouseout="mouseOut()"  />
    
    </p>
    <hr />
    <p>
           چنانچه عضو نیستید 
           <asp:HyperLink runat="server" ID="HyperLink1" NavigateUrl="~/Main_page.aspx?id=login" 
                Font-Overline="False" ForeColor="#3399FF" >اینجا</asp:HyperLink>  &nbsp;کلیک کنید.</p>

</fieldset>
