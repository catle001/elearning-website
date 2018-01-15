<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="View.aspx.cs" Inherits="FYP.View" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
      <div class="row content">
          <div class="col-sm-2 sidenav">
            <h4 runat="server">COMMUNICATION</h4>
            <ul class="nav nav-pills nav-stacked" runat="server">
                <li class="active" runat="server"><a href="View.aspx" runat="server">Learning</a></li>
                
                <li runat="server"><a href="Upload.aspx" runat="server">Upload</a></li>
            </ul><br/>
            </div>
        <div class="col-sm-10">
            <div class="content">
                <br />
                <p>Completion Status</p>
                <div class="progress" runat="server">
                    <div class="progress progress-bar" id="progressbar" role="progressbar" 
                        style="width:70%" runat="server">
                        70%
                    </div>
                </div>
                <asp:Label Text="Content" runat="server" />
                <div class="panel-group">
                <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
                    <ItemTemplate>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <strong>   
                            <asp:Label ID="Label1" Font-Size="Medium" runat="server" 
                                Text='<%# Bind("topic") %>' />
                            </strong>
                        </div>
                          <div class="panel-body">
                            <div class="container">
                                <div class="row">
                                    <div class="col-sm-1">
                                        <asp:Image ID="Image1" height="50" width="50" runat="server" 
                                            ImageUrl='<%# Eval("ImageUrl") %>' />
                                    </div>
                                  
                                    <div class="col-sm-5">
                                        <asp:Label ID="Label2" runat="server" 
                                            Text='File:' />
                                        <asp:HyperLink id="hlnkTitle" Text='<%# Bind("name")%>' 
                                            NavigateUrl='<%# Eval("path") %>' runat="server"/>
                                        <br />                                        
                                     </div>
                                    <div class="col-sm-5">
                                        <asp:Button ID="Done" runat="server" Text="Mark as completed" CssClass="btn btn-default"
                                            CommandName="Click" CommandArgument='<%# Eval("isCompleted") %>'  />
                                        <br />
                                        <asp:Label ID="isCompletedid" runat="server" 
                                            Text='<%# Bind("isCompleted") %>' />
                                    </div>
                                </div>
                            </div>
                        </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
                </div>

            </div>
        </div>
        </div>
        </div>
</asp:Content>

