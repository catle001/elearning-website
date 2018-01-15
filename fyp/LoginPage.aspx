<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="FYP.LoginPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table style="width:100%;">
        <tr>
            <td style="height: 22px"></td>
        </tr>
        <tr>
            <td colspan="3" align="center">
                <asp:Login ID="Login1" runat="server" Height="154px" style="margin-top: 0px" Width="298px">
                    <LayoutTemplate>
                        <table cellpadding="1" cellspacing="0" style="border-collapse:collapse;">
                            <tr>
                                <td>
                                    <table cellpadding="0" class="auto-style2">
                                        <tr>
                                            <td align="right" class="auto-style3">
                                                <asp:Label ID="lblDomain" runat="server" AssociatedControlID="ddlDomain" style="margin-right: 15px">Domain:</asp:Label>
                                            </td>
                                            <td class="auto-style3">
                                                <asp:DropDownList ID="ddlDomain" CssClass="form-control" runat="server">
                                                    <asp:ListItem>Student</asp:ListItem>
                                                    <asp:ListItem>Staff</asp:ListItem>
                                                    <asp:ListItem>Admin</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr>
            <td style="height: 10px"></td>
        </tr>
                                        <tr>
                                            <td align="right">
                                                <asp:Label ID="lblUsername" runat="server" AssociatedControlID="UserName" style="margin-right: 15px">Username:</asp:Label>
                                            
                                            </td>
                                            <td>
                                                <asp:TextBox ID="UserName" CssClass="form-control" runat="server"></asp:TextBox>
                                                </td>
                                            <td>
                                                <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="User Name is required." Font-Size="Medium" ForeColor="Red" ToolTip="User Name is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                                <tr>
            <td style="height: 10px"></td>
        </tr>
                                        <tr>
                                            <td align="right">
                                                <asp:Label ID="lblPassword" runat="server" AssociatedControlID="Password" Height="20px" style="margin-right: 15px">Password:</asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="Password" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                                            </td>
                                            <td>
                                                <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="Password is required." Font-Size="Medium" ForeColor="Red" ToolTip="Password is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                         <tr>
            <td style="height: 10px"></td>
        </tr>
                                        <tr>
                                            <td colspan="2" align="center" style="height: 20px">
                                                <asp:LinkButton ID="btnSignUpLink" runat="server" OnClick="btnSignUpLink_Click">Don&#39;t have an account? Sign up here!</asp:LinkButton>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="center" colspan="2" style="color:Red;">
                                                <asp:Literal ID="FailureText" runat="server" EnableViewState="False" Visible="False"></asp:Literal>
                                            </td>
                                        </tr>
                                         <tr>
            <td style="height: 10px"></td>
        </tr>
                                        <tr>
                                            <td align="right" colspan="2">
                                                <asp:Button ID="LoginButton" CssClass="btn" runat="server" CommandName="Login" Text="Log In" ValidationGroup="Login1" OnClick="LoginButton_Click" />
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </LayoutTemplate>
                </asp:Login>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="headContainer">
    <style type="text/css">
        .auto-style2 {
            height: 154px;
            width: 298px;
        }
        .auto-style3 {
            height: 30px;
        }
    </style>
</asp:Content>

