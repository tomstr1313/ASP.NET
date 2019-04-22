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
  color:white;

        }
                        .labels{
            color:white;
    padding-right:20px;
    font-family:Calibri;
        }
        body{
            background-image:url('../images/healthback3333.jpg');
            background-repeat:no-repeat;
            background-attachment:fixed;
        }
        h1{
            font-family:Arial;
            color:white;
            font-size:48pt;
            text-shadow: 2px 2px blue;
        }
        #editUsers{
            
           text-align:center;
            justify-content:center;
            align-items:center;
            
            
        }

        .editStudentInfo{
            display:inline-block;
            align-content:center;
        }
           .button{
             background-color: blue;
  border: none;
  color: white;
  
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  -webkit-transition-duration: 0.4s; /* Safari */
  transition-duration: 0.4s;
  cursor: pointer;
}

.button {
  background-color: white; 
  color: black; 
  border: 2px solid blue;
  border-radius:12px;
}

.button:hover {
  background-color: blue;
  color: white;
        }
    </style>
    <title></title>
</head>
<body>
    <form id="editUsers" runat="server">
        <div>
            <asp:Label ID="currentUserLabel" runat="server"></asp:Label>
            <h1>Edit Users</h1>
            

            <br /><br /><br />
            <asp:Label class="labels" ID="search" runat="server" Text="Search By Email / Username"></asp:Label>
            <asp:TextBox ID="searchByTxt" runat="server" Text="">

                                     </asp:TextBox>
            <br /><br />
            <asp:Button class="button" ID="searchBtn" runat="server" Text="Search"  OnClick="searchBtn_Click"/>
            <br /><br />
            <table class="editStudentInfo">
                
                <tr>
                    <td>
                        <asp:Label class="labels" ID="lblFName" runat="server" Text="First Name"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="fName" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label class="labels" ID="lblLName" runat="server" Text="Last Name"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="lName" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label class="labels" ID="lblAddress" runat="server" Text="Address"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="address" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label class="labels" ID="lblPostal" runat="server" Text="Postal Code"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="postalCode" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label class="labels" ID="lblDOB" runat="server" Text="DOB"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="DOB" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label class="labels" ID="lblEmail" runat="server" Text="Email"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="email" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label class="labels" ID="lblPassword" runat="server" Text="Password/Confirmation Password"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="password" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label class="labels" ID="lblTele" runat="server" Text="Telephone"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="telephone" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label class="labels" ID="lblProgramType" runat="server" Text="Program Type"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="programType" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label class="labels" ID="lblProgramName" runat="server" Text="Program Name"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="programName" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label class="labels" ID="lblInstitution" runat="server" Text="Institution Name"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="institutionName" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label class="labels" ID="lblGender" runat="server" Text="Gender"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="gender" runat="server"></asp:TextBox>
                    </td>
                </tr>
            </table>
            <br /><br />
            <asp:Button class="button" ID="editBtn" runat="server" Text="Edit"  OnClick="editBtn_Click"/>
            <asp:Button class="button" ID="deleteBtn" runat="server" Text="Delete" OnClick="deleteBtn_Click" />
            <asp:Button class="button" ID="addBtn" runat="server" Text="Add" OnClick="addBtn_Click" />
            <br /><br /><br />
            <asp:GridView class="labels" ID="GridViewUsers" runat="server"></asp:GridView>
            <br /><br />
            <asp:Button class="button" ID="backBtn" runat="server" Text="Admin Main Page" OnClick="backBtn_Click" />
            <br /><br />
            <asp:Button ID="logoutBtn" runat="server" Text="LogOut" OnClick="logoutBtn_Click" />
        </div>
    </form>
</body>
</html>
