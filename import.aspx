<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="import.aspx.cs" Inherits="Inventory.import" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
        .auto-style2 {
            width: 100%;
        }
         .auto-style3 {
             color: #FF0000;
         }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="width:80%;height:40px;text-align:center;margin-right:20%;">
        <h1 class="auto-style3">IMPORT</h1>
    </div>
        <div style="width:40%;margin-left:20%;margin-right:40%;margin-top:110px;height:auto;">

        <table class="auto-style2">
            <tr>
                <td>
                    <asp:TextBox ID="txtproductid" placeholder="Product ID" runat="server" Height="29px" Width="447px"></asp:TextBox>
&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="txtproductname" placeholder="Product Name" runat="server" Height="29px" Width="447px"></asp:TextBox>
&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="txtstockprice" placeholder="Stock Price" runat="server" Height="29px" Width="447px"></asp:TextBox>
&nbsp;</td>
            </tr>
            <tr>
                <td>
                    
&nbsp;</td><asp:TextBox ID="txtsaleprice" placeholder="Sale Price" runat="server" Height="29px" Width="447px"></asp:TextBox>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="txtqty" placeholder="Quantity" runat="server" Height="29px" Width="447px"></asp:TextBox>
&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="47px" style="font-weight: 700; font-size: large" Width="358px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
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
                <td><asp:Button ID="btnaddproduct" runat="server" Height="36px" style="font-weight: 700" Text="ADD PRODUCT" Width="271px" OnClick="btnaddproduct_Click" />
&nbsp;</td>
            </tr>
            <tr>
                <td><asp:Label ID="lblmsg" runat="server" Text="" ForeColor="Blue"></asp:Label>
                </td>
            </tr>
        </table>
          
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" Width="454px">
                <Columns>
                    <asp:BoundField DataField="productname" HeaderText="Product Name" SortExpression="productname" />
                    <asp:BoundField DataField="stockPrice" HeaderText="Price" SortExpression="stockPrice" />
                    <asp:BoundField DataField="productQty" HeaderText="Quantity" SortExpression="productQty" />
                    <asp:BoundField DataField="total" HeaderText="Total" ReadOnly="True" SortExpression="total" />
                </Columns>
                <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                <RowStyle BackColor="White" ForeColor="#003399" />
                <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                <SortedAscendingCellStyle BackColor="#EDF6F6" />
                <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                <SortedDescendingCellStyle BackColor="#D6DFDF" />
                <SortedDescendingHeaderStyle BackColor="#002876" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:conn %>" SelectCommand="SELECT [productname], [stockPrice], [productQty], [total] FROM [Import] ORDER BY [id] DESC"></asp:SqlDataSource>
    </div>
</asp:Content>
