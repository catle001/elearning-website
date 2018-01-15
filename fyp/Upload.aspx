<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Upload.aspx.cs" Inherits="FYP.Upload" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row content">
          <div class="col-sm-2 sidenav">
            <h4 runat="server">COMMUNICATION</h4>
            <ul class="nav nav-pills nav-stacked" runat="server">
                <li  runat="server"><a href="View.aspx" runat="server">Learning Material</a></li>
                <li class="active" runat="server"><a href="Upload.aspx" runat="server">Upload Files</a></li>
            </ul><br/>
            </div>
        <div class="col-sm-10">
            <div class="content">
        <div class="form-group">
            <h4>Add new content</h4>
            <asp:Label ID="Label1" runat="server" Text="Topic:"></asp:Label>
            <asp:TextBox ID="TopicTextBox" CssClass="form-control" runat="server"></asp:TextBox>
            <asp:Label ID="Label2" runat="server" Text="Description:"></asp:Label>
            <asp:TextBox ID="DescriptionTextBox" CssClass="form-control " runat="server" Height="67px"></asp:TextBox>
            <asp:Label ID="Label3" runat="server" Text="File:"></asp:Label>
            <asp:FileUpload ID="FileUpload1" runat="server"/>
            <br />
            <asp:Button ID="Button1" CssClass="btn btn-primary" runat="server" OnClick="Button1_Click" Text="Upload" />
        </div>
        <br />
        <div>
            <h4>UPLOADED FILES</h4>
            <div style="width:100%;">
            <asp:GridView ID="GridView1" CssClass= "table table-striped table-hover" GridLines="None"
                runat="server" AutoGenerateColumns="false" style="width:100%;">
                    <Columns>
                        <asp:BoundField DataField="topic" HeaderText="Topic" />

                        <asp:BoundField DataField="path" 
                            HtmlEncode="False"  
                            DataFormatString="<a target='_blank' href='{0}'>{0}</a>"
                            HeaderText="File" ReadOnly="True" SortExpression="url"/>
                                    
                        <asp:BoundField DataField="description" HeaderText="Description" />
                        <asp:BoundField DataField="date" HeaderText="Date Uploaded" />
                        <asp:TemplateField>
                          <ItemTemplate>
                              <asp:LinkButton ID="SubmitBtn" runat="server" CssClass="btn btn-sm btn-danger"
                                  OnClick="MyButtonClick">
                                  <i class="glyphicon glyphicon-remove"></i></asp:LinkButton>
                          </ItemTemplate> 
                        </asp:TemplateField>

                    </Columns>
                <RowStyle CssClass="cursor-pointer" />
            </asp:GridView>
            </div>
            <asp:Label ID="Label4" runat="server"></asp:Label>
            
        </div>
                </div>
            </div>
              </div>
        </div>
</asp:Content>
