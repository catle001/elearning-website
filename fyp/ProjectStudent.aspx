<%@ Page Title="" Language="C#" MasterPageFile="~/Studentmaster.Master" AutoEventWireup="true" CodeBehind="ProjectStudent.aspx.cs" Inherits="FYP.ProjectStudent" %>
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
            <h4>List of Projects You Enrolled:</h4>
            <asp:GridView ID="GridView1" CssClass= "table table-striped table-hover" GridLines="None"
                runat="server" AutoGenerateColumns="false" style="width:100%;">
                    <Columns>
                           
                        <asp:BoundField DataField="ProjectID" HeaderText="Project ID" />                                    
                        
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
             
            </div>
        </div>
  </div>
        </div>
    </div>

</asp:Content>
