<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ProjectDetail.aspx.cs" Inherits="FYP.ProjectDetail" %>


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

            <h4>DROP- MAKE LEADER</h4>     
            <div class="row">
                <div class="col-sm-6"> 
            <p>Choose a group</p>
            <asp:DropDownList ID="DropDownList1" CssClass="form-control" AutoPostBack = "true" 
                OnSelectedIndexChanged = "Country_Changed" runat="server"></asp:DropDownList>
            <asp:RadioButtonList ID="RadioButtonList" runat="server"></asp:RadioButtonList>
            <asp:Button ID="btnLeader"  CssClass="btn btn-primary" runat="server" Text="Make Leader" OnClick="MakeLeaderEventMethod" />
            <asp:Button ID="btnDrop"  CssClass="btn btn-primary" runat="server" Text="Drop"  OnClick="DropEventMethod"/>
                </div>
                <div class="col-sm-6">hello</div>
            </div>

            <hr />
                    <h4>ADD NEW STUDENT</h4>

            <div class="row">
                <div class="col-sm-6">     
                    <p>student list</p>   
                    <div style ="height:200px; overflow:auto;">
            <asp:GridView ID="AddGroupGridView" runat="server" CssClass= "table table-striped table-hover" GridLines="None"
                AutoGenerateColumns="false" style="width:100%;">
                <Columns>
                    <asp:TemplateField>
                        <HeaderTemplate>
                        <asp:CheckBox ID="chkCheckAll" runat="server" onclick="javascript:SelectAllCheckboxes(this)"/>
                        </HeaderTemplate>
                        <ItemTemplate> 
                        <asp:CheckBox ID="chkCheck" runat="server" onclick="javascript:Checkboxes(this)"/>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Student Name">
                        <ItemTemplate>
                            <asp:Label ID="lblStudentName" runat="server" Text='<%#Eval("student_name")%>'>
                            </asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
                    </div>
                </div>
                <div class="col-sm-6">
            <p>Please key in Group Name: </p>
            <asp:TextBox ID="txtgroupname" CssClass="form-control" runat="server"></asp:TextBox>
            <asp:Button ID="btnAdd" CssClass="btn btn-primary" runat="server" Text="Add" OnClick="AddGroupEventMethod" /> 
            <hr />
            <asp:Button CssClass="btn btn-warning" ID="Button3" runat="server" OnClick="Send_Email" 
                Text="Send Notification Email" />
                </div>
            </div>
            </div>
      
    </div>
    </div>
</div>
</asp:Content>
