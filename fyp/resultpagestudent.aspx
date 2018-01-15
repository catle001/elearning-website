<%@ Page Title="" Language="C#" MasterPageFile="~/NestedMasterPage2.master" AutoEventWireup="true" CodeBehind="resultpagestudent.aspx.cs" Inherits="FYP.resultpagestudent" %>
<asp:Content ID="Content3" ContentPlaceHolderID="head" runat="server">
        <style>html { font-size: 14px; font-family: Arial, Helvetica, sans-serif; }
            .auto-style1 {
                width: 234px;
            }
        </style>
    <link rel="stylesheet" href="https://kendo.cdn.telerik.com/2017.3.1026/styles/kendo.common-material.min.css" />
    <link rel="stylesheet" href="https://kendo.cdn.telerik.com/2017.3.1026/styles/kendo.material.min.css" />
    <link rel="stylesheet" href="https://kendo.cdn.telerik.com/2017.3.1026/styles/kendo.material.mobile.min.css" />

    <script src="https://kendo.cdn.telerik.com/2017.3.1026/js/jquery.min.js"></script>
    <script src="https://kendo.cdn.telerik.com/2017.3.1026/js/kendo.all.min.js"></script>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
                        <h4>PEER EVALUATION</h4>
            <ul class="nav nav-pills nav-stacked" runat="server">                
                <li  runat="server"><a href="peerevaluationstudent.aspx" runat="server">Overview</a></li>
                <li class="active" runat="server"><a href="resultpagestudent.aspx" runat="server">Peer-assessment Result</a></li>
            </ul><br/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    
<div class="container body-content">
    <div class="jumbotron" style="margin-right:20px; padding:30px 30px 30px 30px">
    <p class="auto-style1">You are student:  <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
&nbsp;</p>

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
