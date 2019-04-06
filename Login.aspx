<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Inventory.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Log In</title>
    
    <style type="text/css">
        body{
            width:1024px;
            height:768px;
            margin:0px auto;
            overflow:auto;
            padding:0px;
             background-image:url(Images/23.jpg);
        }
        .main{
            width:1024px;
           overflow:hidden;
            height:738px;
           position:relative;
            background-color:rgba(0,0,0,0.5);
        }
        .content{
            width:40%;
            margin-left:30%;
            margin-right:30%;
            margin-top:200px;
            margin-bottom:318px;
            height:220px;
        }
        .footer{
            width:100%;
            height:30px;
            text-align:center;
            background-color:black;
            color:white;
        }
        .footer a{
            text-decoration:none;
            color:white;
        }
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            font-weight: bold;
            font-size: x-large;
        }
    </style>
  
</head>
<body>
    <form id="form1" runat="server">
    <div class="main">
    <div class="content">

        <table class="auto-style1">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="UserName" ForeColor="White" CssClass="auto-style2"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="txtusername" placeholder="User Name" runat="server" Height="31px" Width="388px"></asp:TextBox>
                    <br />
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please fillup this field" ControlToValidate="txtusername" ForeColor="Red" ToolTip="User Name"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Password" ForeColor="White" CssClass="auto-style2"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="txtpassword" TextMode="Password" placeholder="Password" runat="server" Height="31px" Width="388px"></asp:TextBox>
                    <br />
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please fillup this field" ControlToValidate="txtpassword" ForeColor="Red" ToolTip="Password"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnlogin" runat="server" Height="33px" style="font-weight: 700" Text="LOG IN" Width="388px" OnClick="btnlogin_Click" />
                </td>
            </tr>
        </table>

    </div>
    </div>
        <div class="footer">
            <p>Inventory Management Developed by Sabbir Hossain</p>
        </div>
    </form>
</body>
</html>
