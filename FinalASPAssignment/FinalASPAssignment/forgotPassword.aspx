<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="forgotPassword.aspx.cs" Inherits="FinalASPAssignment.forgotPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
    body{
            background-image:url('../images/passwordforgot.jpg');
            background-size:100%;
        }

     h1{
            font-family:Arial;
            color:white;
            font-size:48pt;
            text-shadow: 2px 2px blue;
        }

      .buttons{
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
  width:100px;
  text-align:center;
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
#forgot{
            text-align:center;
            justify-content:center;
            align-items:center;
        }
.labels{
    color:white;
    padding-right:20px;
    font-family:Calibri;
}
        </style>

    <title></title>
</head>
<body>
    <form id="forgot" runat="server">
        <div>
            <h1>Password Recovery</h1>
            <asp:Label class="labels" ID="lblEmail" runat="server" Text="Email:"></asp:Label>
            <asp:TextBox ID="txtEmail" runat="server" Width="250"></asp:TextBox>
            <br /><br />
            <asp:Label class="labels" ID="lblMessage" runat="server" Text=""></asp:Label>
            <br /><br />
            <asp:Button class="buttons" ID="btnSend" runat="server" Text="Send" OnClick="btnSend_Click" />
            <asp:Button class="buttons" ID="btnBack" runat="server" Text="Back" OnClick="btnBack_Click" />
        </div>
    </form>
</body>
</html>
