<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="editUsersAdmin.aspx.cs" Inherits="FinalASPAssignment.editUsersAdmin" %>

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
                        <asp:Label ID="lblFName" runat="server" Text="First Name"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="fName" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblLName" runat="server" Text="Last Name"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="lName" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblAddress" runat="server" Text="Address"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="address" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblPostal" runat="server" Text="Postal Code"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="postalCode" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblDOB" runat="server" Text="DOB"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="DOB" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="email" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblPassword" runat="server" Text="Password/Confirmation Password"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="password" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblTele" runat="server" Text="Telephone"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="telephone" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblProgramType" runat="server" Text="Program Type"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="programType" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblProgramName" runat="server" Text="Program Name"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="programName" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblInstitution" runat="server" Text="Institution Name"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="institutionName" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblGender" runat="server" Text="Gender"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="gender" runat="server"></asp:TextBox>
                    </td>
                </tr>
            </table>
            <br /><br />
            <asp:Button ID="editBtn" runat="server" Text="Edit"  OnClick="editBtn_Click"/><asp:Button ID="deleteBtn" runat="server" Text="Delete" OnClick="deleteBtn_Click" /><asp:Button ID="addBtn" runat="server" Text="Add" OnClick="addBtn_Click" />
            <br /><br /><br />
            <asp:GridView ID="GridViewUsers" runat="server"></asp:GridView>
            <br /><br />
            <asp:Button ID="backBtn" runat="server" Text="Admin Main Page" OnClick="backBtn_Click" />
        </div>
    </form>
</body>
</html>
