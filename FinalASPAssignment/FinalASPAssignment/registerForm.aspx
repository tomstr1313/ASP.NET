<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registerForm.aspx.cs" Inherits="FinalASPAssignment.registerForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register Form</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="registerForm">
                <tr>
                    <td>
                        <asp:Label ID="fNameLbl" runat="server" Text="First Name:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="firstNameTxt" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lNameLbl" runat="server" Text="Last Name:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="lastNameTxt" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="prefNameLbl" runat="server" Text="Preferred First Name:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="prefNameTxt" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="genderLbl" runat="server" Text="Gender:"></asp:Label>
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
                        <asp:Label ID="LblDOB" runat="server" Text="Date of Birth:"></asp:Label>
                    </td>
                    <td>
                        Year:<asp:DropDownList ID="DropDownListYear" runat="server">    
                            <asp:ListItem Text="1950" />
                            <asp:ListItem Text="1960" />
                            <asp:ListItem Text="1970" />
                            <asp:ListItem Text="1980" />
                            <asp:ListItem Text="1990" />
                            <asp:ListItem Text="1991" />
                            <asp:ListItem Text="1992" />
                            <asp:ListItem Text="1993" />
                            <asp:ListItem Text="1994" />
                            <asp:ListItem Text="1995" />
                            <asp:ListItem Text="1996" />
                            <asp:ListItem Text="1997" />
                            <asp:ListItem Text="1998" />
                            <asp:ListItem Text="1999" />
                            <asp:ListItem Text="2000" />
                            <asp:ListItem Text="2001" />                            
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
                        <asp:Label ID="telephoneLbl" runat="server" Text="Telephone:"></asp:Label>
                    </td>
                    <td>
                        (<asp:TextBox ID="telephoneTxt1" runat="server"></asp:TextBox>) - <asp:TextBox ID="telephoneTxt2" runat="server"></asp:TextBox> - <asp:TextBox ID="telephoneTxt3" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label7" runat="server" Text="Secondary Telephone:"></asp:Label>
                    </td>
                    <td>
                        (<asp:TextBox ID="telephoneTxt4" runat="server"></asp:TextBox>) - <asp:TextBox ID="telephoneTxt5" runat="server"></asp:TextBox> - <asp:TextBox ID="telephoneTxt6" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label8" runat="server" Text="Pager#:"></asp:Label>
                    </td>
                    <td>
                        (<asp:TextBox ID="pager1" runat="server"></asp:TextBox>) - <asp:TextBox ID="pager2" runat="server"></asp:TextBox> - <asp:TextBox ID="pager3" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="localAddressLine1Lbl" runat="server" Text="Local Address Line 1:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="localAddressLine1Txt" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="localAddressLine2Lbl" runat="server" Text="Local Address Line 2:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="localAddressLine2Txt" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="cityLbl" runat="server" Text="City:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="cityTxt" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="postalCodeLbl" runat="server" Text="Postal Code:"></asp:Label>
                    </td>
                    <td>
                         (<asp:TextBox ID="postalCodeTxt1" runat="server"></asp:TextBox>) - <asp:TextBox ID="postalCodeTxt2" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="usernameLbl" runat="server" Text="Username:"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="usernameLbl2" runat="server" Text="Username will be your email provided below."></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="LblEmail" runat="server" Text="Email:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="emailTxt" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="LblConfirmEmail" runat="server" Text="Confirm Email:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="confirmEmailTxt" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="passwordLbl" runat="server" Text="Password:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="passwordTxt" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="confirmPasswordLbl" runat="server" Text="Confirm Password:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="confirmPasswordTxt" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="LblPermanentAddress1" runat="server" Text="Permanent Address"></asp:Label>
                    </td>
                    <td>
                        <asp:RadioButton ID="RbPermanentAddress" Text="Check, if same as above" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="LblPermanentAddress2" runat="server" Text="(If different than above)"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="programNameLbl" runat="server" Text="Program Name:"></asp:Label>
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
                        <asp:Label ID="institutionNameLbl" runat="server" Text="Institution Name:"></asp:Label>
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
            <asp:Label ID="registerComplete" runat="server" Text="Registration was successful!!!" Visible="false"></asp:Label>
        </div>
    </form>
</body>
</html>
