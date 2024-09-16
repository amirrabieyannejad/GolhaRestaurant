<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Insertion_science.ascx.cs" Inherits="GolhaRestaurant_main_.Control.Insertion_science" %>

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
 <a href="../../Main_page.aspx?id=suggestsec" id="areturn" dir="rtl" style="text-decoration:none;color:#6C9CFF"
                      onmouseover="document.getElementById('areturn').style.color = '#000000'" 
                    onmouseout="document.getElementById('areturn').style.color = '#6C9CFF'" >بازگشت</a>
<fieldset>
    <legend>افزودن به دانستنیها</legend>

     <asp:Label ID="lblerror" BackColor="#F39F96" Text="**اطلاعاتی با چنین عنوانی ثبت شده است !" runat="server" Visible="false"></asp:Label>
     <p>
            
         <asp:Label ID="Label1" runat="server" Text="عنوان:"></asp:Label>
         <asp:TextBox ID="txttitle" runat="server" ValidationGroup="sc"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
             ErrorMessage="*" ControlToValidate="txttitle" ValidationGroup="sc"></asp:RequiredFieldValidator>
            
     </p>
     <p>
        
         <asp:Label ID="Label2" runat="server" Text="منبع:"></asp:Label>
         <asp:TextBox ID="txtsource" runat="server" ValidationGroup="sc"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
             ErrorMessage="*" ControlToValidate="txtsource" ValidationGroup="sc"></asp:RequiredFieldValidator>
        
     </p>
     <p>
          
         <asp:Label ID="Label4" runat="server" Text="تصویر:"></asp:Label>
         <asp:FileUpload ID="flpimage" runat="server" />
         <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
             ControlToValidate="flpimage" ErrorMessage="*" ValidationGroup="sc"></asp:RequiredFieldValidator>
          
     </p>
     <p>
     
         <asp:Label ID="Label3" runat="server" Text="افزودن مطالب:"></asp:Label>
         <asp:TextBox ID="txtdescribe" runat="server" TextMode="MultiLine" 
             ValidationGroup="sc" Height="191px" Width="378px"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
             ErrorMessage="*" ControlToValidate="txtdescribe" ValidationGroup="sc"></asp:RequiredFieldValidator>
     
     </p>

     <p>
          <asp:Button ID="btnssubmit" runat="server" Text="افزودن مطلب" CssClass="button" 
                             OnClick="btnssubmit_Click" Width="76px" ClientIDMode="Static" ValidationGroup="login_user" 
                             UseSubmitBehavior="False" onmouseover="mouseOver()" 
                             onmouseout="mouseOut()" BorderStyle="None"   />
         
     </p>
</fieldset>