<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="requirements_page.ascx.cs" Inherits="GolhaRestaurant_main_.Control.menu.requirement_page" %>
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
       
        


        
        GroupItemCount="1">
        <LayoutTemplate>
          <table cellpadding="2" width="630px" id="tbl1" runat="server">
            <tr>
              <th colspan="5" > نیازمندیها  </th>
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
           <b><a dir="rtl" id="atitle<%#DataBinder.Eval(Container.DataItem, "rid")%>" onmouseover="mouseover(id)" style="color:#83A741;text-decoration:none"  onmouseout="mouseout(id)" ><%#DataBinder.Eval(Container.DataItem, "rtitle")%></a> </b><hr color="#cfe0af">
            
                <%#DataBinder.Eval(Container.DataItem, "rdescribe")%>
             
              <asp:Label ID="EmpIDLabel" runat="server" Text='<%# Eval("rid") %>' Visible="false"/>
              


            
            
            
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
