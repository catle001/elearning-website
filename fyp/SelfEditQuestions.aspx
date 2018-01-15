<%@ Page Title="" Language="C#" MasterPageFile="~/NestedMasterPage1.Master" AutoEventWireup="true" CodeBehind="SelfEditQuestions.aspx.cs" Inherits="FYP.SelfEditQuestions" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
                        <h4>SELF ASSESSMENT</h4>
            <ul class="nav nav-pills nav-stacked" runat="server">                
                <li  runat="server"><a href="overviewpeer.aspx" runat="server">Overview</a></li>
                <li class="active" runat="server"><a href="SelfEditQuestions.aspx" runat="server">Edit Question</a></li>
                <li  runat="server"><a target="_blank" href="selfevaluationfor1c.aspx" runat="server">Self-assessment Quiz</a></li>
            </ul><br/>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
     <br />
     <span style="font-size: x-large"><strong>Self Evaluation Question</strong></span><br />
     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" DataKeyNames="QuestionID"
    OnRowDataBound="OnRowDataBound" OnRowEditing="OnRowEditing" CssClass= "table table-hover" GridLines="None"
    OnRowCancelingEdit="OnRowCancelingEdit"
    OnRowUpdating="OnRowUpdating" OnRowDeleting="OnRowDeleting" EmptyDataText="No records has been added." OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
    <Columns>
        <asp:TemplateField HeaderText="Question" ItemStyle-Width="150">
            <ItemTemplate>
                <asp:Label ID="lblName" runat="server" Text='<%# Eval("QuestionText") %>'></asp:Label>
            </ItemTemplate>
            <EditItemTemplate>
                <asp:TextBox ID="txtName" runat="server" Text='<%# Eval("QuestionText") %>'></asp:TextBox>
            </EditItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="Competency" ItemStyle-Width="150">
            <ItemTemplate>
                <asp:Label ID="lblCountry" runat="server" Text='<%# Eval("Competency") %>'></asp:Label>
            </ItemTemplate>
            <EditItemTemplate>
                <asp:DropDownList ID="ddlComp" runat="server" ></asp:DropDownList>
            </EditItemTemplate>
        </asp:TemplateField>

        <asp:CommandField ButtonType="Link" ShowEditButton="true" ShowDeleteButton="true" ItemStyle-Width="150"/>
    </Columns>
    </asp:GridView>
    <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse">
    <tr>
        <td style="width: 150px" align="center">
            <br />
        </td>
        <td style="width: 150px">
            Question:<br />
            <asp:TextBox ID="TextBox1" runat="server" Width="140" />
        </td>
        <td style="width: 150px">
            Competency:<br />
            <asp:DropDownList ID="DdlCompetency" runat="server" OnSelectedIndexChanged="DdlCompetency_SelectedIndexChanged">
            </asp:DropDownList>
        </td>
        <td class="auto-style1" style="width: 68px">
            <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="Insert" />
        </td>
         <td class="auto-style2" style="width: 200px">
             Last update time:
            <asp:Label ID="LastUpdateTime" runat="server" Text="Label"></asp:Label>
        </td>
        <td class="auto-style3" style="width: 150px">
            <asp:Button ID="BtnBack" runat="server" Text="Back" OnClick="BtnBack_Click" />
        </td>
    </tr>
    </table>
</asp:Content>
