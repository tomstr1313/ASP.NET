<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminPage.aspx.cs" Inherits="FinalASPAssignment.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
        #logoutBtn{
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
            <asp:Label ID="currentUserLbl" runat="server"></asp:Label><asp:Button ID="logoutBtn" runat="server" Text="LogOut" OnClick="logoutBtn_Click" />
            
            <br /><br /><br />

            <asp:Button ID="editRotationsBtn" runat="server" Text="View/Edit Rotations" OnClick="editRotationsBtn_Click" />
            
            <br /><br />

            <asp:Button ID="editUsersBtn" runat="server" Text="View/Edit Users" OnClick="editUsersBtn_Click" />
        </div>
    </form>
</body>
</html>
