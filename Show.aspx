<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="Show.aspx.cs" Inherits="Inventory.Show" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  <style type="text/css">
      .dashboard{
          width:100%;
          height:auto;
          margin-top:100px;
          overflow:hidden;
          position:relative;
      }
      .dashcont{
          width:33%;
          float:left;height:250px;text-align:center;
          color:white;
      }
      .lew{
          width:100%;margin:0px auto;
          height:100px;
          overflow:hidden;
          text-align:center;
          background-color:#1b4209;;
          color:white;
      }
  </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="dashboard">
        <div class="dashcont" style="background-color:#c2700b;">
            <h1>Total Invest</h1>
            <br />
            <br />
            <asp:Label ID="lblinvest" Font-Bold="true" Font-Italic="true" Font-Size="Large" runat="server" Text=""></asp:Label>
        </div>
         <div class="dashcont" style="background-color:#b793c6;">
              <h1>Total Sale</h1>
             
            <br />
            <br />
            <asp:Label ID="lblsale" runat="server" Font-Bold="true" Font-Italic="true" Font-Size="Large" Text=""></asp:Label>
        </div>
         <div class="dashcont" style="background-color:#97e85f;">
              <h1>Total Expense</h1>
             
            <br />
            <br />
            <asp:Label ID="lblexpense" Font-Bold="true" Font-Italic="true" Font-Size="Large" runat="server" Text=""></asp:Label>
        </div>
    </div>
    <div class="lew">
        <h1>Total Profit</h1>
   
        <asp:Label ID="lblprofit" runat="server" Text=""></asp:Label>
        <br />
        <asp:Label ID="lblstocktotal" runat="server" Text=""></asp:Label>
    </div>
</asp:Content>
