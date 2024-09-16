<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="login.ascx.cs" Inherits="GolhaRestaurant_main_.login" %>
<link href="../Main_style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
    function mouseOver() {
        window.event.srcElement.style.backgroundImage = "url('Image/refooter.jpg')"
        window.event.srcElement.style.cursor = "hand"
    }
    function mouseOut() {
        window.event.srcElement.style.backgroundImage = "url('Image/footer.jpg')"
    }
</script>
<asp:Panel runat ="server" ID="pnlulogin">
 <fieldset class="login" dir="rtl" align="right"  >
                    <legend>عضوییت در سایت</legend>
                    
                    <asp:Label ID="lblsecurerror" BackColor="#F39F96" Text="**کد امنیتی اشتباه است!" runat="server" Visible="false"></asp:Label>
                    <asp:Label ID="lblerror" BackColor="#F39F96" Text="**نام کاربری که انتخاب کرده اید موجود است!" runat="server" Visible="false"></asp:Label>
                    <p>
                        
                         <asp:Label ID="Label1" runat="server" Text="نام کاربری:"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                         <asp:TextBox ID="txtuuser" runat="server" ValidationGroup="login_user"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                             ControlToValidate="txtuuser" ErrorMessage="*" ValidationGroup="login_user"></asp:RequiredFieldValidator>
                    </p>
                    <p>
                        <asp:Label ID="Label2" runat="server" Text="رمزعبور:"></asp:Label>
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                         <asp:TextBox ID="txtupass" runat="server" TextMode="Password" 
                            ValidationGroup="login_user" Width="132px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="txtupass" ErrorMessage="*" ValidationGroup="login_user"></asp:RequiredFieldValidator>
                   </p>
                   <p>
                       <asp:Label ID="Label4" runat="server" Text="تکرار رمز عبور:"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp<asp:TextBox ID="txtuconfirm"
                           runat="server" ValidationGroup="login_user" TextMode="Password"></asp:TextBox>
                       <asp:CompareValidator ID="CompareValidator1" runat="server" 
                           ControlToCompare="txtupass" ControlToValidate="txtuconfirm" 
                           ErrorMessage="با رمز عبور همخوانی ندارد " ValidationGroup="login_user"></asp:CompareValidator>
                   </p>
                    <p>
                              <asp:Label ID="Label3" runat="server" Text="ایمیل آدرس:"></asp:Label>
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtuemail" 
                                  runat="server" ValidationGroup="login_user"></asp:TextBox>
                              <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                  ControlToValidate="txtuemail" ErrorMessage="مثال:User@hotmail.com" 
                                  ValidationGroup="login_user" 
                                  ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </p>
                    <p>
                        <asp:Label ID="Label5" runat="server" Text="نام:"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp<asp:TextBox ID="txtuname"
                            runat="server" ValidationGroup="login_user"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ControlToValidate="txtuname" ErrorMessage="*" ValidationGroup="login_user"></asp:RequiredFieldValidator>
                    </p>
                     <p>
                        <asp:Label ID="Label6" runat="server" Text="نام خانوادگی:"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp
                        <asp:TextBox ID="txtufamily"
                            runat="server" ValidationGroup="login_user"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                             ControlToValidate="txtufamily" ErrorMessage="*"></asp:RequiredFieldValidator>
                         </p>
                    <p>
                        <asp:Label ID="lblfirst" runat="server" Text=""></asp:Label>+ <asp:Label ID="lblsecond" runat="server" Text=""></asp:Label>=
                        <asp:TextBox ID="txtsecure"
                            runat="server"></asp:TextBox>
                    </p>
                    <p>
                         <asp:Button ID="btnusubmit" runat="server" Text="ثبت نام " CssClass="button" 
                             OnClick="btnusubmit_Click" Width="76px" ClientIDMode="Static" ValidationGroup="login_user" 
                             UseSubmitBehavior="False" onmouseover="mouseOver()" 
                             onmouseout="mouseOut()" BorderStyle="None"   />
                         
                         
                         
                    </p>
                    
                     
                </fieldset>
 </asp:Panel>
