<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddCompetency.aspx.cs" Inherits="FYP.AddCompetency" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" 
OnRowEditing="OnRowEditing" OnRowCancelingEdit="OnRowCancelingEdit"
OnRowUpdating="OnRowUpdating" OnRowDeleting="OnRowDeleting" EmptyDataText="No records has been added."
        CellPadding="4" ForeColor="#333333" GridLines="None" ShowFooter="True" Width="725px">
        
        <Columns>
            <asp:TemplateField HeaderText="SNo" ItemStyle-Width="30">
             <ItemTemplate>
                <span><%#Container.DataItemIndex + 1%></span>
            </ItemTemplate>
            </asp:TemplateField>
    <asp:TemplateField HeaderText="Competency" ItemStyle-Width="150">
        <ItemTemplate>
            <asp:Label ID="lblCompetency" runat="server" Text='<%# Eval("Competency") %>'></asp:Label>
        </ItemTemplate>
        <EditItemTemplate>
            <asp:TextBox ID="txtCompetency" runat="server" Text='<%# Eval("Competency") %>'></asp:TextBox>
        </EditItemTemplate>
    </asp:TemplateField>
    <asp:CommandField ButtonType="Link" ShowEditButton="true" ShowDeleteButton="true" ItemStyle-Width="150"/>
</Columns>
</asp:GridView>
<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse">
<tr>
    <td style="width: 30px">
        <br />
        <br />
    </td>
    <td style="width: 218px">
        New competency name:<br />
        <asp:TextBox ID="txtCompetency" runat="server" Width="182px" style="margin-right: 31" />
    </td>
    <td style="width: 96px">
        &nbsp;
        <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="Insert" style="height: 26px" />
    </td>
</tr>
</table>
        
       

</asp:Content>
