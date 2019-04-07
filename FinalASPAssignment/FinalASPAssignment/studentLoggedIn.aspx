<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="studentLoggedIn.aspx.cs" Inherits="FinalASPAssignment.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="studentInfo">
                <tr>
                    <td>
                        <asp:Label ID="lblFName" runat="server" Text="First Name"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="fName" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblLName" runat="server" Text="Last Name"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lName" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblAddress" runat="server" Text="Address"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="address" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblPostal" runat="server" Text="Postal Code"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="postalCode" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblDOB" runat="server" Text="DOB"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="DOB" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="email" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblPassword" runat="server" Text="Password/Confirmation Password"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="password" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblTele" runat="server" Text="Telephone"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="telephone" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblProgramType" runat="server" Text="Program Type"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="programType" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblProgramName" runat="server" Text="Program Name"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="programName" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblInstitution" runat="server" Text="Institution Name"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="institutionName" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
