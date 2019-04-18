<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="studentRotationPage.aspx.cs" Inherits="FinalASPAssignment.studentRotationPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="currentUser" runat="server"></asp:Label><br /><br /><br /><br />
            Start Date:<asp:Calendar ID="Calendar1" runat="server"></asp:Calendar><br /><br />
            End Date:<asp:Calendar ID="Calendar2" runat="server"></asp:Calendar><br /><br />
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
            <asp:Button ID="saveRotation" runat="server" Text="Add Rotation/Placement" OnClick="saveRotation_Click" /><br /><br /><br />

            <asp:GridView ID="GridViewRotations" runat="server" Visible="false"></asp:GridView><br /><br /><br />

            <asp:Button ID="Button1" runat="server" Text="Save & Continue" OnClick="Button1_Click" />
        </div>
    </form>
</body>
</html>
