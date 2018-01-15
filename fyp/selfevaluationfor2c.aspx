    <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="selfevaluationfor2c.aspx.cs" Inherits="FYP.selfevaluationfor2c" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Self-Evaluation Survey</title>
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

            <p><font color="black" font size="5"><u>Self Evaluation Survey</u></font></p>
            <asp:Label ID="Label1"  Text="" runat="server" ></asp:Label>


            <p style="font-size:20px"><asp:Label ID="clabel7" Text="" runat="server" backcolor="chartreuse"></asp:Label></p>
            <br />
            You are : Student <asp:Label ID="svr" Text="" runat="server">A</asp:Label>

            <br />
            <br />
            <hr />
        <header>
                <nav>
                <ul class ="nav">
                    <li><a class="all" href="selfevaluationfor1c.aspx"><asp:Label ID="clabel1" Text="" runat="server" ></asp:Label></a></li>
                    <li><a class="current" href="selfevaluationfor2c.aspx"><asp:Label ID="clabel2" Text="" runat="server" ></asp:Label></a></li>
                    <li><a class="all"href="selfevaluationfor3c.aspx"><asp:Label ID="clabel3" Text="" runat="server" ></asp:Label></a></li>
                    <li><a class="all"href="selfevaluationfor4c.aspx"><asp:Label ID="clabel4" Text="" runat="server" ></asp:Label></a></li>
                    <li><a class="all"href="selfevaluationfor5c.aspx"><asp:Label ID="clabel5" Text="" runat="server" ></asp:Label></a></li>
                </ul>
            </nav></header>
        <hr />
        <div class="style1">
            <p><font color="black" font size="5"><u>Self Evaluation Survey</u></font></p>
            <br />
            <asp:Label ID="Labelcheck"  Text="" runat="server" ></asp:Label>
            <br />

            
            <hr /><asp:Panel runat="server" ID="q1panel" >
            <br />
            <div>
            
            Question 1: <asp:Label ID="q1label" Text="" runat="server"></asp:Label>
            <br />            
            <br />
            <br />            
                <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                    <asp:ListItem Text="Strongly Agree" Value="5"></asp:ListItem>
                    <asp:ListItem Text="Agree" Value="4"></asp:ListItem>
                    <asp:ListItem Text="Neutral" Value="3"></asp:ListItem>
                    <asp:ListItem Text="Disagree" Value="2"></asp:ListItem>
                    <asp:ListItem Text="Strongly Disagree" Value="1"></asp:ListItem>
                    </asp:RadioButtonList>
            </div>            
            <br />
            <br />
            <hr/></asp:Panel><asp:Panel runat="server" ID="q2panel" >
            <br />
            <br />
            <div>
            Question 2: <asp:Label ID="q2label" Text="" runat="server"></asp:Label>
            <br />            
            <br />
            <br />
            <asp:RadioButtonList ID="RadioButtonList2" runat="server">
                    <asp:ListItem Text="Strongly Agree" Value="5"></asp:ListItem>
                    <asp:ListItem Text="Agree" Value="4"></asp:ListItem>
                    <asp:ListItem Text="Neutral" Value="3"></asp:ListItem>
                    <asp:ListItem Text="Disagree" Value="2"></asp:ListItem>
                    <asp:ListItem Text="Strongly Disagree" Value="1"></asp:ListItem>
                    </asp:RadioButtonList>
            </div>
            <br />
            <br />
            <hr/></asp:Panel><asp:Panel runat="server" ID="q3panel" >
            <br />
            <br />
            Question 3: <asp:Label ID = "q3label" Text="" runat="server"></asp:Label>
            <br />           
            <br />
            <br />
            <div>
                <asp:RadioButtonList ID="RadioButtonList3" runat="server">
                    <asp:ListItem Text="Strongly Agree" Value="5"></asp:ListItem>
                    <asp:ListItem Text="Agree" Value="4"></asp:ListItem>
                    <asp:ListItem Text="Neutral" Value="3"></asp:ListItem>
                    <asp:ListItem Text="Disagree" Value="2"></asp:ListItem>
                    <asp:ListItem Text="Strongly Disagree" Value="1"></asp:ListItem>
                    </asp:RadioButtonList>
            </div>
            <br />
            <br />
            <hr/></asp:Panel><asp:Panel runat="server" ID="q4panel" >
            <br />
            <br />
            Question 4: <asp:Label ID="q4label" Text="" runat="server"></asp:Label>
            <br />            
            <br />
            <br />
           <div>
               <asp:RadioButtonList ID="RadioButtonList4" runat="server">
                    <asp:ListItem Text="Strongly Agree" Value="5"></asp:ListItem>
                    <asp:ListItem Text="Agree" Value="4"></asp:ListItem>
                    <asp:ListItem Text="Neutral" Value="3"></asp:ListItem>
                    <asp:ListItem Text="Disagree" Value="2"></asp:ListItem>
                    <asp:ListItem Text="Strongly Disagree" Value="1"></asp:ListItem>
                    </asp:RadioButtonList>
           </div>
            <br />
            <br />
            <hr/></asp:Panel><asp:Panel runat="server" ID="q5panel">
            <br />
            <br />
            Question 5: <asp:Label ID="q5label" Text="" runat="server"></asp:Label>
            <br />           
            <br />
            <br />
            <div>
                <asp:RadioButtonList ID="RadioButtonList5" runat="server">
                    <asp:ListItem Text="Strongly Agree" Value="5"></asp:ListItem>
                    <asp:ListItem Text="Agree" Value="4"></asp:ListItem>
                    <asp:ListItem Text="Neutral" Value="3"></asp:ListItem>
                    <asp:ListItem Text="Disagree" Value="2"></asp:ListItem>
                    <asp:ListItem Text="Strongly Disagree" Value="1"></asp:ListItem>
                    </asp:RadioButtonList>
            </div>
            <br />
            <br />
            <hr/></asp:Panel><asp:Panel runat="server" ID="q6panel">
            <br />
            <br />
            Question 6: <asp:Label ID="q6label" Text="" runat="server"></asp:Label>
            <br />           
            <br />
            <br />
            <div>
                <asp:RadioButtonList ID="RadioButtonList6" runat="server">
                    <asp:ListItem Text="Strongly Agree" Value="5"></asp:ListItem>
                    <asp:ListItem Text="Agree" Value="4"></asp:ListItem>
                    <asp:ListItem Text="Neutral" Value="3"></asp:ListItem>
                    <asp:ListItem Text="Disagree" Value="2"></asp:ListItem>
                    <asp:ListItem Text="Strongly Disagree" Value="1"></asp:ListItem>
                    </asp:RadioButtonList>
            </div>
            <br />
            <br />
            <hr/></asp:Panel><asp:Panel runat="server" ID="q7panel">
            <br />
            <br />
            Question 7: <asp:Label ID="q7label" Text="" runat="server"></asp:Label>
            <br />           
            <br />
            <br />
            <div>
                <asp:RadioButtonList ID="RadioButtonList7" runat="server">
                    <asp:ListItem Text="Strongly Agree" Value="5"></asp:ListItem>
                    <asp:ListItem Text="Agree" Value="4"></asp:ListItem>
                    <asp:ListItem Text="Neutral" Value="3"></asp:ListItem>
                    <asp:ListItem Text="Disagree" Value="2"></asp:ListItem>
                    <asp:ListItem Text="Strongly Disagree" Value="1"></asp:ListItem>
                    </asp:RadioButtonList>
            </div>
            <br />
            <br />
            <hr/></asp:Panel><asp:Panel runat="server" ID="q8panel">
            <br />
            <br />
            Question 8: <asp:Label ID="q8label" Text="" runat="server"></asp:Label>
            <br />            
            <br />
            <br />
            <div>
                <asp:RadioButtonList ID="RadioButtonList8" runat="server">
                    <asp:ListItem Text="Strongly Agree" Value="5"></asp:ListItem>
                    <asp:ListItem Text="Agree" Value="4"></asp:ListItem>
                    <asp:ListItem Text="Neutral" Value="3"></asp:ListItem>
                    <asp:ListItem Text="Disagree" Value="2"></asp:ListItem>
                    <asp:ListItem Text="Strongly Disagree" Value="1"></asp:ListItem>
                    </asp:RadioButtonList>
            </div>
            <br />
            <br />
            <hr/></asp:Panel><asp:Panel runat="server" ID="q9panel">
            <br />
            <br />
            Question 9: <asp:Label ID="q9label" Text="" runat="server"></asp:Label>
            <br />            
            <br />
            <br />
           <div>
               <asp:RadioButtonList ID="RadioButtonList9" runat="server">
                    <asp:ListItem Text="Strongly Agree" Value="5"></asp:ListItem>
                    <asp:ListItem Text="Agree" Value="4"></asp:ListItem>
                    <asp:ListItem Text="Neutral" Value="3"></asp:ListItem>
                    <asp:ListItem Text="Disagree" Value="2"></asp:ListItem>
                    <asp:ListItem Text="Strongly Disagree" Value="1"></asp:ListItem>
                    </asp:RadioButtonList>
           </div>
            <br />
            <br />
            <hr/></asp:Panel><asp:Panel runat="server" ID="q10panel" Visible="true" >
            <br />
            <br />
            
            Question 10: <asp:Label ID="q10label" Text="" runat="server"></asp:Label>
            <br />           
            <br />
            <br />
            <div>
                <asp:RadioButtonList ID="RadioButtonList10" runat="server">
                    <asp:ListItem Text="Strongly Agree" Value="5"></asp:ListItem>
                    <asp:ListItem Text="Agree" Value="4"></asp:ListItem>
                    <asp:ListItem Text="Neutral" Value="3"></asp:ListItem>
                    <asp:ListItem Text="Disagree" Value="2"></asp:ListItem>
                    <asp:ListItem Text="Strongly Disagree" Value="1"></asp:ListItem>
                    </asp:RadioButtonList>
            </div>
            <br />
            <br />
            <hr /></asp:Panel>
            <br />

            
            <div align = "right">        
            <asp:Button ID="Button2" runat="server" Text="Submit Answers" Width="121px" OnClick="submitRadioMethod"/>
            </div>
            </div>
            <div align = "right">
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <!--<input type ="button" onclick="parent.location='studentresult.aspx'" value ="Results" />-->
    </form>
</body>
</html>
