<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="update.aspx.cs" Inherits="Inventory.update" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .fullcontent{
            width:100%;
            overflow:hidden;
            margin:0px auto;
            height:auto;
            position:relative;
        }
        .heading{
            width:80%;height:40px;
            text-align:center;
            overflow:hidden;
            margin-right:20%;
            color:red;
        }
        .cont1{
            width:40%;
            float:left;
            height:auto;
            overflow:hidden;
            margin-top:110px;

        }
           .cont2{
            width:49%;
            float:right;
            height:auto;
                 overflow:hidden;
                    margin-top:110px;
                    margin-right:10%;
        }
        .auto-style2 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="fullcontent">
        <div class="heading">
            <h2>Update</h2>
        </div>
        <div class="cont1">

            <table class="auto-style2">
                <tr>
                    <td>
                        <asp:TextBox ID="txtproductid" runat="server" Height="29px" placeholder="Product ID" Width="447px"></asp:TextBox>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="txtproductname" runat="server" Height="29px" placeholder="Product Name" Width="447px"></asp:TextBox>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="txtstockprice" runat="server" Height="29px" placeholder="Stock Price" Width="447px"></asp:TextBox>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="txtsaleprice" runat="server" Height="29px" placeholder="Sale Price" Width="447px"></asp:TextBox>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="txtqty" runat="server" Height="29px" placeholder="Quantity" Width="216px"></asp:TextBox>
                        &nbsp;<asp:TextBox ID="txtnewqty" runat="server" Height="29px" placeholder="Enter New Quantity" Width="220px"></asp:TextBox>
                        </td>
                </tr>
                <tr>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" Height="47px" style="font-weight: 700; font-size: large" Width="358px">
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
                    <td>
                        <asp:Button ID="btnupdate" runat="server" Height="36px" style="font-weight: 700" Text="UPDATE" Width="271px" OnClick="btnupdate_Click" />
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblmsg" runat="server" ForeColor="Blue" Text=""></asp:Label>
                    </td>
                </tr>
            </table>

        </div>
        <div class="cont2">

            <table class="auto-style2">
                <tr>
                    <td>
                        <asp:DropDownList ID="DropDownList2" runat="server" Height="47px" style="font-weight: 700; font-size: large" Width="358px">
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
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button9" runat="server" Height="33px" style="font-weight: 700" Text="SEARCH" Width="198px" />
                    &nbsp;</td>
                </tr>
            </table>
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AutoGenerateSelectButton="True" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="productID" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="547px">
                <Columns>
                    <asp:BoundField DataField="productID" HeaderText="Product ID" ReadOnly="True" SortExpression="productID" />
                    <asp:BoundField DataField="productname" HeaderText="Product Name" SortExpression="productname" />
                    <asp:BoundField DataField="stockPrice" HeaderText="Stock Price" SortExpression="stockPrice" />
                    <asp:BoundField DataField="salePrice" HeaderText="Sale Price" SortExpression="salePrice" />
                    <asp:BoundField DataField="productQty" HeaderText="Product Qty" SortExpression="productQty" />
                    <asp:BoundField DataField="cateGory" HeaderText=" CateGory" SortExpression="cateGory" />
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:conn %>" SelectCommand="SELECT [productID], [productname], [stockPrice], [salePrice], [productQty], [cateGory] FROM [Import] WHERE ([cateGory] = @cateGory) ORDER BY [id] DESC">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList2" Name="cateGory" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>

        </div>
    </div>
</asp:Content>
