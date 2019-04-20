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
        #adminLogin{
            
           text-align:center;
            justify-content:center;
            align-items:center;
            
            
        }

        .adminLogin{
            display:inline-block;
            align-content:center;
        }
           .button{
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
#forgotPasswordBtn{
     border: none;
  background:none;
  font-size: 12px;
  cursor: pointer;
  display: inline-block;
  color:white;
}
    </style>
    <title></title>
</head>
<body>
    <form id="adminLogin" runat="server">
        <div>
            <h1>Admin Login</h1>
            <table class="adminLogin">
                <tr>
                    <td>
            <asp:Label class="labels" ID="username" runat="server" Text="Username"></asp:Label>
               </td>
                    <td>
            <asp:TextBox ID="txtAdminOnly" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                <tr>
                    <td>
                   
            <asp:Label class="labels" ID="password" runat="server" Text="Password"></asp:Label>
                    </td>
                    <td>
            <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                </table>
                    <br /><br />
            <asp:Button class="button" ID="loginBtn" runat="server" Text="Login" OnClick="loginBtn_Click"/>
            <br /><br /><br />
            <asp:Button ID="backToUserLoginBtn" runat="server" Text="Back to User Login" OnClick="backToUserLoginBtn_Click" /> 
        </div>
    </form>
</body>
</html>
