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
  color:black;

        }

         h1{
            font-family:Arial;
            color:white;
            font-size:48pt;
            text-shadow: 2px 2px blue;
        }

         body{
            background-image:url('../images/healthback3333.jpg');
            background-repeat:no-repeat;
            background-attachment:fixed;
        }

         #logoutBtn{
             color:white;
         }

               .buttons{
            background-color: blue;
  border: none;
  color: white;
  padding: 16px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  -webkit-transition-duration: 0.4s; /* Safari */
  transition-duration: 0.4s;
  cursor: pointer;
  width:100px;
  
        }
        .buttons{
background-color: white; 
  color: black; 
  border: 2px solid blue;
  border-radius:12px;
}

.buttons:hover {
  background-color: blue;
  color: white;
        }
#adminPage{
            
           text-align:center;
            justify-content:center;
            align-items:center;
            
            
        }


    </style>
    <title></title>
</head>
<body>
    <form id="adminPage" runat="server">
        <div>
       
            
            <h1>Admin Menu</h1>
            
            <br /><br />

            <asp:Button class="buttons" ID="editRotationsBtn" runat="server" Text="View/Edit Rotations" OnClick="editRotationsBtn_Click" Width="230px" />
            
            <br /><br />

            <asp:Button class="buttons" ID="editUsersBtn" runat="server" Text="View/Edit Users" OnClick="editUsersBtn_Click" Width="230px" />

            <br /><br />

            <asp:Button ID="logoutBtn" runat="server" Text="LogOut" OnClick="logoutBtn_Click" />
        </div>
    </form>
</body>
</html>
