<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="export.aspx.cs" Inherits="Inventory.export" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
    <style type="text/css">
        .auto-style2 {
            color: #FF0000;
        }
        .auto-style3 {
            width: 100%;
        }
        .auto-style4 {
        }
        .auto-style5 {
            height: 23px;
        }
    </style>
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div style="width:80%;height:40px;text-align:center;margin-right:20%;">
        <h1 class="auto-style2">EXPORT</h1>
    </div>
          <div style="width:70%;margin-left:10%;position:relative;margin-right:20%;margin-top:110px;height:auto;">
              <div style="width:48%;float:left;height:auto;overflow:hidden;">

                  <table class="auto-style3">
                      <tr>
                          <td colspan="3">
                    <asp:TextBox ID="txtproductid" placeholder="Product ID" runat="server" Height="29px" Width="381px"></asp:TextBox>
&nbsp;</td>
                      </tr>
                      <tr>
                          <td colspan="3">
                    <asp:TextBox ID="txtproductname" placeholder="Product Name" runat="server" Height="29px" Width="447px"></asp:TextBox>
&nbsp;</td>
                      </tr>
                      <tr>
                          <td colspan="3">
                    <asp:TextBox ID="txtsaleprice" placeholder="Sale Price" runat="server" Height="29px" Width="447px"></asp:TextBox>
&nbsp;</td>
                      </tr>
                      <tr>
                          <td colspan="3">
                    <asp:TextBox ID="txtqty" placeholder="Sale Quantity" runat="server" Height="29px" Width="447px"></asp:TextBox>
&nbsp;</td>
                      </tr>
                      <tr>
                          <td colspan="3">
                    <asp:TextBox ID="txtstockqty" placeholder="Quantity" runat="server" Height="29px" Width="447px"></asp:TextBox>
&nbsp;</td>
                      </tr>
                      <tr>
                          <td colspan="3">
                    <asp:DropDownList ID="ddlcategory" runat="server" Height="47px" style="font-weight: 700; font-size: large" Width="358px">
                        <asp:ListItem>Category</asp:ListItem>
                        <asp:ListItem>Oil</asp:ListItem>
                        <asp:ListItem>Meat</asp:ListItem>
                        <asp:ListItem>Chicken</asp:ListItem>
                        <asp:ListItem>Milk</asp:ListItem>
                        <asp:ListItem>Vegitable</asp:ListItem>
                        <asp:ListItem>Juice</asp:ListItem>
                        <asp:ListItem>Biskit</asp:ListItem>
                        <asp:ListItem>Coffee</asp:ListItem>
                        <asp:ListItem>Others</asp:ListItem>
                    </asp:DropDownList>
&nbsp;</td>
                      </tr>
                      <tr>
                          <td class="auto-style4" colspan="2">
                              <asp:TextBox ID="clientphone" placeholder="Enter Client Phone" runat="server" Height="35px" Width="269px"></asp:TextBox>
                          &nbsp;</td>
                          <td rowspan="3">&nbsp;</td>
                      </tr>
                      <tr>
                          <td class="auto-style4">
                              <asp:Button ID="btnsubmit" runat="server" Height="68px" style="font-weight: 700" Text="SALE PRODUCT" Width="216px" OnClick="btnsubmit_Click" />
                          </td>
                          <td class="auto-style4">
                              <asp:TextBox ID="txttotal" placeholder="Total" runat="server" Height="45px" Width="135px"></asp:TextBox>
                          &nbsp;&nbsp;&nbsp;&nbsp;</td>
                      </tr>
                      <tr>
                          <td class="auto-style5" colspan="2">
                              <asp:Label ID="lblmsg" runat="server" Text="" ForeColor="Blue"></asp:Label>
                          </td>
                      </tr>
                  </table>

              </div>
                <div style="width:50%;float:right;height:auto;overflow:hidden;">

                    <table class="auto-style3">
                        <tr>
                            <td style="text-align: center">
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="40px" style="font-weight: 700; font-size: large" Width="430px">
                        <asp:ListItem>Search Category</asp:ListItem>
                        <asp:ListItem>Oil</asp:ListItem>
                        <asp:ListItem>Meat</asp:ListItem>
                        <asp:ListItem>Chicken</asp:ListItem>
                        <asp:ListItem>Milk</asp:ListItem>
                        <asp:ListItem>Vegitable</asp:ListItem>
                        <asp:ListItem>Juice</asp:ListItem>
                        <asp:ListItem>Biskit</asp:ListItem>
                        <asp:ListItem>Coffee</asp:ListItem>
                        <asp:ListItem>Others</asp:ListItem>
                    </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: left">
                                <asp:Button ID="Button9" runat="server" Height="31px" style="font-weight: 700" Text="SEARCH" Width="168px" />
                            &nbsp;<asp:Label ID="lblstockprice" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                    </table>
                    <br />

              
                    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Height="176px" Width="401px" AutoGenerateColumns="False" AutoGenerateSelectButton="True" DataKeyNames="productID" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="productID" HeaderText="productID" ReadOnly="True" SortExpression="productID" />
                            <asp:BoundField DataField="productname" HeaderText="productname" SortExpression="productname" />
                            <asp:BoundField DataField="stockPrice" HeaderText="stockPrice" SortExpression="stockPrice" />
                            <asp:BoundField DataField="salePrice" HeaderText="salePrice" SortExpression="salePrice" />
                            <asp:BoundField DataField="productQty" HeaderText="productQty" SortExpression="productQty" />
                            <asp:BoundField DataField="cateGory" HeaderText="cateGory" SortExpression="cateGory" />
                        </Columns>
                        <EditRowStyle BackColor="#7C6F57" />
                        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#E3EAEB" />
                        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F8FAFA" />
                        <SortedAscendingHeaderStyle BackColor="#246B61" />
                        <SortedDescendingCellStyle BackColor="#D4DFE1" />
                        <SortedDescendingHeaderStyle BackColor="#15524A" />
                    </asp:GridView>


                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:conn %>" SelectCommand="SELECT [productID], [productname], [stockPrice], [salePrice], [productQty], [cateGory] FROM [Import] WHERE ([cateGory] = @cateGory)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList1" Name="cateGory" PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>


                    <br />


              </div>
            </div>
</asp:Content>
