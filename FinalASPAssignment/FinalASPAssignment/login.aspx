<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="FinalASPAssignment.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Log-In / Register</title>
</head>
<body>
    <form id="loginForm" runat="server">
        <div>
            <asp:Label ID="username" runat="server" Text="Label"></asp:Label>
            <asp:TextBox ID="usernameTxt" runat="server"></asp:TextBox>
            <br /><br />
            <asp:Label ID="password" runat="server" Text="Label"></asp:Label>
            <asp:TextBox ID="passwordTxt" runat="server"></asp:TextBox>
            <br /><br />
            <asp:Button ID="loginBtn" runat="server" Text="Log-In" /><asp:Button ID="registerBtn" runat="server" Text="Register" OnClick="registerBtn_Click" />
            <br /><br />
            <asp:Button ID="forgotPasswordBtn" runat="server" Text="Forgot Password" OnClick="forgotPasswordBtn_Click" />
        </div>
    </form>
</body>
</html>
