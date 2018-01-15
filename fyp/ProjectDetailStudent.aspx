<%@ Page Title="" Language="C#" MasterPageFile="~/Studentmaster.Master" AutoEventWireup="true" CodeBehind="ProjectDetailStudent.aspx.cs" Inherits="FYP.ProjectDetailStudent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
    <div class="row content">
        <div class="col-sm-2 sidenav">
                        <h4>Project
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                Details
            </h4>
            <ul class="nav nav-pills nav-stacked" runat="server">
                <li class="active" runat="server"><a href="Project.aspx" runat="server">Project List</a></li>
            </ul><br/>
        </div>

    <div class="col-sm-10">

        <br />

           

            <div class="row">
                <div class="col-sm-6">     
                    <p>Student list</p>   
                    <div style ="height:200px; overflow:auto;">
            <asp:GridView ID="AddGroupGridView" runat="server" CssClass= "table table-striped table-hover" GridLines="None"
                AutoGenerateColumns="false" style="width:100%;">
                <Columns>
                   

                    <asp:TemplateField HeaderText="Student Name">
                        <ItemTemplate>
                            <asp:Label ID="lblStudentName" runat="server" Text='<%#Eval("studentName")%>'>
                            </asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
                    </div>
                </div>
                
            </div>
            </div>
      
    </div>
    </div>
</div>
</asp:Content>

