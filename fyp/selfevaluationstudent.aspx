<%@ Page Title="" Language="C#" MasterPageFile="~/NestedMasterPage2.master" AutoEventWireup="true" CodeBehind="selfevaluationstudent.aspx.cs" Inherits="FYP.selfevaluationstudent" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
                        <h4>SELF ASSESSMENT</h4>
            <ul class="nav nav-pills nav-stacked" runat="server">                
                <li class="active" runat="server"><a href="selfevaluationstudent.aspx" runat="server">Overview</a></li>
                <li  runat="server"><a target="_blank" href="selfevaluationfor1c.aspx" runat="server">Self-assessment Quiz</a></li>
            </ul><br/>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
        <h2>About</h2>
    <p>Self assessment is a platform in which students can evaluate themself after each project or learning modules. This can help student 
        understand their development progress.
    </p>
    <h2>Overview</h2>
    <p>
        Student will complete a series of question to determine his/her strength and weakness so that he can improve himself through 
        various projects activities
    </p>
</asp:Content>
