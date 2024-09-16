<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="suggest_view.ascx.cs" Inherits="GolhaRestaurant_main_.Control.suggest.suggest_view" %>

<asp:Menu ID="Menu1" runat="server" StaticPopOutImageUrl ="~/Image/Menu_Popout.gif" 
                        DynamicPopOutImageUrl ="~/Image/Menu_Popout.gif" BackColor="#B5C7DE" 
                        DynamicHorizontalOffset="2" Font-Names="tahoma" Font-Size="0.8em" 
                        ForeColor="#284E98" StaticSubMenuIndent="10px" 
    Orientation="Horizontal" >
                    <DynamicHoverStyle BackColor="#284E98" ForeColor="White" />
                    <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                    <DynamicMenuStyle BackColor="#B5C7DE" />
                    <DynamicSelectedStyle BackColor="#507CD1" />
                    <Items>
                         <asp:MenuItem Text="افزودن مطالب" >
                            <asp:MenuItem Text=" نیازمندیها" NavigateUrl="~/Main_page.aspx?id=insrequest"></asp:MenuItem> 
                            <asp:MenuItem Text=" دانستنیها" NavigateUrl="~/Main_page.aspx?id=sciencesec"></asp:MenuItem>
                            <asp:MenuItem Text="دستورالعمل غذاها" NavigateUrl="~/Main_page.aspx?id=cooksec"></asp:MenuItem>
                            

                        </asp:MenuItem>
                        <asp:MenuItem Text="حذف/ویرایش مطالب" >
                            <asp:MenuItem Text=" نیازمندیها" NavigateUrl="~/Main_page.aspx?id=request"></asp:MenuItem> 
                            <asp:MenuItem Text=" دانستنیها" NavigateUrl="~/Main_page.aspx?id=kedit"></asp:MenuItem>
                            <asp:MenuItem Text="دستورالعمل غذاها" NavigateUrl="~/Main_page.aspx?id=cedit"></asp:MenuItem>

                        </asp:MenuItem>
                    <asp:MenuItem Text="خروج" NavigateUrl="~/Main_page.aspx?id=adminout"></asp:MenuItem>
                    

                 </Items>
                    <StaticHoverStyle BackColor="#284E98" ForeColor="White" />
                    <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                    <StaticSelectedStyle BackColor="#507CD1" />
         </asp:Menu>
        
         <hr />
                   نظرات کاربران
         <hr />
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    ForeColor="#336699">
    <AlternatingRowStyle ForeColor="#0099FF" />
    <Columns>
        <asp:BoundField DataField="susername" HeaderText="نام کاربری">
        <ControlStyle BackColor="#66CCFF" />
        </asp:BoundField>
        <asp:BoundField DataField="sdescribe" HeaderText="نظرات">
        <ControlStyle BackColor="#66CCFF" />
        </asp:BoundField>
    </Columns>
</asp:GridView>
