<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminLogin.aspx.cs" Inherits="FinalASPAssignment.adminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
        #backToUserLoginBtn{
border: none;
  background:none;
  font-size: 12px;
  cursor: pointer;
  display: inline-block;
  color:black;}
    </style>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label class="labels" ID="username" runat="server" Text="Username"></asp:Label>
               
            <asp:TextBox ID="txtAdminOnly" runat="server"></asp:TextBox>
                   <br /><br />
            <asp:Label class="labels" ID="password" runat="server" Text="Password"></asp:Label>
                    
            <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
                    <br /><br />
            <asp:Button class="button" ID="loginBtn" runat="server" Text="Login" OnClick="loginBtn_Click"/>
            <br /><br /><br />
            <asp:Button ID="backToUserLoginBtn" runat="server" Text="Back to User Login" OnClick="backToUserLoginBtn_Click" /> 
        </div>
    </form>
</body>
</html>
