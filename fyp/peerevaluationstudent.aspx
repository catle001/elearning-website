<%@ Page Title="" Language="C#" MasterPageFile="~/NestedMasterPage2.master" AutoEventWireup="true" CodeBehind="peerevaluationstudent.aspx.cs" Inherits="FYP.peerevaluationstudent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
                    <h4>PEER EVALUATION</h4>
            <ul class="nav nav-pills nav-stacked" runat="server">                
                <li class="active" runat="server"><a href="peerevaluationstudent.aspx" runat="server">Overview</a></li>
                <li  runat="server"><a href="resultpagestudent.aspx" runat="server">Peer-assessment Result</a></li>
            </ul><br/>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <h2>About</h2>
    <p>Peer evaluation (360 degree evaluation) is a platform in which students can evaluate and give feedback for each other 
        to have a objective understanding of themself.
    </p>
    <h2>Objective</h2>
    <p>Peer-evaluation remains one of the most effective ways for someone to know which areas need improving, so that they 
        may contribute more in the upcoming projects. This is because students will be working with each other for long periods 
        of time up until the completion of the project, which is more than enough time to know each other’s strengths and 
        weaknesses. This allows for better communication between group members, and reduces the risk of being offended by 
        other members if they were to communicate each other’s weaknesses face to face.The evaluation results are shown 
        anonymously as the identity of students who make comments will be kept strictly confidential, so that students 
        can provide most accurate and objective feedback.</p>
</asp:Content>