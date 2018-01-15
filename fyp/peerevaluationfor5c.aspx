<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="peerevaluationfor5c.aspx.cs" Inherits="FYP.peerevaluationfor5c" %>

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


            <p style="font-size:20px"><asp:Label ID="clabel6" Text="" runat="server" backcolor="chartreuse"></asp:Label></p>
            <br />
            You are : Student <asp:Label ID="svr" Text="" runat="server">A</asp:Label>

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
                    <li><a class="current"><asp:Label ID="clabel5" Text="" runat="server" ></asp:Label></a></li>
                    <li><a class="all">Comments</a></li>
                </ul>
            </nav></header>
        <hr />
            <div class="style1">
            <asp:Panel runat="server" ID="q1panel"><div>
            <br />
            Question 1:<asp:Label ID="q1label" Text="" runat="server"></asp:Label>
            <br />            
            <br />
            <br />        
            <hr />
            <p align="center">Strongly Agree<span style="font-family:'Times New Roman';">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>Agree<span style="font-family:'Times New Roman';">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>Neutral<span style="font-family:'Times New Roman';">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>Disagree<span style="font-family:'Times New Roman';">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>Strongly Disagree</p>
            <hr />

                <asp:Panel runat="server" ID="Panel1"><asp:Label runat="server" Text="" ID="Label1"></asp:Label> :<center><asp:RadioButtonList ID="RadioButtonList1" runat="server" CssClass="rblhorizontal" RepeatColumns  ="5" RepeatLayout="Flow" RepeatDirection="Horizontal" TextAlign="Right">
                    <asp:ListItem Text="" Value="5" style="margin-left:180px"></asp:ListItem> 
                    <asp:ListItem Text="" Value="4" style="margin-left:90px"></asp:ListItem>
                    <asp:ListItem Text="" Value="3" style="margin-left:90px"></asp:ListItem>
                    <asp:ListItem Text="" Value="2" style="margin-left:90px"></asp:ListItem>
                    <asp:ListItem Text="" Value="1" style="margin-left:90px"></asp:ListItem>
                    </asp:RadioButtonList></center>

            <hr /></asp:Panel>
                <asp:Panel runat="server" ID="Panel2"><asp:Label runat="server" Text="" ID="Label2"></asp:Label>:<center><asp:RadioButtonList ID="RadioButtonList2" runat="server" CssClass="rblhorizontal" RepeatColumns="5" RepeatLayout="Flow" RepeatDirection="Horizontal">
                    <asp:ListItem Text="" Value="5" style="margin-left:180px"></asp:ListItem> 
                    <asp:ListItem Text="" Value="4" style="margin-left:90px"></asp:ListItem>
                    <asp:ListItem Text="" Value="3" style="margin-left:90px"></asp:ListItem>
                    <asp:ListItem Text="" Value="2" style="margin-left:90px"></asp:ListItem>
                    <asp:ListItem Text="" Value="1" style="margin-left:90px"></asp:ListItem>
                    </asp:RadioButtonList></center>
            <hr /></asp:Panel>
                <asp:Panel runat="server" ID="Panel3"><asp:Label runat="server" Text="" ID="Label3"></asp:Label>:<center><asp:RadioButtonList ID="RadioButtonList3" runat="server" CssClass="rblhorizontal" RepeatColumns="5" RepeatLayout="Flow" RepeatDirection="Horizontal">
                    <asp:ListItem Text="" Value="5" style="margin-left:180px"></asp:ListItem> 
                    <asp:ListItem Text="" Value="4" style="margin-left:90px"></asp:ListItem>
                    <asp:ListItem Text="" Value="3" style="margin-left:90px"></asp:ListItem>
                    <asp:ListItem Text="" Value="2" style="margin-left:90px"></asp:ListItem>
                    <asp:ListItem Text="" Value="1" style="margin-left:90px"></asp:ListItem>
                    </asp:RadioButtonList></center>
            <hr /></asp:Panel>
                <asp:Panel runat="server" ID="Panel4"><asp:Label runat="server" Text="" ID="Label4"></asp:Label>:<center><asp:RadioButtonList ID="RadioButtonList4" runat="server" CssClass="rblhorizontal" RepeatColumns="5" RepeatLayout="Flow" RepeatDirection="Horizontal">
                    <asp:ListItem Text="" Value="5" style="margin-left:180px"></asp:ListItem> 
                    <asp:ListItem Text="" Value="4" style="margin-left:90px"></asp:ListItem>
                    <asp:ListItem Text="" Value="3" style="margin-left:90px"></asp:ListItem>
                    <asp:ListItem Text="" Value="2" style="margin-left:90px"></asp:ListItem>
                    <asp:ListItem Text="" Value="1" style="margin-left:90px"></asp:ListItem>
                    </asp:RadioButtonList></center>
            <hr /></asp:Panel>
                <asp:Panel runat="server" ID="Panel5"><asp:Label runat="server" Text="" ID="Label5"></asp:Label>:<center><asp:RadioButtonList ID="RadioButtonList5" runat="server" CssClass="rblhorizontal" RepeatColumns="5" RepeatLayout="Flow" RepeatDirection="Horizontal">
                    <asp:ListItem Text="" Value="5" style="margin-left:180px"></asp:ListItem> 
                    <asp:ListItem Text="" Value="4" style="margin-left:90px"></asp:ListItem>
                    <asp:ListItem Text="" Value="3" style="margin-left:90px"></asp:ListItem>
                    <asp:ListItem Text="" Value="2" style="margin-left:90px"></asp:ListItem>
                    <asp:ListItem Text="" Value="1" style="margin-left:90px"></asp:ListItem>
                    </asp:RadioButtonList></center>
            <hr /></asp:Panel>
            </div>
                     
            <br />
            <br />
            <br />
            <br />
            
            <br />
            <br />
            <br />
            <br /></asp:Panel><asp:Panel runat="server" ID="q2panel">
            <div >
            Question 2: <asp:Label ID="q2label" Text="" runat="server"></asp:Label>
            <br />            
            <br />
            <br />
            <hr />

                <asp:Panel runat="server" ID="Panel6"><asp:Label runat="server" Text="" ID="Label6"></asp:Label> :<center><asp:RadioButtonList ID="RadioButtonList6" runat="server" CssClass="rblhorizontal" RepeatColumns  ="5" RepeatLayout="Flow" RepeatDirection="Horizontal" TextAlign="Right">
                    <asp:ListItem Text="" Value="5" style="margin-left:180px"></asp:ListItem> 
                    <asp:ListItem Text="" Value="4" style="margin-left:90px"></asp:ListItem>
                    <asp:ListItem Text="" Value="3" style="margin-left:90px"></asp:ListItem>
                    <asp:ListItem Text="" Value="2" style="margin-left:90px"></asp:ListItem>
                    <asp:ListItem Text="" Value="1" style="margin-left:90px"></asp:ListItem>
                    </asp:RadioButtonList></center>

            <hr /></asp:Panel>
                <asp:Panel runat="server" ID="Panel7"><asp:Label runat="server" Text="" ID="Label7"></asp:Label>:<center><asp:RadioButtonList ID="RadioButtonList7" runat="server" CssClass="rblhorizontal" RepeatColumns="5" RepeatLayout="Flow" RepeatDirection="Horizontal">
                    <asp:ListItem Text="" Value="5" style="margin-left:180px"></asp:ListItem> 
                    <asp:ListItem Text="" Value="4" style="margin-left:90px"></asp:ListItem>
                    <asp:ListItem Text="" Value="3" style="margin-left:90px"></asp:ListItem>
                    <asp:ListItem Text="" Value="2" style="margin-left:90px"></asp:ListItem>
                    <asp:ListItem Text="" Value="1" style="margin-left:90px"></asp:ListItem>
                    </asp:RadioButtonList></center>
            <hr /></asp:Panel>
                <asp:Panel runat="server" ID="Panel8"><asp:Label runat="server" Text="" ID="Label8"></asp:Label>:<center><asp:RadioButtonList ID="RadioButtonList8" runat="server" CssClass="rblhorizontal" RepeatColumns="5" RepeatLayout="Flow" RepeatDirection="Horizontal">
                    <asp:ListItem Text="" Value="5" style="margin-left:180px"></asp:ListItem> 
                    <asp:ListItem Text="" Value="4" style="margin-left:90px"></asp:ListItem>
                    <asp:ListItem Text="" Value="3" style="margin-left:90px"></asp:ListItem>
                    <asp:ListItem Text="" Value="2" style="margin-left:90px"></asp:ListItem>
                    <asp:ListItem Text="" Value="1" style="margin-left:90px"></asp:ListItem>
                    </asp:RadioButtonList></center>
            <hr /></asp:Panel>
                <asp:Panel runat="server" ID="Panel9"><asp:Label runat="server" Text="" ID="Label9"></asp:Label>:<center><asp:RadioButtonList ID="RadioButtonList9" runat="server" CssClass="rblhorizontal" RepeatColumns="5" RepeatLayout="Flow" RepeatDirection="Horizontal">
                    <asp:ListItem Text="" Value="5" style="margin-left:180px"></asp:ListItem> 
                    <asp:ListItem Text="" Value="4" style="margin-left:90px"></asp:ListItem>
                    <asp:ListItem Text="" Value="3" style="margin-left:90px"></asp:ListItem>
                    <asp:ListItem Text="" Value="2" style="margin-left:90px"></asp:ListItem>
                    <asp:ListItem Text="" Value="1" style="margin-left:90px"></asp:ListItem>
                    </asp:RadioButtonList></center>
            <hr /></asp:Panel>
                <asp:Panel runat="server" ID="Panel10"><asp:Label runat="server" Text="" ID="Label10"></asp:Label>:<center><asp:RadioButtonList ID="RadioButtonList10" runat="server" CssClass="rblhorizontal" RepeatColumns="5" RepeatLayout="Flow" RepeatDirection="Horizontal">
                    <asp:ListItem Text="" Value="5" style="margin-left:180px"></asp:ListItem> 
                    <asp:ListItem Text="" Value="4" style="margin-left:90px"></asp:ListItem>
                    <asp:ListItem Text="" Value="3" style="margin-left:90px"></asp:ListItem>
                    <asp:ListItem Text="" Value="2" style="margin-left:90px"></asp:ListItem>
                    <asp:ListItem Text="" Value="1" style="margin-left:90px"></asp:ListItem>
                    </asp:RadioButtonList></center>
            <hr /></asp:Panel>
            </div>
            
                     
            <br />
            <br />
            <br />
            <br />
            
            <br />
            <br />
            <br />
            <br /></asp:Panel><asp:Panel runat="server" ID="q3panel">
            <div>
            Question 3: <asp:Label ID = "q3label" Text="" runat="server"></asp:Label>
            <br />           
            <br />
            <br />
            
                <hr />

                <asp:Panel runat="server" ID="Panel11"><asp:Label runat="server" Text="" ID="Label11"></asp:Label> :<center><asp:RadioButtonList ID="RadioButtonList11" runat="server" CssClass="rblhorizontal" RepeatColumns  ="5" RepeatLayout="Flow" RepeatDirection="Horizontal" TextAlign="Right">
                    <asp:ListItem Text="" Value="5" style="margin-left:180px"></asp:ListItem> 
                    <asp:ListItem Text="" Value="4" style="margin-left:90px"></asp:ListItem>
                    <asp:ListItem Text="" Value="3" style="margin-left:90px"></asp:ListItem>
                    <asp:ListItem Text="" Value="2" style="margin-left:90px"></asp:ListItem>
                    <asp:ListItem Text="" Value="1" style="margin-left:90px"></asp:ListItem>
                    </asp:RadioButtonList></center>

            <hr /></asp:Panel>
                <asp:Panel runat="server" ID="Panel12"><asp:Label runat="server" Text="" ID="Label12"></asp:Label>:<center><asp:RadioButtonList ID="RadioButtonList12" runat="server" CssClass="rblhorizontal" RepeatColumns="5" RepeatLayout="Flow" RepeatDirection="Horizontal">
                    <asp:ListItem Text="" Value="5" style="margin-left:180px"></asp:ListItem> 
                    <asp:ListItem Text="" Value="4" style="margin-left:90px"></asp:ListItem>
                    <asp:ListItem Text="" Value="3" style="margin-left:90px"></asp:ListItem>
                    <asp:ListItem Text="" Value="2" style="margin-left:90px"></asp:ListItem>
                    <asp:ListItem Text="" Value="1" style="margin-left:90px"></asp:ListItem>
                    </asp:RadioButtonList></center>
            <hr /></asp:Panel>
                <asp:Panel runat="server" ID="Panel13"><asp:Label runat="server" Text="" ID="Label13"></asp:Label>:<center><asp:RadioButtonList ID="RadioButtonList13" runat="server" CssClass="rblhorizontal" RepeatColumns="5" RepeatLayout="Flow" RepeatDirection="Horizontal">
                    <asp:ListItem Text="" Value="5" style="margin-left:180px"></asp:ListItem> 
                    <asp:ListItem Text="" Value="4" style="margin-left:90px"></asp:ListItem>
                    <asp:ListItem Text="" Value="3" style="margin-left:90px"></asp:ListItem>
                    <asp:ListItem Text="" Value="2" style="margin-left:90px"></asp:ListItem>
                    <asp:ListItem Text="" Value="1" style="margin-left:90px"></asp:ListItem>
                    </asp:RadioButtonList></center>
            <hr /></asp:Panel>
                <asp:Panel runat="server" ID="Panel14"><asp:Label runat="server" Text="" ID="Label14"></asp:Label>:<center><asp:RadioButtonList ID="RadioButtonList14" runat="server" CssClass="rblhorizontal" RepeatColumns="5" RepeatLayout="Flow" RepeatDirection="Horizontal">
                    <asp:ListItem Text="" Value="5" style="margin-left:180px"></asp:ListItem> 
                    <asp:ListItem Text="" Value="4" style="margin-left:90px"></asp:ListItem>
                    <asp:ListItem Text="" Value="3" style="margin-left:90px"></asp:ListItem>
                    <asp:ListItem Text="" Value="2" style="margin-left:90px"></asp:ListItem>
                    <asp:ListItem Text="" Value="1" style="margin-left:90px"></asp:ListItem>
                    </asp:RadioButtonList></center>
            <hr /></asp:Panel>
                <asp:Panel runat="server" ID="Panel15"><asp:Label runat="server" Text="" ID="Label15"></asp:Label>:<center><asp:RadioButtonList ID="RadioButtonList15" runat="server" CssClass="rblhorizontal" RepeatColumns="5" RepeatLayout="Flow" RepeatDirection="Horizontal">
                    <asp:ListItem Text="" Value="5" style="margin-left:180px"></asp:ListItem> 
                    <asp:ListItem Text="" Value="4" style="margin-left:90px"></asp:ListItem>
                    <asp:ListItem Text="" Value="3" style="margin-left:90px"></asp:ListItem>
                    <asp:ListItem Text="" Value="2" style="margin-left:90px"></asp:ListItem>
                    <asp:ListItem Text="" Value="1" style="margin-left:90px"></asp:ListItem>
                    </asp:RadioButtonList></center>
            <hr /></asp:Panel>
            </div>
            
                     
            <br />
            <br />
            <br />
            <br />
            
            <br />
            <br />
            <br />
            <br /></asp:Panel><asp:Panel runat="server" ID="q4panel">
            <div>
            Question 4: <asp:Label ID="q4label" Text="" runat="server"></asp:Label>
            <br />            
            <br />
            <br />
           
             <hr />

                <asp:Panel runat="server" ID="Panel16"><asp:Label runat="server" Text="" ID="Label16"></asp:Label> :<center><asp:RadioButtonList ID="RadioButtonList16" runat="server" CssClass="rblhorizontal" RepeatColumns  ="5" RepeatLayout="Flow" RepeatDirection="Horizontal" TextAlign="Right">
                    <asp:ListItem Text="" Value="5" style="margin-left:180px"></asp:ListItem> 
                    <asp:ListItem Text="" Value="4" style="margin-left:90px"></asp:ListItem>
                    <asp:ListItem Text="" Value="3" style="margin-left:90px"></asp:ListItem>
                    <asp:ListItem Text="" Value="2" style="margin-left:90px"></asp:ListItem>
                    <asp:ListItem Text="" Value="1" style="margin-left:90px"></asp:ListItem>
                    </asp:RadioButtonList></center>

            <hr /></asp:Panel>
                <asp:Panel runat="server" ID="Panel17"><asp:Label runat="server" Text="" ID="Label17"></asp:Label>:<center><asp:RadioButtonList ID="RadioButtonList17" runat="server" CssClass="rblhorizontal" RepeatColumns="5" RepeatLayout="Flow" RepeatDirection="Horizontal">
                    <asp:ListItem Text="" Value="5" style="margin-left:180px"></asp:ListItem> 
                    <asp:ListItem Text="" Value="4" style="margin-left:90px"></asp:ListItem>
                    <asp:ListItem Text="" Value="3" style="margin-left:90px"></asp:ListItem>
                    <asp:ListItem Text="" Value="2" style="margin-left:90px"></asp:ListItem>
                    <asp:ListItem Text="" Value="1" style="margin-left:90px"></asp:ListItem>
                    </asp:RadioButtonList></center>
            <hr /></asp:Panel>
                <asp:Panel runat="server" ID="Panel18"><asp:Label runat="server" Text="" ID="Label18"></asp:Label>:<center><asp:RadioButtonList ID="RadioButtonList18" runat="server" CssClass="rblhorizontal" RepeatColumns="5" RepeatLayout="Flow" RepeatDirection="Horizontal">
                    <asp:ListItem Text="" Value="5" style="margin-left:180px"></asp:ListItem> 
                    <asp:ListItem Text="" Value="4" style="margin-left:90px"></asp:ListItem>
                    <asp:ListItem Text="" Value="3" style="margin-left:90px"></asp:ListItem>
                    <asp:ListItem Text="" Value="2" style="margin-left:90px"></asp:ListItem>
                    <asp:ListItem Text="" Value="1" style="margin-left:90px"></asp:ListItem>
                    </asp:RadioButtonList></center>
            <hr /></asp:Panel>
                <asp:Panel runat="server" ID="Panel19"><asp:Label runat="server" Text="" ID="Label19"></asp:Label>:<center><asp:RadioButtonList ID="RadioButtonList19" runat="server" CssClass="rblhorizontal" RepeatColumns="5" RepeatLayout="Flow" RepeatDirection="Horizontal">
                    <asp:ListItem Text="" Value="5" style="margin-left:180px"></asp:ListItem> 
                    <asp:ListItem Text="" Value="4" style="margin-left:90px"></asp:ListItem>
                    <asp:ListItem Text="" Value="3" style="margin-left:90px"></asp:ListItem>
                    <asp:ListItem Text="" Value="2" style="margin-left:90px"></asp:ListItem>
                    <asp:ListItem Text="" Value="1" style="margin-left:90px"></asp:ListItem>
                    </asp:RadioButtonList></center>
            <hr /></asp:Panel>
                <asp:Panel runat="server" ID="Panel20"><asp:Label runat="server" Text="" ID="Label20"></asp:Label>:<center><asp:RadioButtonList ID="RadioButtonList20" runat="server" CssClass="rblhorizontal" RepeatColumns="5" RepeatLayout="Flow" RepeatDirection="Horizontal">
                    <asp:ListItem Text="" Value="5" style="margin-left:180px"></asp:ListItem> 
                    <asp:ListItem Text="" Value="4" style="margin-left:90px"></asp:ListItem>
                    <asp:ListItem Text="" Value="3" style="margin-left:90px"></asp:ListItem>
                    <asp:ListItem Text="" Value="2" style="margin-left:90px"></asp:ListItem>
                    <asp:ListItem Text="" Value="1" style="margin-left:90px"></asp:ListItem>
                    </asp:RadioButtonList></center>
            <hr /></asp:Panel>
            </div>
           
                     
            <br />
            <br />
            <br />
            <br />
            
            <br />
            <br />
            <br />
            <br /></asp:Panel><asp:Panel runat="server" ID="q5panel">
                <div>
            Question 5: <asp:Label ID="q5label" Text="" runat="server"></asp:Label>
            <br />           
            <br />
            <br />
            
                <hr />

                <asp:Panel runat="server" ID="Panel21"><asp:Label runat="server" Text="" ID="Label21"></asp:Label> :<center><asp:RadioButtonList ID="RadioButtonList21" runat="server" CssClass="rblhorizontal" RepeatColumns  ="5" RepeatLayout="Flow" RepeatDirection="Horizontal" TextAlign="Right">
                    <asp:ListItem Text="" Value="5" style="margin-left:180px"></asp:ListItem> 
                    <asp:ListItem Text="" Value="4" style="margin-left:90px"></asp:ListItem>
                    <asp:ListItem Text="" Value="3" style="margin-left:90px"></asp:ListItem>
                    <asp:ListItem Text="" Value="2" style="margin-left:90px"></asp:ListItem>
                    <asp:ListItem Text="" Value="1" style="margin-left:90px"></asp:ListItem>
                    </asp:RadioButtonList></center>

            <hr /></asp:Panel>
                <asp:Panel runat="server" ID="Panel22"><asp:Label runat="server" Text="" ID="Label22"></asp:Label>:<center><asp:RadioButtonList ID="RadioButtonList22" runat="server" CssClass="rblhorizontal" RepeatColumns="5" RepeatLayout="Flow" RepeatDirection="Horizontal">
                    <asp:ListItem Text="" Value="5" style="margin-left:180px"></asp:ListItem> 
                    <asp:ListItem Text="" Value="4" style="margin-left:90px"></asp:ListItem>
                    <asp:ListItem Text="" Value="3" style="margin-left:90px"></asp:ListItem>
                    <asp:ListItem Text="" Value="2" style="margin-left:90px"></asp:ListItem>
                    <asp:ListItem Text="" Value="1" style="margin-left:90px"></asp:ListItem>
                    </asp:RadioButtonList></center>
            <hr /></asp:Panel>
                <asp:Panel runat="server" ID="Panel23"><asp:Label runat="server" Text="" ID="Label23"></asp:Label>:<center><asp:RadioButtonList ID="RadioButtonList23" runat="server" CssClass="rblhorizontal" RepeatColumns="5" RepeatLayout="Flow" RepeatDirection="Horizontal">
                    <asp:ListItem Text="" Value="5" style="margin-left:180px"></asp:ListItem> 
                    <asp:ListItem Text="" Value="4" style="margin-left:90px"></asp:ListItem>
                    <asp:ListItem Text="" Value="3" style="margin-left:90px"></asp:ListItem>
                    <asp:ListItem Text="" Value="2" style="margin-left:90px"></asp:ListItem>
                    <asp:ListItem Text="" Value="1" style="margin-left:90px"></asp:ListItem>
                    </asp:RadioButtonList></center>
            <hr /></asp:Panel>
                <asp:Panel runat="server" ID="Panel24"><asp:Label runat="server" Text="" ID="Label24"></asp:Label>:<center><asp:RadioButtonList ID="RadioButtonList24" runat="server" CssClass="rblhorizontal" RepeatColumns="5" RepeatLayout="Flow" RepeatDirection="Horizontal">
                    <asp:ListItem Text="" Value="5" style="margin-left:180px"></asp:ListItem> 
                    <asp:ListItem Text="" Value="4" style="margin-left:90px"></asp:ListItem>
                    <asp:ListItem Text="" Value="3" style="margin-left:90px"></asp:ListItem>
                    <asp:ListItem Text="" Value="2" style="margin-left:90px"></asp:ListItem>
                    <asp:ListItem Text="" Value="1" style="margin-left:90px"></asp:ListItem>
                    </asp:RadioButtonList></center></asp:Panel>
            <hr />
                <asp:Panel runat="server" ID="Panel25"><asp:Label runat="server" Text="" ID="Label25"></asp:Label>:<center><asp:RadioButtonList ID="RadioButtonList25" runat="server" CssClass="rblhorizontal" RepeatColumns="5" RepeatLayout="Flow" RepeatDirection="Horizontal">
                    <asp:ListItem Text="" Value="5" style="margin-left:180px"></asp:ListItem> 
                    <asp:ListItem Text="" Value="4" style="margin-left:90px"></asp:ListItem>
                    <asp:ListItem Text="" Value="3" style="margin-left:90px"></asp:ListItem>
                    <asp:ListItem Text="" Value="2" style="margin-left:90px"></asp:ListItem>
                    <asp:ListItem Text="" Value="1" style="margin-left:90px"></asp:ListItem>
                    </asp:RadioButtonList></center>
            <hr /></asp:Panel>
            </div>
                     
            
            
            <br />
            <br />
            <br />
            <br /></asp:Panel>
            
            
            
           </div>
            
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
            <asp:Button ID="Button2" runat="server" Text="Next" Width="121px" OnClick="submitRadioMethod"/>
            </div>
            </div>
            <div align = "right">
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <!--<input type ="button" onclick="parent.location='studentresult.aspx'" value ="Results" />-->
    </form>
</body>
</html>