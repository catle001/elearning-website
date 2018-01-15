<%@ Page Title="" Language="C#" MasterPageFile="~/NestedMasterPage1.master" AutoEventWireup="true" CodeBehind="resultpage.aspx.cs" Inherits="FYP.resultpage" %>
<asp:Content ID="Content3" ContentPlaceHolderID="head" runat="server">
        <style>html { font-size: 14px; font-family: Arial, Helvetica, sans-serif; }</style>
    <link rel="stylesheet" href="https://kendo.cdn.telerik.com/2017.3.1026/styles/kendo.common-material.min.css" />
    <link rel="stylesheet" href="https://kendo.cdn.telerik.com/2017.3.1026/styles/kendo.material.min.css" />
    <link rel="stylesheet" href="https://kendo.cdn.telerik.com/2017.3.1026/styles/kendo.material.mobile.min.css" />

    <script src="https://kendo.cdn.telerik.com/2017.3.1026/js/jquery.min.js"></script>
    <script src="https://kendo.cdn.telerik.com/2017.3.1026/js/kendo.all.min.js"></script>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
                        <h4>PEER EVALUATION</h4>
            <ul class="nav nav-pills nav-stacked" runat="server">                
                <li  runat="server"><a href="overviewpeer.aspx" runat="server">Overview</a></li>
                <li  runat="server"><a href="PeerEditQuestions.aspx" runat="server">Edit Question</a></li>
                <li class="active" runat="server"><a href="resultpage.aspx" runat="server">Peer-assessment Result</a></li>
            </ul><br/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    
<div class="container body-content">
    <div class="jumbotron" style="margin-right:20px; padding:30px 30px 30px 30px">
    <p>Please select the student to view result:</p>
    <div class="row">
        
        <div class="col-md-4 form-group">
            Project:
            <asp:DropDownList ID="project" runat="server" AutoPostBack = "true" CssClass="form-control"
                OnSelectedIndexChanged="project_SelectedIndexChanged" Width="257px"/>
        </div>
        <div class="col-md-4 form-group">
            Group:
            <asp:DropDownList ID="group" runat="server" AutoPostBack = "true" CssClass="form-control"
                OnSelectedIndexChanged="group_SelectedIndexChanged" Width="257px" >
            </asp:DropDownList>
        </div>
        <div class="col-md-4 form-group">
            Student:
            <asp:DropDownList ID="student" runat="server" Width="257px" CssClass="form-control"
                OnSelectedIndexChanged="student_SelectedIndexChanged">
            </asp:DropDownList>
        </div>
    </div>
    <asp:Button ID="submit" CssClass="btn btn-primary" runat="server" OnClick="Button1_Click" Text="submit" />
    </div>
    <asp:Label ID="Label1" runat="server"></asp:Label>

    <div class="row">
        <div class="col-md-6"> 
            <div class="demo-section k-content">
                <div id="chart"></div>
            </div>
            <script>
                <asp:Literal id="litScript" runat="server" />
            </script>            
        </div>
        <div class="col-md-6">                
            <asp:GridView ID="GridView1" CssClass= "table table-striped table-hover" GridLines="None" runat="server"/>
        </div>
    </div>



</div>
</asp:Content>
