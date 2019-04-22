<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="studentRotationPage.aspx.cs" Inherits="FinalASPAssignment.studentRotationPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
                            
    <style>

        .labels{
            color:black;
    padding-right:20px;
    font-family:Calibri;
    text-align:center;
    
    
        }
    .view{
            color:black;
    padding-right:20px;
    font-family:Calibri;
    display:inline-block;
    text-align:center;
    
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
        #form1{
            
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
    <form id="form1" runat="server">
        <div>

            <asp:Label ID="currentUser" runat="server"></asp:Label><br /><br />
            <h1>Student Rotations</h1>
            <asp:Label class="labels" ID="start" runat="server" Text="Start Date"></asp:Label>
            <asp:Calendar class="view" ID="Calendar1" runat="server"></asp:Calendar><br /><br />
            <asp:Label class="labels" ID="lblFName" runat="server" Text="End Date"></asp:Label>
            <asp:Calendar class="view" ID="Calendar2" runat="server"></asp:Calendar><br /><br />
            Area/Service:<asp:DropDownList ID="DropDownListArea" runat="server">
                <asp:ListItem Text ="Select"></asp:ListItem>
                <asp:ListItem Text ="Senior"></asp:ListItem>
                <asp:ListItem Text ="Fracture"></asp:ListItem>
                <asp:ListItem Text ="Emerg"></asp:ListItem>
                </asp:DropDownList><br /><br />
            Time Spent in Placement:<asp:DropDownList ID="DropDownListTimeSpent" runat="server">
                <asp:ListItem Text ="Select"></asp:ListItem>
                <asp:ListItem Text ="1 hr"></asp:ListItem>
                <asp:ListItem Text ="1-2 hr"></asp:ListItem>
                <asp:ListItem Text ="2-4 hr"></asp:ListItem>
                <asp:ListItem Text ="4-6 hr"></asp:ListItem>
                <asp:ListItem Text ="6-8 hr"></asp:ListItem>
                <asp:ListItem Text ="8-12 hr"></asp:ListItem>
                <asp:ListItem Text ="12-24 hr"></asp:ListItem>
                </asp:DropDownList><br /><br />
            <asp:Button class="button" ID="saveRotation" runat="server" Text="Add Rotation/Placement" OnClick="saveRotation_Click" /><br /><br />

            <asp:GridView  ID="GridViewRotations" runat="server" Visible="false"></asp:GridView><br /><br />

            <asp:Button class="button" ID="Button1" runat="server" Text="Save & Continue" OnClick="Button1_Click" />
        </div>
    </form>
</body>
</html>
