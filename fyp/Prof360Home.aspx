<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Prof360Home.aspx.cs" Inherits="FYP.Prof360Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table style="width: 100%; height: 66px;">
        <tr>
            <td style="width: 300px; height: 22px">
                &nbsp;</td>
            <td style="width: 300px; height: 22px">&nbsp;</td>
            <td style="width: 300px; height: 22px">&nbsp;</td>
            <td style="height: 22px" align="right">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 300px; height: 22px">
                <strong style="font-size: small">
                Welcome,
                <asp:Label ID="lblUsername" runat="server" Text="Username" Font-Size="Small"></asp:Label>
                </strong>
            </td>
            <td style="width: 300px; height: 22px">&nbsp;</td>
            <td style="width: 300px; height: 22px">&nbsp;</td>
            <td style="height: 22px" align="right">
                <strong>
                <asp:LinkButton ID="btnAccount" runat="server" Text="Account Settings" Font-Size="Small" ForeColor="Black" style="margin-right: 40px"></asp:LinkButton>
                <asp:LinkButton ID="btnSignout" runat="server" Text="Sign Out" Font-Size="Small" ForeColor="Black" style="margin-right: 20px"></asp:LinkButton>   
                </strong>
            </td>
        </tr>
        <tr>
            <td style="width: 300px; height: 22px">&nbsp;</td>
            <td style="width: 300px; height: 22px">&nbsp;</td>
            <td style="width: 300px; height: 22px">&nbsp;</td>
            <td style="width: 300px; height: 22px">&nbsp;</td>
        </tr>
        <tr>
             <td style="width: 300px; height: 22px">&nbsp;</td>
             <td style="width: 300px; height: 22px">&nbsp;</td>
             <td style="width: 300px; height: 22px">&nbsp;</td>
             <td style="width: 300px; height: 22px">&nbsp;</td>
        </tr>
        <tr>
           <td style="width: 300px; height: 22px"></td>
           <td style="width: 300px; height: 22px"></td>
           <td style="width: 300px; height: 22px"></td>
           <td style="width: 300px; height: 22px"></td>
        </tr>
        <tr>
            <td style="width: 300px; height: 23px">
                <asp:LinkButton ID="LBself" runat="server" OnClick="LBself_Click">Self Assessment editing</asp:LinkButton>
            </td>
            <td style="width: 300px; height: 23px">
                <asp:LinkButton ID="lbSelfResult" runat="server">View Self Assessment Result</asp:LinkButton>
            </td>
            <td style="width: 300px; height: 23px"></td>
            <td style="width: 300px; height: 23px"></td>
        </tr>
        <tr>
            <td style="width: 300px; height: 22px">&nbsp;</td>
            <td style="width: 300px; height: 22px">&nbsp;</td>
            <td style="width: 300px; height: 22px"></td>
            <td style="width: 300px; height: 22px"></td>
        </tr>
        <tr>
            <td style="width: 300px; height: 22px">
                <asp:LinkButton ID="LBpeer" runat="server" OnClick="LBpeer_Click">Peer evaluation editing</asp:LinkButton>
            </td>
            <td style="width: 300px; height: 22px">
                <asp:LinkButton ID="LBPeerResult" runat="server">View Peer Evaluation Result</asp:LinkButton>
            </td>
            <td style="width: 300px; height: 22px"></td>
            <td style="width: 300px; height: 22px"></td>
        </tr>
        <tr>
            <td style="width: 300px; height: 22px">&nbsp;</td>
            <td style="width: 300px; height: 22px">&nbsp;</td>
            <td style="width: 300px; height: 22px">&nbsp;</td>
            <td style="width: 300px; height: 22px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 300px; height: 22px">&nbsp;</td>
            <td style="width: 300px; height: 22px">&nbsp;</td>
            <td style="width: 300px; height: 22px">&nbsp;</td>
            <td style="width: 300px; height: 22px">&nbsp;</td>
        </tr>
    </table>
     
</asp:Content>
