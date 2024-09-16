<%@ Control Language="C#" AutoEventWireup="true" WarningLevel="0"    CodeBehind="cook_page.ascx.cs" Inherits="GolhaRestaurant_main_.Control.cook_page" %>
<%@ Register Assembly="FredCK.FCKeditorV2" Namespace="FredCK.FCKeditorV2" TagPrefix="FCKeditorV2" %>
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
   
      <fieldset>
         <a href="../../Main_page.aspx?id=suggestsec" id="areturn" dir="rtl" style="text-decoration:none;color:#6C9CFF"
                      onmouseover="document.getElementById('areturn').style.color = '#000000'" 
                    onmouseout="document.getElementById('areturn').style.color = '#6C9CFF'" >بازگشت</a>
      <p>
            <asp:Label ID="lblerror" BackColor="#F39F96" Text="**خطا در ذخیره سازی لطفا دوباره امتحان کنید!" runat="server" Visible="false"></asp:Label>
      </p>
      <p>
          <asp:Label ID="Label1" runat="server" Text="نام غذا:"></asp:Label>
          <asp:TextBox ID="txtname"
              runat="server" ValidationGroup="cook"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
              ControlToValidate="txtname" ErrorMessage="*" ValidationGroup="cook"></asp:RequiredFieldValidator>
        </p>
        <p>
            <asp:Label ID="Label2" runat="server" Text="نوع غذا:"></asp:Label>
                <asp:DropDownList ID="ddlcategory" runat="server" ValidationGroup="cook">
                </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="ddlcategory" ErrorMessage="*"></asp:RequiredFieldValidator>
        </p>
        <p>     
            <FCKeditorV2:FCKeditor ID="FCKeditor1" DefaultLanguage="fa" runat="server" Height="500px" BasePath="fckeditor/">
            </FCKeditorV2:FCKeditor>
        </p>
        <hr />
        <p>
           <asp:Button ID="btnsave" runat="server" CssClass="button" 
            onmouseover="mouseOver()" onmouseout="mouseOut()"  BorderStyle="None" 
            Text="ذخیره" Width="63px" onclick="btnsave_Click" ValidationGroup="cook" /></p>
        
    </fieldset>
