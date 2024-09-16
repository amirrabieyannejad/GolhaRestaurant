<%@ Page Language="C#" AutoEventWireup="true" ValidateRequest="false" CodeBehind="Main_page.aspx.cs" Inherits="GolhaRestaurant_main_.Main_page" %>
<%@ Register assembly="PersianDatePickup" namespace="PersianDatePickup" tagprefix="pcal" %>
<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" dir="rtl">


<head runat="server">
<meta name="keywords" content="گلها رستوران ">
    <title>رستوران گلها</title>
    <link href="/Main_style.css" rel="stylesheet" type="text/css" />

    <script src="App_GlobalResources/jquery.marquee.js" type="text/javascript"></script>

</head>



<script type="text/javascript">
    function showHide(shID) {
        if (document.getElementById(shID)) {
            if (document.getElementById(shID + '-show').style.display != 'none') {
                document.getElementById(shID + '-show').style.display = 'none';
                document.getElementById(shID).style.display = 'block';
            }
            else {
                document.getElementById(shID + '-show').style.display = 'inline';
                document.getElementById(shID).style.display = 'none';
            }
        }
    } 

    function mouseOver() {
        window.event.srcElement.style.backgroundImage = "url('Image/refooter.jpg')"
        window.event.srcElement.style.cursor = "hand"
    }
    function mouseOut() {
        window.event.srcElement.style.backgroundImage = "url('Image/footer.jpg')"
    }
</script>

<body  >
        
    <form id="form1" runat="server">
    <!--MainTable-->
    <table align="center"  width="900px" cellpadding="0px" cellspacing="0px" style="border:solid thin white ;background-color:#232323" >
    <!--Header-->
    <tr >
    <td >
        <table width="100%">
            <tr>
                    
                    <td bgcolor="#232323" align="right">
                        <asp:Label ID="lblacount" runat="server" Text=""></asp:Label>   
                        <asp:Button ID="btnsignout" runat="server" Text="خروج از سیستم" 
                onclick="btnsignout_Click" Width="79px" TabIndex="6" CssClass="button"
                onmouseover="mouseOver()" onmouseout="mouseOut()"  
                                BorderStyle="None"  Visible="False" />
                        
                    </td>

            </tr>
            <tr>
                    <td>
                            <img src="Image/headerimg(text).jpg" style="width: 100%" />
                        <!--Message-->
                        <table width="100%" >
                            <tr>
                            <td>
                             
                                <marquee behavior="scroll" dir="ltr" scrollamount="2" scrolldelay="2"   direction="right" style="color:#ffffff " > رستوران گلها همواره مي كوشد آنچه مطلوب نظر شماست را در بالاترين سطح كيفي ارايه دهد</marquee>
                            </td>
                            </tr>
                            <tr >
                         
                                <td  align="right"  >
                                      <asp:Panel runat="server" ID="pnlmsg" Visible="False">
                                       <img src="Image/BlueTickBox.gif"  style="height: 22px; width: 26px" />
                                          <asp:Label
                                           ID="lblmsg" runat="server" BackColor="#F39F96" ForeColor="Black" 
                                           Text="ارسال شد ! از همکاری شما متشکریم."></asp:Label>
                                           </asp:Panel>
                                           </td>
                            </tr>
                        </table>
                       
                    </td>
            </tr>
        </table>    
    
    
    </td>
    </tr>
    <!--Body-->
    <tr>
    <td>
    <!--Body.subTable-->
    <table  >
    <tr>
    <td>
        <!--body.subTable.Menu-->
        <div>
        <table class="table" style="border:none"  >
            
            <tr>
                <td style="background-color:#3e3e3e" >
                <img src="Image/bgTitr.jpg" style="width: 24px" />
                   &nbsp;<font style="color:#ffffff"><b>منوی اصلی</b></font>
                </td>
            </tr>
            
            <tr>
                
                
                <td width="143px">
           
                <div id="dvmenu" >    
                       
              
                        <asp:Menu ID="Menu1" runat="server" StaticPopOutImageUrl ="~/Image/Menu_Popout.gif" 
                        DynamicPopOutImageUrl ="~/Image/Menu_Popout.gif" Width="143px" BackColor="black" 
                        DynamicHorizontalOffset="2" Font-Names="tahoma" Font-Size=".91em"  
                        ForeColor="#cccccc" StaticSubMenuIndent="10px" BorderWidth="0px" >
                    <DynamicHoverStyle BackColor="#d09a22" ForeColor="White" />
                    <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" 
                                BorderStyle="None"  />
                    <DynamicMenuStyle BackColor="black" ForeColor="#d09a22" />
                    <DynamicSelectedStyle BackColor="#d09a22"  />
                    <Items>
                        
                            <asp:MenuItem Text="دانستنیها" NavigateUrl="~/Main_page.aspx?id=learn"></asp:MenuItem>
                            <asp:MenuItem Text="آموزش آشپزی" NavigateUrl="../Main_page.aspx?id=cookview"></asp:MenuItem>
                        
                        <asp:MenuItem Text="منوی گلها" NavigateUrl="~/Main_page.aspx?id=menu"></asp:MenuItem>
                        
                            <asp:MenuItem Text="جاذبه های گردشگری " NavigateUrl="~/Main_page.aspx?id=torism"></asp:MenuItem>
                            <asp:MenuItem Text="نقشه" NavigateUrl="~/Main_page.aspx?id=map"></asp:MenuItem>
                    
                    
                            <asp:MenuItem Text="مدیریت" NavigateUrl="~/Main_page.aspx?id=suggestsec"></asp:MenuItem>

                        
                    
                    

                 </Items>
                    <StaticHoverStyle BackColor="#D09A22" ForeColor="White" />
                    <StaticMenuItemStyle HorizontalPadding="5px" Width="133px" VerticalPadding="2px" BorderStyle="Ridge" 
                                BorderWidth="1px" />
                    <StaticSelectedStyle BackColor="#507CD1" BorderStyle="None" />
         </asp:Menu> 

       </div>
           
                </td>
            </tr>
        </table>
        </div>
        <!--END.body.subTable.Menu-->
        <br />
        <!--body.subtable.Login---->
        <table class="table" style="border:none" >
        <tr>
             <td style="background-color:#3e3e3e" >
                <img src="Image/bgTitr.jpg" style="width: 24px" />
                   <font style="color:#ffffff"><b>وروداعضاء</b></font>
             </td>
        </tr>
        <tr>
             <td >
                <asp:Panel ID="pnllogin" runat="server"  >
                            شماره کاربری:<br />
                <asp:TextBox ID="txtuser" runat="server" Width="128px" ValidationGroup="b"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ErrorMessage="*" ControlToValidate="txtuser" ValidationGroup="b"></asp:RequiredFieldValidator>
                <br />
                رمز عبور:<br />
                <asp:TextBox ID="txtpass" runat="server" TextMode="Password" Width="128px" 
                                ValidationGroup="b"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ErrorMessage="*" ControlToValidate="txtpass" ValidationGroup="b"></asp:RequiredFieldValidator>
                            <br />



                            





                <br />
                <asp:Button ID="btnulogin" runat="server" Text="ورود" 
                onclick="btnalogin_Click" Width="52px" TabIndex="6" CssClass="button"
                onmouseover="mouseOver()" onmouseout="mouseOut()"  
                                BorderStyle="None" ValidationGroup="b" />
                <br />
                <br />
                <asp:Label ID="lblerror" BackColor="#F39F96" ForeColor="Black" Font-Size="Smaller" Text="**نام کاربری یا رمز عبور اشتباه است!" runat="server" Visible="false"></asp:Label>
                <hr />
                <asp:HyperLink runat="server" ID="HyperLink1" NavigateUrl="~/Main_page.aspx?id=login" 
                Font-Overline="False" ForeColor="#cccccc" >ثبت نام</asp:HyperLink>
                </asp:Panel>
            </td>
        </tr>
        </table>
        <!--END-->
        
        <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />

        
        
    </td>
    <!--Main-->
    <td width="100%" align="right">
                <table width="100%" class="table"  style="border:none"    >
                   <tr>
                          
                          <td style="background-image: url('Image/footer.jpg');background-position:center" align="right" >
                               
                                
                                <img src="Image/08.jpg"  align="middle"/>
                                <asp:Button Text="صفحه اصلی" ID="btnmainpage" runat="server" CssClass="button" 
                                    onmouseover="mouseOver()" onmouseout="mouseOut()" BorderStyle="None" 
                                    onclick="btnmainpage_Click"  />  
                                    <img src="Image/08.jpg" align="middle"/>
                                    <asp:Button Text="گالری تصاویر" ID="btnimages" runat="server" CssClass="button" 
                                    onmouseover="mouseOver()" onmouseout="mouseOut()" BorderStyle="None" 
                                    onclick="btnimages_Click" />
                                    <img src="Image/08.jpg"align="middle" />
                                    <asp:Button Text="منو غذا" ID="btnmenu" runat="server" CssClass="button" 
                                    onmouseover="mouseOver()" onmouseout="mouseOut()" BorderStyle="None" 
                                    onclick="btnmenu_Click" />
                                    <img src="Image/08.jpg" align="middle" />
                                    <asp:Button Text="نقشه " ID="btnmap" runat="server" CssClass="button" 
                                    onmouseover="mouseOver()" onmouseout="mouseOut()" BorderStyle="None" 
                                    onclick="btnmap_Click" />
                                    <img src="Image/08.jpg" align="middle"/>
                                    <asp:Button Text="پیشنهادات" ID="btnsuggest" runat="server" CssClass="button" 
                                    onmouseover="mouseOver()" onmouseout="mouseOut()" BorderStyle="None" 
                                    onclick="btnsuggest_Click" />
                                    <img src="Image/08.jpg" align="middle"/>
                                    <asp:Button Text="تماس با ما" ID="btncontact" runat="server" CssClass="button" 
                                    onmouseover="mouseOver()" onmouseout="mouseOut()" BorderStyle="None" 
                                    onclick="btncontact_Click" />
                                    <img src="Image/08.jpg" align="middle"/>
                                    <asp:Button Text="درباره ما" ID="btnaboutus" runat="server" CssClass="button" 
                                    onmouseover="mouseOver()" onmouseout="mouseOut()" BorderStyle="None" 
                                    onclick="btnaboutus_Click" />
                                    <img src="Image/08.jpg" align="middle"/>
                                    <asp:Button Text="نیازمندیها" ID="btnrequir" runat="server" CssClass="button" 
                                    onmouseover="mouseOver()" onmouseout="mouseOut()" BorderStyle="None" 
                                    onclick="btnrequir_Click"  />

                                    
                              </td>
                   </tr>
                   <tr>
                          <!--BodyMAAAAAAAAAAAAIN-->
                          <td   >
                                <asp:Panel ID="pnlmain" runat="server" oninit="pnlmain_Init" Width="690px" 
                                     >
                               
                                </asp:Panel>
                                
                          </td>
                   </tr>
                </table>
    </td>
    <!--END MAIN-->
    <!--Left-->
    <td width="143px">
            <!--body.subTable.Menu-->
        <table class="table" style="border:none" >
            <tr>
                 <td style="background-color:#3e3e3e" >
                <img src="Image/bgTitr.jpg" style="width: 24px" />
                    <font style="color:#ffffff"> <b>نظرسنجی</b></font>
                </td>
            </tr>
            <tr>
                <td  align="right"  >
                   
                    
                                                 <asp:Panel ID="Panel1" runat="server" Direction="RightToLeft"  width="143px">
                        
                          
                    نظر شما راجع به رستوران گلها<br />
                    <hr />
                    <p>
                     
                       
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server"  
                            
                          style="direction: rtl">
                        <asp:ListItem>عالی</asp:ListItem>
                        <asp:ListItem>خوب</asp:ListItem>
                        <asp:ListItem>متوسط</asp:ListItem>
                        <asp:ListItem>ضعیف</asp:ListItem>
                        </asp:RadioButtonList>
                        <asp:Button ID="btncomment" runat="server" BorderStyle="None" CssClass="button" 
                            onclick="btncomment_Click" onmouseout="mouseOut()" onmouseover="mouseOver()" 
                            Text="ثبت نظر" />
                        <br />
                        <a ID="example-show" class="showLink" href="#" 
                            onclick="showHide('example');return false;">مشاهده نتایج نظر سنجی&nbsp&nbsp&nbsp</a></p>
                     <div id="example" class="more">
	                     <p>
                               <asp:Chart ID="Chart1" runat="server" BackColor="" 
                                                         DataSourceID="SqlDataSource1" Height="134px" Width="143px" DataMember="DefaultView">
                                                          <Series>
                                                              <asp:Series ChartType="Pie" Name="Series1" XValueMember="otype" 
                                                                  YValueMembers="ocount" YValuesPerPoint="4" Legend="Legend2" IsVisibleInLegend="False">
                                                              </asp:Series>
                                                          </Series>
                                                          <ChartAreas>
                                                              <asp:ChartArea Name="ChartArea1">
                                                                  <area3dstyle Enable3D="True" Inclination="30" IsClustered="True" 
                                                                      IsRightAngleAxes="True" Perspective="20" Rotation="40" WallWidth="10" />
                                                              </asp:ChartArea>
                                                          </ChartAreas>
                                                          <Legends>
                                                              <asp:Legend Name="Legend2" Title="اختصارات جدول">
                                                              </asp:Legend>
                                                          </Legends>
                                                     </asp:Chart>
                                                     <br />
                                                     <br />
                                                      <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                                         SelectCommand="SELECT otype, COUNT(otype) AS ocount FROM opinion GROUP BY otype" ConnectionString="Data Source=Amir;Initial Catalog=Restaurant;Integrated Security=True" ProviderName="System.Data.SqlClient"></asp:SqlDataSource> 
                         
                         </p>
	                     <p><a href="#" id="example-hide" class="hideLink" 
	                        onclick="showHide('example');return false;">مخفی کردن نتایج&nbsp&nbsp&nbsp</a></p>
                    </div> 

                    
                           
                    
                    
                   </asp:Panel>

                        
                </td>
            </tr>
        </table>
        <!--END.body.subTable.Menu-->
        <br />
        
        <br />
        <!--body.subtable.Fal-->
        <table class="table" style="border:none" >
            <tr>
                 <td style="background-color:#3e3e3e" >
                <img src="Image/bgTitr.jpg" style="width: 24px" />
                     <font style="color:#ffffff"><b>تقویم       </p>
	                     <p><a href="#" id="example-hide" class="hideLink" 
	                        onclick="showHide('example');return false;">مخفی کردن نتایج&nbsp&nbsp&nbsp</a></p>
                    </div> 

                    
                           
                    
                    
                   </asp:Panel>

                        
                </td>
            </tr>
        </table>
        <!--END.body.subTable.Menu-->
        <br />
        
        <br />
        <!--body.subtable.Fal-->
        <table class="table" style="border:none" >
            <tr>
                 <td style="background-color:#3e3e3e" >
                <img src="Image/bgTitr.jpg" style="width: 24px" />
                     <font style="color:#ffffff"><b>تقویم</b></font>
                </td>
            </tr>
            <tr>
                <td >
                       
                      <pcal:persiandatepickup ID="PersianDatePickup1" runat="server" Height="16px" 
                          Width="93px" EnableTheming="True" ShowPopupOnFocus="True" 
                          ToolTip="بر روی دکمه سبز رنگ کلیک کنید."></pcal:persiandatepickup>   
                </td>
            </tr>
        </table>
        <!--END-->
        <br />
    <!--body.subtable.Fal-->
        <table class="table" style="border:none" >
            <tr>
                 <td style="background-color:#3e3e3e" >
                <img src="Image/bgTitr.jpg" style="width: 24px" />
                     <font style="color:#ffffff"><b>وضعیت آب و هوا   </b></font>   </td>
            </tr>
            <tr>
                <td >
                       
                      
                    
                    <script type="text/javascript" src="http://1abzaar.ir/abzar/tools/weather/hava.php?color=333333&shahr=018&bg=F0F0F0&kc=BBBBBB&kadr=0"></script><div style="display:none"><h2><a href="http://www.1abzar.com/abzar/weather.php">&#1608;&#1590;&#1593;&#1740;&#1578; &#1570;&#1576; &#1608; &#1607;&#1608;&#1575;</a></h2></div>
                    
                 
                       
                </td>
            </tr>
        </table>
        <br /><br /><br />
        <!--END-->
    </td>
    <!--END Left-->
    </tr>
    </table>
    </td>
    </tr>
    <!--Footer-->
    <tr align="center">
    <td style="background-image:url('Image/footer.jpg')">
     <font style="color:#ffffff">
    <font style="font-family:Tahoma"> کلیه حقوق این سایت متعلق به رستوران گلها می باشد</font>
    <br />
    <font>Copyright 2020 Powered by amir.rabian.nejad@gmail.com</font> </font>
    </td>
    </tr>
    </table>
    <div>
    
    </div>
    </form>
</body>
</html>
