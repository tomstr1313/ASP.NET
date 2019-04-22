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
        #adminRotations{
            
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
    <form id="adminRotations" runat="server">
        <div>
            <asp:Label ID="currentUserLabel" runat="server"></asp:Label>
            <h1>Admin Rotations Page</h1>

            <br /><br /><br />
            <asp:Label class="labels" ID="search" runat="server" Text="Search By Email / Username"></asp:Label>
            <asp:TextBox ID="searchByTxt" runat="server" Text=""></asp:TextBox>
            <br /><br />
            <asp:Button class="button" ID="searchBtn" runat="server" Text="Search"  OnClick="searchBtn_Click"/>
            <br /><br /><br />
            <table class="editStudentInfo">
                
                <tr>
                    <td>
                        <asp:Label class="labels" ID="lblUsername" runat="server" Text="UserName"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="username" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label class="labels" ID="lblArea" runat="server" Text="Unit/Area/Service"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="area" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label class="labels" ID="lblstartDate" runat="server" Text="Start Date"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="sDate" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label class="labels" ID="lblEndDAte" runat="server" Text="End Date"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="eDate" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label class="labels" ID="lblTimeSpent" runat="server" Text="Time Spent"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="timeSpent" runat="server"></asp:TextBox>
                    </td>
                </tr>
            </table>
            <br /><br />
            <asp:Button class="button" ID="editBtn" runat="server" Text="Edit"  OnClick="editBtn_Click"/>
            <asp:Button class="button" ID="deleteBtn" runat="server" Text="Delete" OnClick="deleteBtn_Click" />
            <asp:Button class="button" ID="addBtn" runat="server" Text="Add" OnClick="addBtn_Click" />
            <br /><br /><br />
            <asp:GridView ID="GridViewRotations" runat="server"></asp:GridView>
            <br /><br />
            <asp:Button class="button" ID="backBtn" runat="server" Text="Admin Main Page" OnClick="backBtn_Click" />
            <br /><br />
            <asp:Button class="button" ID="logoutBtn" runat="server" Text="LogOut" OnClick="logoutBtn_Click" />
        </div>
    </form>
</body>
</html>
