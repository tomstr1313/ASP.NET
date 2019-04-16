<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="editRotationsAdmin.aspx.cs" Inherits="FinalASPAssignment.editRotationsAdmin" %>

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
            <asp:Label ID="currentUserLabel" runat="server"></asp:Label><asp:Button ID="logoutBtn" runat="server" Text="LogOut" OnClick="logoutBtn_Click" />

            <br /><br /><br />
            Search by Username/Email:<asp:TextBox ID="searchByTxt" runat="server" Text=""></asp:TextBox><asp:Button ID="searchBtn" runat="server" Text="Search"  OnClick="searchBtn_Click"/>
            <table class="editStudentInfo">
                <br /><br /><br />
                <tr>
                    <td>
                        <asp:Label ID="lblUsername" runat="server" Text="UserName"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="username" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblArea" runat="server" Text="Unit/Area/Service"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="area" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblstartDate" runat="server" Text="Start Date"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="sDate" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblEndDAte" runat="server" Text="End Date"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="eDate" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblTimeSpent" runat="server" Text="Time Spent"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="timeSpent" runat="server"></asp:TextBox>
                    </td>
                </tr>
            </table>
            <br /><br />
            <asp:Button ID="editBtn" runat="server" Text="Edit"  OnClick="editBtn_Click"/><asp:Button ID="deleteBtn" runat="server" Text="Delete" OnClick="deleteBtn_Click" /><asp:Button ID="addBtn" runat="server" Text="Add" OnClick="addBtn_Click" />
            <br /><br /><br />
            <asp:GridView ID="GridViewRotations" runat="server"></asp:GridView>
            <br /><br />
            <asp:Button ID="backBtn" runat="server" Text="Admin Main Page" OnClick="backBtn_Click" />
        </div>
    </form>
</body>
</html>
