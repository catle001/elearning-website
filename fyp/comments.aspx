<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="comments.aspx.cs" Inherits="FYP.comments" %>

<asp:Content ID="Content2" ContentPlaceHolderID="headContainer" runat="server">
    <style>html { font-size: 14px; font-family: Arial, Helvetica, sans-serif; }</style>
    <link rel="stylesheet" href="https://kendo.cdn.telerik.com/2017.3.1026/styles/kendo.common-material.min.css" />
    <link rel="stylesheet" href="https://kendo.cdn.telerik.com/2017.3.1026/styles/kendo.material.min.css" />
    <link rel="stylesheet" href="https://kendo.cdn.telerik.com/2017.3.1026/styles/kendo.material.mobile.min.css" />

    <script src="https://kendo.cdn.telerik.com/2017.3.1026/js/jquery.min.js"></script>
    <script src="https://kendo.cdn.telerik.com/2017.3.1026/js/kendo.all.min.js"></script>

</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        <br />
        <span style="font-size: x-large"><strong>Result Viewing Page</strong></span></p>
    <p>
        &nbsp;</p>
    <p style="font-size: large">
        Please select the student:</p>
    <p style="font-size: large">
            &nbsp; Project:
        <asp:DropDownList ID="project" runat="server" AutoPostBack = "true" OnSelectedIndexChanged="project_SelectedIndexChanged" Width="257px">
        </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;&nbsp; Group:
        <asp:DropDownList ID="group" runat="server" AutoPostBack = "true" OnSelectedIndexChanged="group_SelectedIndexChanged" Width="257px" >
        </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;&nbsp; Student:<asp:DropDownList ID="student" runat="server" Width="257px" OnSelectedIndexChanged="student_SelectedIndexChanged">
        </asp:DropDownList>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="submit" runat="server" OnClick="Button1_Click" Text="submit" />
    </p>
    <p style="font-size: large">
        &nbsp;</p>
     <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse">
    <tr>
        <td style="width: 673px" align="centre">
                <div class="demo-section k-content wide"></div>
        <div id="chart" style="width: 668px; height: 464px">
              </div>
                <script>
                        <asp:Literal id="litScript" runat="server" />
                </script>
        <br />
        </td>
        <td style="width: 725px" valign="top">
        <asp:PlaceHolder ID = "PlaceHolder1" runat="server" />    
        </td>
    </tr>
    </table>
    <p style="font-size: large">
        &nbsp;</p>
    <p style="font-size: large">
        &nbsp;</p>
    <p style="font-size: large">
        &nbsp;</p>
    <p style="font-size: large">
        &nbsp;</p>
</asp:Content>
