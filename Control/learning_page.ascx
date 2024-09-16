<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="learning_page.ascx.cs" Inherits="GolhaRestaurant_main_.Control.science_page" %>
 
<link href="../Main_style.css" rel="stylesheet" type="text/css" />

<script type="text/javascript">
    function mouseover(id) {
        document.getElementById(id).style.color = "#cccccc";
    }
    function mouseout(id) {
        document.getElementById(id).style.color = "#83A741";
        
    }
      </script>
   
   
            <table width="690px" border="0">
   
   <tr>
      <td>
                 
                
                 
                <asp:ListView ID="ProductsListView" 
               DataSourceID="ProductsDataSource"
        GroupItemCount="1"
        runat="server"   
        
         >
        <LayoutTemplate>
          <table cellpadding="2" width="690px" id="tbl1" runat="server">
            <tr>
              <th colspan="5" style="background-color:#3e3e3e;color:white;border:solid thin #cccccc" > دانستنیها </th>
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
           <b><a dir="rtl" id="atitle<%#DataBinder.Eval(Container.DataItem, "kid")%>" onmouseover="mouseover(id)" style="color:#83A741;text-decoration:none"  onmouseout="mouseout(id)" href="Main_page.aspx?user=<%#DataBinder.Eval(Container.DataItem, "kid")%>&id=ins"><%#DataBinder.Eval(Container.DataItem, "ktitle")%></a> </b><br />
           
              <hr >
            <asp:Image ID="ProductImage" runat="server"
              ImageUrl='<%#"/" + Eval("kpicture") %>' />
               <br/>
               <br/>
               <br/>
              <%#DataBinder.Eval(Container.DataItem,"kdescribe") %>...  <br /> <a style="text-decoration:initial;color:#5AA4BC" href="Main_page.aspx?user=<%#DataBinder.Eval(Container.DataItem, "kid")%>&id=ins"> ادامه مطلب</a>
            
          </td>
        </ItemTemplate>
        <ItemSeparatorTemplate>
          <td id="Td2" class="itemSeparator" runat="server">&nbsp;</td>
        </ItemSeparatorTemplate>
      </asp:ListView>

   <asp:SqlDataSource ID="ProductsDataSource" runat="server" ConnectionString="Data Source=Amir;Initial Catalog=Restaurant;Integrated Security=True"
          SelectCommand="SELECT kid, ktitle, kdescribe, kpicture, ksource FROM knowledge ORDER BY kid DESC"
           ProviderName="System.Data.SqlClient" ></asp:SqlDataSource>
      <div>
  
          
      </div>
      </td>
      <td>  
         
       </td>

   </tr>

</table>  
    


    
   



   
      