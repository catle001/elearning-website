<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SignUpPage.aspx.cs" Inherits="FYP.SignUpPage" %>
<asp:Content ID="SignUp" ContentPlaceHolderID="MainContent" runat="server">
    <table style="width:100%;">
        <tr>
            <td colspan="2" style="height: 22px">Sign Up<br />
            </td>
        </tr>
        <tr>
            <td style="height: 22px; width: 1016px">First Name:</td>
            <td style="height: 22px">
                <input id="txtFirstName" required="required" type="text" name="tbFirstName" /></td>
        </tr>
        <tr>
            <td style="height: 22px; width: 1016px">Last Name:</td>
            <td style="height: 22px">
                <input id="txtLastName" required="required" type="text" name="tbLastName"/></td>
        </tr>
        <tr>
            <td style="width: 20%">Matriculation/ID No.:</td>
            <td>
                <input id="txtMatric" required="required" type="text" name="tbIDNo"/></td>
        </tr>
        <tr>
            <td style="width: 1016px; height: 22px">NTU Email Address:</td>
            <td style="height: 22px">
                <input id="txtEmail" required="required" type="text" name="tbEmail"/></td>
        </tr>
        <tr>
            <td style="width: 1016px; height: 22px">Username:</td>
            <td style="height: 22px">
                <input id="txtUName" required="required" type="text" name="tbUName"/></td>
        </tr>
        <tr>
            <td style="height: 22px; width: 1016px">Password:</td>
            <td style="height: 22px">
                <input id="txtPwd" required="required" type="password" name="tbpword" /></td>
        </tr>
        <tr>
            <td style="width: 1016px; height: 24px">Domain:</td>
            <td style="height: 24px">
                <input id="txtdomain" required="required" type="password" name="tbdomain" /></td>
        </tr>
        <tr>
            <td style="width: 1016px">&nbsp;</td>
            <td>
                <asp:Button ID="btnSignUp" runat="server" OnClick="btnSignUp_Click" Text="Sign Up!" />
            </td>
        </tr>
    </table>
</asp:Content>
