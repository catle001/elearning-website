<%@ Page Title="" Language="C#" MasterPageFile="~/NestedMasterPage1.master" AutoEventWireup="true" CodeBehind="overviewself.aspx.cs" Inherits="FYP.overviewself" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
                        <h4>SELF ASSESSMENT</h4>
            <ul class="nav nav-pills nav-stacked" runat="server">                
                <li class="active" runat="server"><a href="overviewpeer.aspx" runat="server">Overview</a></li>
                <li  runat="server"><a href="SelfEditQuestions.aspx" runat="server">Edit Question</a></li>
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
