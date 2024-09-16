<%@ Control Language="C#" AutoEventWireup="true"  CodeBehind="cook_view.ascx.cs" Inherits="GolhaRestaurant_main_.Control.cook_view" %>
<script type="text/javascript">
    function mouseover(id) {
        document.getElementById(id).style.color = "#000000";
    }
    function mouseout(id) {
        document.getElementById(id).style.color = "#83A741";

    }
    function cursor(id) {
        document.getElementById(id).style.cursor = 'hand';
        
    }
    
      </script>

 <table width="640px" border="0">
   
   <tr>
      <td>
                <asp:ListView ID="ProductsListView" 
        DataSourceID="datascategory" 
        GroupItemCount="2"
        runat="server" >
        <LayoutTemplate>
          <table cellpadding="2" width="690px" id="tbl1" runat="server">
            <tr>
              <th colspan="5" style="background-color:#3e3e3e;color:white;border:solid thin #cccccc" > دسته بندی غذاها </th>
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
           <b><a dir="rtl" id="atitle<%#DataBinder.Eval(Container.DataItem, "cid")%>" onmouseover="mouseover(id)" style="color:#83A741;text-decoration:none"  onmouseout="mouseout(id)" 
           href="Main_page.aspx?user=<%#DataBinder.Eval(Container.DataItem, "cid")%>&id=viewcategory"><%#DataBinder.Eval(Container.DataItem, "ctype")%></a></b>
            <br />
            <img src='<%#"../" + Eval("cpicture") %>' style="border-style:solid;border-width:thin;width:209px;height:100px;border-color:Gray" id="img<%#DataBinder.Eval(Container.DataItem, "cid")%>"
             onclick="navigate('Main_page.aspx?id=viewcategory&user=<%#DataBinder.Eval(Container.DataItem, "cid")%>')" onmouseover="cursor(id)"/>
            
            <br />
            
          </td>
        </ItemTemplate>
        <ItemSeparatorTemplate>
          <td id="Td2" class="itemSeparator" runat="server">&nbsp</td>
        </ItemSeparatorTemplate>
      </asp:ListView>

   
      <asp:SqlDataSource ID="datascategory" runat="server" 
        ProviderName="System.Data.SqlClient" >
        
      </asp:SqlDataSource>

      
      </td>
      <td>  
         
       </td>

   </tr>
<tr>
    <td>
                <asp:Literal ID="ltsourse" runat="server" ></asp:Literal>
    </td>
</tr>
</table>
   

