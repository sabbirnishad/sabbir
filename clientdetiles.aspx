<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="clientdetiles.aspx.cs" Inherits="Inventory.clientdetiles" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .clientcontent{
            width:100%;
            height:auto;
            overflow:auto;
            position:relative;

        }
        .heading{
            width:100%;
            height:50px;
            text-align:center;
        }
        .heading h1{
            font-family:Arial;
            color:red;
        }
        .clientc{
            width:100%;
            margin-top:100px;
            overflow:hidden;
            position:relative;
        }
        .clientinfo{
            width:48%;
            float:left;
            height:auto;
            overflow:hidden;
        }
        .clientshow{
             width:50%;
             float:right;
              height:auto;
            overflow:auto;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="clientcontent">
        <div class="heading">
            <h1>CLIENT INFORMATION</h1>
        </div>
        <div class="clientc">
            <div class="clientinfo">

                <table class="auto-style2">
                    <tr>
                        <td colspan="2">
                            <asp:TextBox ID="txtfirstname" placeholder="Enter First Name" runat="server" Height="42px" Width="417px"></asp:TextBox>
&nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:TextBox ID="txtlastname" placeholder="Enter Last Name" runat="server" Height="42px" Width="417px"></asp:TextBox>
&nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:TextBox ID="txtphone" placeholder="Enter Phone" runat="server" Height="42px" Width="417px"></asp:TextBox>
&nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:TextBox ID="txtemail" placeholder="Enter Email" runat="server" Height="42px" Width="417px"></asp:TextBox>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail" ErrorMessage="Error" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:TextBox ID="txtaddress" placeholder="Enter Address" TextMode="MultiLine" runat="server" Height="69px" Width="417px"></asp:TextBox>
&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style3" colspan="2">
                            <asp:Button ID="btnsubmit" runat="server" Height="38px" Text="SUBMIT" Width="234px" style="font-weight: 700" OnClick="btnsubmit_Click" />
                        &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style3">
                            <asp:Label ID="lblmsg" runat="server" Text="" ForeColor="Blue"></asp:Label>
                        &nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>

            </div>
            <div class="clientshow">

                <table class="auto-style2">
                    <tr>
                        <td>
                            <asp:TextBox ID="txtsearch" placeholder="Enter Phone For Search" runat="server" Height="34px" Width="290px"></asp:TextBox>
&nbsp; </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="btnsearch" runat="server" Height="39px" Text="SEARCH" Width="151px" style="font-weight: 700" OnClick="btnsearch_Click" />
                        </td>
                    </tr>
                </table>
                <br />
                <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="420px">
                    <AlternatingRowStyle BackColor="White" />
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
            </div>
        </div>
    </div>
</asp:Content>
