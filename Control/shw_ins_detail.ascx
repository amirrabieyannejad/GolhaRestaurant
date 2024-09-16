<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="shw_ins_detail.ascx.cs" Inherits="GolhaRestaurant_main_.Control.shw_ins_detail" %>
      <script type="text/javascript">
          function mouseover() {
              window.event.srcElement.style.color = "#cfe0af";
        }
        function mouseout() {
            window.event.srcElement.style.Color = "#000000";
        }
      </script>
      <table align="right">
        <tr >
            <td>
                    <a href="../Main_page.aspx?id=learn" id="areturn" dir="rtl" style="text-decoration:none;color:#6C9CFF"
                      onmouseover="document.getElementById('areturn').style.color = '#cccccc'" 
                    onmouseout="document.getElementById('areturn').style.color = '#6C9CFF'" >بازگشت</a>
            </td>
        </tr>
      </table>
      
      <asp:ListView ID="ProductsListView" 
        DataSourceID="ProductsDataSource" 
        GroupItemCount="1"
        runat="server" >
        <LayoutTemplate>
          <table cellpadding="2" width="690px" id="tbl1" runat="server">
            <tr>
              <th colspan="5" style="background-color:#3e3e3e;color:white;border:solid thin #cccccc"> دانستنیها </th>
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
	            <div class="groupSeparator"><hr color="#cfe0af"></div>
	          </td>
          </tr>
        </GroupSeparatorTemplate>
        <ItemTemplate>
          <td id="Td1" align="right" runat="server" style="">
          
            <b>
           
                                <a dir="rtl" id="atitle" style="color:#96BA49"   ><%#DataBinder.Eval(Container.DataItem, "ktitle")%></a> </b>
           <hr color="#cfe0af" />
            <br />
            
              
                               <asp:Image ID="ProductImage" runat="server"
              ImageUrl='<%#"~/" + Eval("kpicture") %>' BorderStyle="Solid" BorderWidth="1" BorderColor="Gray" />         

             <%#DataBinder.Eval(Container.DataItem,"kdescribe") %>
            
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