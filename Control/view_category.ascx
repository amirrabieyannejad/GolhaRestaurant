<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="view_category.ascx.cs" Inherits="GolhaRestaurant_main_.Control.view_category" %>
<script type="text/javascript">
    function mouseover(id) {
        document.getElementById(id).style.color = "#cccccc";
    }
    function mouseout(id) {
        document.getElementById(id).style.color = "#83A741";

    }
    
      </script>

 <table width="640px" border="0" >
   
   <tr>
        <td>
                    <a href="../Main_page.aspx?id=cookview" id="areturn" dir="rtl" style="text-decoration:none;color:#6C9CFF"
                      onmouseover="document.getElementById('areturn').style.color = '#cccccc'" 
                    onmouseout="document.getElementById('areturn').style.color = '#6C9CFF'" >بازگشت</a>
        </td>
   </tr>
   <tr>
      <td>
                
                <asp:ListView ID="ProductsListView"  
        DataSourceID="datascategory" 
        GroupItemCount="2"
        runat="server" OnSelectedIndexChanged="ProductsListView_SelectedIndexChanged" >
        <LayoutTemplate>
          <table cellpadding="2" width="690px" id="tbl1" runat="server">
            <tr>
              <th colspan="5" style="background-color:#3e3e3e;color:white;border:solid thin #cccccc"> غذاهای این گروه </th>
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
            
            <td colspan="2">
	            <div ></div>
	          </td>
          </tr>
        </GroupSeparatorTemplate>
        <ItemTemplate>
          <td id="Td1" align="right" runat="server">
           
           <b><a dir="rtl" id="atitle<%#DataBinder.Eval(Container.DataItem, "fid")%>" onmouseover="mouseover(id)" style="color:#83A741;text-decoration:none"  onmouseout="mouseout(id)" 
           href="Main_page.aspx?fid=<%#DataBinder.Eval(Container.DataItem, "fid")%>&id=viewcategory"><%#DataBinder.Eval(Container.DataItem, "fname")%></a></b>
            
            
              
            <br />
            
          </td>
        </ItemTemplate>
        <ItemSeparatorTemplate>
          <td id="Td2" class="itemSeparator" runat="server">&nbsp</td>
        </ItemSeparatorTemplate>
      </asp:ListView>

   
      <asp:SqlDataSource ID="datascategory" runat="server" 
        ProviderName="System.Data.SqlClient" ConnectionString="Data Source=Amir;Initial Catalog=Restaurant;Integrated Security=True" >
        
      </asp:SqlDataSource>

      
      </td>
      <td>  
         
       </td>

   </tr>
    <tr>
        <td>
                                <asp:Literal ID="ltrviewfood" runat="server"></asp:Literal>
        </td>
    </tr>
</table>

