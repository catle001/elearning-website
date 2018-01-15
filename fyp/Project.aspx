<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Project.aspx.cs" Inherits="FYP.Project" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="container-fluid">
    <div class="row content">
        <div class="col-sm-2 sidenav">
             <h4>PROJECTS</h4>
            <ul class="nav nav-pills nav-stacked" runat="server">
                <li class="active" runat="server"><a href="Project.aspx" runat="server">Project List</a></li>
            </ul><br/>
        </div>

    <div class="col-sm-10">
        <div class="content">
            <div style="width:100%;">
            <h4>List of Projects</h4>
            <asp:GridView ID="GridView1" CssClass= "table table-striped table-hover" GridLines="None"
                runat="server" AutoGenerateColumns="false" style="width:100%;">
                    <Columns>
                        <asp:BoundField DataField="ProjectId" HeaderText="ID" />   
                        <asp:BoundField DataField="ProjectName" HeaderText="Project Name" />                                    
                        <asp:BoundField DataField="ProjectDescription" HeaderText="Description" />
                        <asp:TemplateField>
                          <ItemTemplate>
                              <asp:LinkButton ID="SubmitBtn" runat="server" CssClass="btn btn-sm btn-default"
                                  OnClick="MyButtonClick">Details</asp:LinkButton>
                          </ItemTemplate> 
                        </asp:TemplateField>

                    </Columns>
                <RowStyle CssClass="cursor-pointer" />
            </asp:GridView>
            <hr />
             <div class="form-group">
                <h4>Add New Project</h4>
                <asp:Label ID="Label1" runat="server" Text="Project name:"></asp:Label>
                <asp:TextBox ID="TopicTextBox" CssClass="form-control" runat="server"></asp:TextBox>
                <asp:Label ID="Label2" runat="server" Text="Description:"></asp:Label>
                <asp:TextBox ID="DescriptionTextBox" CssClass="form-control " runat="server" Height="67px"></asp:TextBox>
                <br />
                <asp:Button ID="Button1" CssClass="btn btn-primary" runat="server" OnClick="AddProjectBtn_Click" Text="Add Project" />
              </div>
            </div>
        </div>
  </div>
        </div>
    </div>

</asp:Content>
