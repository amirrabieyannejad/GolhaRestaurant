<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Edit_Knowledge.ascx.cs" Inherits="GolhaRestaurant_main_.Control.Edit.Edit_Knoledge" %>

<link href="../../Main_style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
    function mouseover(id) {
        document.getElementById(id).style.color = "#000000";
    }
    function mouseout(id) {
        document.getElementById(id).style.color = "#83A741";
        

    }
      </script>
    <table width="630px" border="0">
   
   <tr>
      <td>
            <a href="../../Main_page.aspx?id=suggestsec" id="areturn" dir="rtl" style="text-decoration:none;color:#6C9CFF"
                      onmouseover="document.getElementById('areturn').style.color = '#000000'" 
                    onmouseout="document.getElementById('areturn').style.color = '#6C9CFF'" >بازگشت</a>
      </td>
      </tr>
      <tr>
      <td>
      
                <asp:ListView ID="ProductsListView"  
        DataSourceID="ProductsDataSource"
        runat="server" 
        OnItemDeleting="ProductsListView_ItemDeleting"
        


        
        GroupItemCount="1">
        <LayoutTemplate>
          <table cellpadding="2" width="630px" id="tbl1" runat="server">
            <tr>
              <th colspan="5" > ویرایش دانستنیها  </th>
            </tr>
            <tr runat="server" id="groupPlaceholder"></tr>
          </table>
        </LayoutTemplate>
        <GroupTemplate>
         <tr runat="server" id="tr1">
            <td runat="server" id="itemPlaceholder"></td>
          </tr>
        </GroupTemplate>
        <GroupSeparatorTemplate>
          <tr id="Tr1" runat="server">
            
            <td colspan="5">
	            <div ></div>
	          </td>
          </tr>
        </GroupSeparatorTemplate>
        <ItemTemplate>
          <td id="Td1" align="right" runat="server">
           <b><a dir="rtl" id="atitle<%#DataBinder.Eval(Container.DataItem, "kid")%>" onmouseover="mouseover(id)" style="color:#83A741;text-decoration:none"  onmouseout="mouseout(id)" href="Main_page.aspx?user=<%#DataBinder.Eval(Container.DataItem, "kid")%>&id=kediting"><%#DataBinder.Eval(Container.DataItem, "ktitle")%></a> </b>
             <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="حذف مطلب" CssClass="button" BorderStyle="None"  />
             
              <asp:Label ID="EmpIDLabel" runat="server" Text='<%# Eval("kid") %>' Visible="false"/>



            
            <hr color="#cfe0af">
            <br />
            <asp:Image ID="ProductImage" runat="server"
              ImageUrl='<%#"~/" + Eval("kpicture") %>' /><%#DataBinder.Eval(Container.DataItem,"kdescribe") %>...<a style="text-decoration:blink;color:#5AA4BC" href="Main_page.aspx?user=<%#DataBinder.Eval(Container.DataItem, "kid")%>&id=kediting">ویرایش مطلب</a>
            
            <br />
            <br />
          </td>
        </ItemTemplate>
       <ItemSeparatorTemplate>
          <td id="Td2" class="itemSeparator" runat="server">&nbsp;</td>
        </ItemSeparatorTemplate>
      </asp:ListView>

   
      <asp:SqlDataSource ID="ProductsDataSource" runat="server" 
        ProviderName="System.Data.SqlClient" 
        
       
        
        >
        
      </asp:SqlDataSource>

      
      </td>
      <td>  
         
       </td>

   </tr>

</table>


