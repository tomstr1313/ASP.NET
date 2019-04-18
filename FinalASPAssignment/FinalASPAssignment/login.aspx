<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="FinalASPAssignment.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
        #loginForm{
            text-align:center;
            justify-content:center;
            align-items:center;
        }
        h1{
            font-family:Arial;
            color:white;
            font-size:48pt;
            text-shadow: 2px 2px blue;
        }
        body{
            
            background-image:url('../images/healthback.jpg');
            background-repeat:no-repeat;
            background-attachment:fixed;
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

#adminLoginBtn{
border: none;
  background:none;
  font-size: 12px;
  cursor: pointer;
  display: inline-block;
  color:white;}

.labels{
    color:white;
    padding-right:20px;
    font-family:Calibri;
}


    </style>
    <title>Log-In / Register</title>
</head>
<body>
    <form id="loginForm" runat="server">
        <div">
            <h1>Health Care Login</h1>
                
                
                    <asp:Label class="labels" ID="username" runat="server" Text="Username"></asp:Label>
               
            <asp:TextBox ID="usernameTxt" runat="server"></asp:TextBox>
                   <br /><br />
            <asp:Label class="labels" ID="password" runat="server" Text="Password"></asp:Label>
                    
            <asp:TextBox ID="passwordTxt" runat="server"></asp:TextBox>
                    <br /><br />
            <asp:Button class="button" ID="loginBtn" runat="server" Text="Login" OnClick="loginBtn_Click"/>
            <asp:Button class="button" ID="registerBtn" runat="server" Text="Register" OnClick="registerBtn_Click" />
            <br /><br />
            <asp:Button ID="forgotPasswordBtn" runat="server" Text="Forgot Password?" OnClick="forgotPasswordBtn_Click" /><asp:Button ID="adminLoginBtn" runat="server" Text="Admin?" OnClick="adminLoginBtn_Click" />
                       
        </div>
    </form>
</body>
</html>
