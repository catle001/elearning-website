<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="peerevaluationcomments.aspx.cs" Inherits="FYP.peerevaluationcomments" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Peer Evaluation Survey</title>
<style>
    .container {
        width: 680px;
        margin: 0 auto;
        padding: 5px 15px;
        border: 1px solid #808080;
        background: #fff;
    }

    .style1 {

         margin: 0 auto;
         padding: 5px 15px;
         border: 1px solid #808080;
         background: #fff;
         margin:0 auto;
         width:1200px;
        
     }

    .style2 {
        margin:0 auto;
        padding: 5px 15px;
        border: 1px solid #808080;
        background: #fff;
        margin:0 auto;

    }

    .box {
        border: 3px solid #aaa; /*getting border*/
        border-radius: 1px; /*rounded border*/
        color: #000; /*text color*/
        width: 780px;
        height: 200px;
    }

    .rblhorizontal {
        display:inline;
        margin-right:200px;
        direction:rtl;
        text-align:right;     
    }

    .verticalLine {
        border-left: medium solid black;
    }

    .nav{
        margin:0px;
        padding:0px;
        list-style-type:none;
        text-align:center;
    }

    .nav li{
        display:inline-block;
    }

    .nav a{
        color: #fff;
        display:inline-block;
        padding: 0.5em 0.75em;
        background-color: #666;
        border-radius: 4px;
        text-decoration:none;
    }
    
    .nav a:hover{
        background-color:#000;
    }

    .nav .current{
        background-color: green;
        width:150px;
    }

    .nav .all{
        width:150px;
    }

    .textarea{
        display:block;
        margin-left:auto;
        margin-right:auto;
    }
</style>
<meta name="generator" content="ASP Express 4.5" />

</head>

<body>
    <img src="ntu_logo.png" /><br /><hr />
    <form id="form1" runat="server">
        <div style="width:100px; float:left; background:#b6ff00">
        </div>

            <p><font color="black" font size="5"><u>Peer Evaluation Survey</u></font></p>
            <asp:Label ID="Labelcheck"  Text="" runat="server" ></asp:Label>


            <p style="font-size:20px">Comments</p>
            <br />
            You are : Student <asp:Label ID="svr" Text="" runat="server"></asp:Label>
            <br />
            <br />
            This page is to allow students to evaluate and give feedback of other team members. Take 10 minutes to complete this peer evaluation.
            <hr />
        <header>
                <nav>
                <ul class ="nav">
                    <li><a class="all"><asp:Label ID="clabel1" Text="" runat="server" ></asp:Label></a></li>
                    <li><a class="all"><asp:Label ID="clabel2" Text="" runat="server" ></asp:Label></a></li>
                    <li><a class="all"><asp:Label ID="clabel3" Text="" runat="server" ></asp:Label></a></li>
                    <li><a class="all"><asp:Label ID="clabel4" Text="" runat="server" ></asp:Label></a></li>
                    <li><a class="all"><asp:Label ID="clabel5" Text="" runat="server" ></asp:Label></a></li>
                    <li><a class="current">Comments</a></li>
                </ul>
            </nav></header>
            <hr />
            <div class="style1">
            <div><asp:Panel runat="server" ID="Panel1">

                <div class="textarea">
                    <asp:Label ID="name1" Text="" runat="server" BackColor="Yellow"></asp:Label>: 
                    <br />
                    <asp:TextBox ID="comment1" Text="" runat="server" lines="100" columns="150" rows="3" TextMode="MultiLine" onkeydown="textCounter(this.form.comment1,this.form.txtLeng1,100)" 
                    onkeyup="textCounter(this.form.comment1,this.form.txtLeng1,100)"></asp:TextBox><br />
                    Characters Left:<asp:TextBox BackColor="White" BorderStyle="None" Width="30" ForeColor="Black" Font-Bold="true" ID="txtLeng1" runat="server" Text="100"></asp:TextBox>

            
                    <script lang="javascript" type="text/javascript">
                    function textCounter(field, countfield, maxlimit) {
                    if (field.value.length > maxlimit) {
                        field.value = field.value.substring(0, maxlimit);
                    }
                    else {
                        countfield.value = maxlimit - field.value.length;
                    }
                }
                </script>
            </div>
            </asp:Panel>
            </div>
            </div>            
            <br />
            <br />
            <hr>
            <br />
            <br />
            <asp:Panel runat="server" ID="Panel2">
            <div class="style1">


                 <div class="textarea">
                    <asp:Label ID="name2" Text="" runat="server" BackColor="Yellow"></asp:Label>:<br />
                    <asp:TextBox ID="comment2" Text="" runat="server" lines="100" columns="150" rows="3" TextMode="MultiLine" onkeydown="textCounter(this.form.comment2,this.form.txtLeng2,100)" 
                    onkeyup="textCounter(this.form.comment2,this.form.txtLeng2,100)"></asp:TextBox><br />
                    Characters Left:<asp:TextBox BackColor="White" BorderStyle="None" Width="30" ForeColor="Black" Font-Bold="true" ID="txtLeng2" runat="server" Text="100"></asp:TextBox>

            
                    <script lang="javascript" type="text/javascript">
                        function textCounter(field, countfield, maxlimit) {
                            if (field.value.length > maxlimit) {
                                field.value = field.value.substring(0, maxlimit);
                            }
                            else {
                                countfield.value = maxlimit - field.value.length;
                            }
                        }
                </script>
            </div>
            </asp:Panel>
            </div>
            </div>            
            <br />
            <br />
            <hr />
            <br />
            <br />
            <br /><asp:Panel runat="server" ID="Panel3">
            <div class="style1">

                <div class="textarea">
                    <asp:Label ID="name3" Text="" runat="server" BackColor="Yellow"></asp:Label>:<br />
                    <asp:TextBox ID="comment3" Text="" runat="server" lines="100" columns="150" rows="3" TextMode="MultiLine" onkeydown="textCounter(this.form.comment3,this.form.txtLeng3,100)" 
                    onkeyup="textCounter(this.form.comment3,this.form.txtLeng3,100)"></asp:TextBox><br />
                    Characters Left:<asp:TextBox BackColor="White" BorderStyle="None" Width="30" ForeColor="Black" Font-Bold="true" ID="txtLeng3" runat="server" Text="100"></asp:TextBox>

            
                    <script lang="javascript" type="text/javascript">
                        function textCounter(field, countfield, maxlimit) {
                            if (field.value.length > maxlimit) {
                                field.value = field.value.substring(0, maxlimit);
                            }
                            else {
                                countfield.value = maxlimit - field.value.length;
                            }
                        }
                </script>
            </div>
            </div>
            </asp:Panel>
            </div>
            </div>            
            <br />
            <br />
            <hr>
            <br />
            <br />
            <br /><asp:Panel runat="server" ID="Panel4">
            <div class="style1">

                 <div class="textarea">
                    <asp:Label ID="name4" Text="" runat="server" BackColor="Yellow"></asp:Label>:<br />
                    <asp:TextBox ID="comment4" Text="" runat="server" lines="100" columns="150" rows="3" TextMode="MultiLine" onkeydown="textCounter(this.form.comment4,this.form.txtLeng4,100)" 
                    onkeyup="textCounter(this.form.comment4,this.form.txtLeng4,100)"></asp:TextBox><br />
                    Characters Left:<asp:TextBox BackColor="White" BorderStyle="None" Width="30" ForeColor="Black" Font-Bold="true" ID="txtLeng4" runat="server" Text="100"></asp:TextBox>

            
                    <script lang="javascript" type="text/javascript">
                        function textCounter(field, countfield, maxlimit) {
                            if (field.value.length > maxlimit) {
                                field.value = field.value.substring(0, maxlimit);
                            }
                            else {
                                countfield.value = maxlimit - field.value.length;
                            }
                        }
                </script>
            </div>
            </div>
            </asp:Panel>
            </div>
            </div>            
            <br />
            <br />
            <hr>
            <br />
            <br />
            <asp:Panel runat="server" ID="Panel5">
            <div class="style1">

                 <div class="textarea">
                    <asp:Label ID="name5" Text="" runat="server" BackColor="Yellow"></asp:Label>:<br />
                    <asp:TextBox ID="comment5" Text="" runat="server" lines="100" columns="150" rows="3" TextMode="MultiLine" onkeydown="textCounter(this.form.comment5,this.form.txtLeng5,100)" 
                    onkeyup="textCounter(this.form.comment5,this.form.txtLeng5,100)"></asp:TextBox><br />
                    Characters Left:<asp:TextBox BackColor="White" BorderStyle="None" Width="30" ForeColor="Black" Font-Bold="true" ID="txtLeng5" runat="server" Text="100"></asp:TextBox>

            
                    <script lang="javascript" type="text/javascript">
                        function textCounter(field, countfield, maxlimit) {
                            if (field.value.length > maxlimit) {
                                field.value = field.value.substring(0, maxlimit);
                            }
                            else {
                                countfield.value = maxlimit - field.value.length;
                            }
                        }
                </script>
            </div>
            </asp:Panel>
            </div>
            </div>            
            <br />
            <br />
            <hr>
            <br />
            <br />
            <script lang="javascript" type="text/javascript">
                function textCounter(field, countfield, maxlimit) {
                    if (field.value.length > maxlimit) {
                        field.value = field.value.substring(0, maxlimit);
                    }
                    else {
                        countfield.value = maxlimit - field.value.length;
                    }
                }

            </script>
            <br />
            <div align = "right">        
            <asp:Button ID="Button2" type="submit" runat="server" Text="Submit" Width="121px" OnClick="submitRadioMethod" UseSubmitBehavior="false" OnClientClick="doSubmit(this)"/>
                <script type ="text/javascript">
                    function doSubmit(Button2) {
                        if (typeof (Page_ClientValidate) == 'function' && Page_ClientValidate() == false) {
                            return false;
                        }
                        Button2.disabled = 'disabled';
                        Button2.value = 'Submitting';
                        <%= ClientScript.GetPostBackEventReference(Button2, string.Empty) %>;
                    }

                </script>
            </div>
            <div align = "right">
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type ="button" onclick="parent.location='peerresult.aspx'" value ="Results" /></div>
    </form>
</body>
</html>
