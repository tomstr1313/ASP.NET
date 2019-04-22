<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="studentLoggedIn.aspx.cs" Inherits="FinalASPAssignment.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
                            .labels{
            color:black;
    padding-right:20px;
    font-family:Calibri;
        }
        body{
            background-image:url('../images/healthback4.jpg');
            background-repeat:no-repeat;
            background-attachment:fixed;
        }
        h1{
            font-family:Arial;
            color:white;
            font-size:48pt;
            text-shadow: 2px 2px blue;
        }
        #studentLoggedIn{
            
           text-align:center;
            justify-content:center;
            align-items:center;
            
            
        }

        .studentInfo{
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
    <form id="studentLoggedIn" runat="server">
        <div>
            <asp:Label ID="lblCurrentUser" runat="server"></asp:Label>
            <h1>Student Menu</h1>
            <table class="studentInfo">
                
                <tr>
                    <td>
                        <asp:Label class="labels" ID="lblFName" runat="server" Text="First Name"></asp:Label>
                    </td>
                    <td>
                        <asp:Label class="labels" ID="fName" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label class="labels" ID="lblLName" runat="server" Text="Last Name"></asp:Label>
                    </td>
                    <td>
                        <asp:Label class="labels" ID="lName" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label class="labels" ID="lblAddress" runat="server" Text="Address"></asp:Label>
                    </td>
                    <td>
                        <asp:Label class="labels" ID="address" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label class="labels" ID="lblPostal" runat="server" Text="Postal Code"></asp:Label>
                    </td>
                    <td>
                        <asp:Label class="labels" ID="postalCode" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label class="labels" ID="lblDOB" runat="server" Text="DOB"></asp:Label>
                    </td>
                    <td>
                        <asp:Label class="labels" ID="DOB" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label class="labels" ID="lblEmail" runat="server" Text="Email"></asp:Label>
                    </td>
                    <td>
                        <asp:Label class="labels" ID="email" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label class="labels" ID="lblPassword" runat="server" Text="Password/Confirmation Password"></asp:Label>
                    </td>
                    <td>
                        <asp:Label class="labels" ID="password" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label class="labels" ID="lblTele" runat="server" Text="Telephone"></asp:Label>
                    </td>
                    <td>
                        <asp:Label class="labels" ID="telephone" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label class="labels" ID="lblProgramType" runat="server" Text="Program Type"></asp:Label>
                    </td>
                    <td>
                        <asp:Label class="labels" ID="programType" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label class="labels" ID="lblProgramName" runat="server" Text="Program Name"></asp:Label>
                    </td>
                    <td>
                        <asp:Label class="labels" ID="programName" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label class="labels" ID="lblInstitution" runat="server" Text="Institution Name"></asp:Label>
                    </td>
                    <td>
                        <asp:Label class="labels" ID="institutionName" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
            <asp:GridView ID="GridView1" runat="server"></asp:GridView>

            <asp:Button class="button" ID="rotationBtn" runat="server" Text="Add/View Rotations" OnClick="rotationBtn_Click" />
            <asp:Button class="button" ID="LogOutBtn" runat="server" Text="Logout" OnClick="LogOutBtn_Click" />
        </div>
    </form>
</body>
</html>
