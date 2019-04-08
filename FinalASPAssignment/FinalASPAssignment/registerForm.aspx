<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registerForm.aspx.cs" Inherits="FinalASPAssignment.registerForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
        form{
            
           margin: auto;
            width: 50%;
            padding: 10px;
            
        }
        h1{
            font-family:Arial;
            color:white;
            font-size:48pt;
            text-shadow: 2px 2px blue;
            text-align:center;
        }
        body{
            background-image:url("images/healthback2.jpg");
           
        }
        .phone{
            width:35px;
            text-align:center;
        }
        .labels{
    color:black;
    text-shadow:1px 1px white;
    padding-right:20px;
    font-family:Calibri;
}
    </style>
    <title>Register Form</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Registration Form</h1>
            <table class="registerForm">
                <tr>
                    <td>
                        <asp:Label class="labels" ID="fNameLbl" runat="server" Text="First Name:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="firstNameTxt" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label class="labels" ID="lNameLbl" runat="server" Text="Last Name:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="lastNameTxt" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label class="labels" ID="prefNameLbl" runat="server" Text="Preferred First Name:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="prefNameTxt" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label class="labels" ID="genderLbl" runat="server" Text="Gender:"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownListGender" runat="server">
                            <asp:ListItem Text="Select"/>                            
                            <asp:ListItem Text="Male" />
                            <asp:ListItem Text="Female"/>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label class="labels" ID="LblDOB" runat="server" Text="Date of Birth:"></asp:Label>
                    </td>
                    <td>
                        Year:<asp:DropDownList ID="DropDownListYear" runat="server">    
                                                       
                        </asp:DropDownList>
                        Month:<asp:DropDownList ID="DropDownListMonth" runat="server">
                            <asp:ListItem Text = "January" />
                            <asp:ListItem Text = "February" />
                            <asp:ListItem Text = "March" />
                            <asp:ListItem Text = "April" />
                            <asp:ListItem Text = "May" />
                            <asp:ListItem Text = "June" />
                            <asp:ListItem Text = "July" />
                            <asp:ListItem Text = "August" />
                            <asp:ListItem Text = "September" />
                            <asp:ListItem Text = "October" />
                            <asp:ListItem Text = "November" />
                            <asp:ListItem Text = "December" />
                        </asp:DropDownList>
                        Day:<asp:DropDownList ID="DropDownListDay" runat="server">  
                            
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label class="labels" ID="telephoneLbl" runat="server" Text="Telephone:"></asp:Label>
                    </td>
                    <td>
                        (<asp:TextBox class="phone" ID="telephoneTxt1" runat="server" MaxLength="3"></asp:TextBox>) - 
                        <asp:TextBox class="phone" ID="telephoneTxt2" runat="server" MaxLength="3"></asp:TextBox> - 
                        <asp:TextBox class="phone" ID="telephoneTxt3" runat="server" MaxLength="4"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label class="labels" ID="Label7" runat="server" Text="Secondary Telephone:"></asp:Label>
                    </td>
                    <td>
                        (<asp:TextBox class="phone" ID="telephoneTxt4" runat="server" MaxLength="3"></asp:TextBox>) - 
                        <asp:TextBox class="phone" ID="telephoneTxt5" runat="server" MaxLength="3"></asp:TextBox> - 
                        <asp:TextBox class="phone" ID="telephoneTxt6" runat="server" MaxLength="4"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label class="labels" ID="Label8" runat="server" Text="Pager#:"></asp:Label>
                    </td>
                    <td>
                        (<asp:TextBox class="phone" ID="pager1" runat="server" MaxLength="3"></asp:TextBox>) - 
                        <asp:TextBox class="phone" ID="pager2" runat="server" MaxLength="3"></asp:TextBox> - 
                        <asp:TextBox class="phone" ID="pager3" runat="server" MaxLength="4"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label class="labels" ID="localAddressLine1Lbl" runat="server" Text="Local Address Line 1:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="localAddressLine1Txt" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label class="labels" ID="localAddressLine2Lbl" runat="server" Text="Local Address Line 2:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="localAddressLine2Txt" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label class="labels" ID="cityLbl" runat="server" Text="City:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="cityTxt" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label class="labels" ID="postalCodeLbl" runat="server" Text="Postal Code:"></asp:Label>
                    </td>
                    <td>
                         (<asp:TextBox ID="postalCodeTxt1" runat="server"></asp:TextBox>) - <asp:TextBox ID="postalCodeTxt2" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label class="labels" ID="usernameLbl" runat="server" Text="Username:"></asp:Label>
                    </td>
                    <td>
                        <asp:Label class="labels" ID="usernameLbl2" runat="server" Text="Username will be your email provided below."></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label class="labels" ID="LblEmail" runat="server" Text="Email:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="emailTxt" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label class="labels" ID="LblConfirmEmail" runat="server" Text="Confirm Email:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox class="labels" ID="confirmEmailTxt" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label class="labels" ID="passwordLbl" runat="server" Text="Password:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="passwordTxt" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label class="labels" ID="confirmPasswordLbl" runat="server" Text="Confirm Password:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="confirmPasswordTxt" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label class="labels" ID="LblPermanentAddress1" runat="server" Text="Permanent Address"></asp:Label>
                    </td>
                    <td>
                        <asp:RadioButton ID="RbPermanentAddress" Text="Check, if same as above" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label class="labels" ID="LblPermanentAddress2" runat="server" Text="(If different than above)"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label class="labels" ID="programNameLbl" runat="server" Text="Program Name:"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownListProgramName" runat="server">
                            <asp:ListItem Text="Allergy" />
                            <asp:ListItem Text="Anaesthesiology" />
                            <asp:ListItem Text="Biochemistry" />
                            <asp:ListItem Text="Diagnotis radiology" />
                            <asp:ListItem Text="Emergency Medicine (FM)" />
                            <asp:ListItem Text="Emergency Medicine (FRCP)" />
                            <asp:ListItem Text="Endorinology" />
                            <asp:ListItem Text="Family Medicine" />
                            <asp:ListItem Text="Gynaecology" />
                            <asp:ListItem Text="Core rotation" />
                            <asp:ListItem Text="Elective" />
                            <asp:ListItem Text="Selective" />
                            <asp:ListItem Text="RPN" />
                            <asp:ListItem Text="RN" />
                            <asp:ListItem Text="MN" />
                            <asp:ListItem Text="NP" />
                            <asp:ListItem Text="Anaesthesia Assistant" />
                            <asp:ListItem Text="Audiology" />
                            <asp:ListItem Text="Cardiovascular Technology (ECG)" />
                            <asp:ListItem Text="Chirpody" />
                            <asp:ListItem Text="Dietetics" />
                            <asp:ListItem Text="Diet Technician" />
                            <asp:ListItem Text="Echocardiography" />
                            <asp:ListItem Text="Infection Prevention And Control" />
                            <asp:ListItem Text="Other" />                                
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label class="labels" ID="institutionNameLbl" runat="server" Text="Institution Name:"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownListInstitutionName" runat="server">
                            <asp:ListItem Text="University of Toronto" />
                            <asp:ListItem Text="Algonquin" />
                            <asp:ListItem Text="Athabasca University" />
                            <asp:ListItem Text="Cambrian College" />
                            <asp:ListItem Text="Centennial College" />
                            <asp:ListItem Text="College Boreal" />
                            <asp:ListItem Text="Conestoga" />
                            <asp:ListItem Text="D'Youville College" />
                            <asp:ListItem Text="Fanshawe" />
                            <asp:ListItem Text="George Brown College" />
                            <asp:ListItem Text="Georgian College" />
                            <asp:ListItem Text="Guelph University" />
                            <asp:ListItem Text="Humber Collge" />
                            <asp:ListItem Text="Lambton College" />
                            <asp:ListItem Text="Laurentian University" />
                            <asp:ListItem Text="McGill University" />
                            <asp:ListItem Text="McMaster University" />
                            <asp:ListItem Text="Michener Institute for Applied Health Science" />
                            <asp:ListItem Text="Mohawk College of Applied Arts" />
                            <asp:ListItem Text="Niagara College" />
                            <asp:ListItem Text="Northern Ontario School of Medicine" />
                            <asp:ListItem Text="Queens University" />
                            <asp:ListItem Text="Ryerson University" />
                            <asp:ListItem Text="Seneca College" />
                            <asp:ListItem Text="Trent University" />
                            <asp:ListItem Text="University of Ontario Institute of Tehcnology (UOIT)" />
                            <asp:ListItem Text="University of Ottawa" />
                            <asp:ListItem Text="University of Waterloo" />
                            <asp:ListItem Text="University of Western Ontario" />
                            <asp:ListItem Text="Wilfrid Laurier University" />
                            <asp:ListItem Text="York University" />
                        </asp:DropDownList>
                    </td>
                </tr>
            </table>
            <asp:Button ID="registerBtn" runat="server" Text="Register" OnClick="registerBtn_Click" /><asp:Button ID="cancelBtn" runat="server" Text="Cancel" />
            <br /><br />
            <asp:Label class="labels" ID="registerComplete" runat="server" Text="Registration was successful!!!" Visible="false"></asp:Label>
        </div>
    </form>
</body>
</html>
