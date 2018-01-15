<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="peerresult.aspx.cs" Inherits="FYP.peerresult" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>PeerEval Survey Results</title>
<style >
    .container {
        width: 680px;
        margin: 0 auto;
        padding: 5px 15px;
        border: 1px solid #808080;
        background: #fff;
    }

    .style1 {
         width: 800px;
         margin: 0 auto;
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

    .commentbox{
        border: 3px white;
        border-radius: 10px;
        color: #000;
        height: 120px;
        
    }


    canvas{
        position:absolute;
        top:580px;
        left:550px;>
    }
  </style>
</head>
<body>
    <img src="ntu_logo.png" /><br /><hr />
    <form id="form1" runat="server">

        <div class="style1">
            <p><font color="black" font size="5"><u>Peer Evaluation Survey Result</u></font></p>
            <p>This page is to see the survey results of other students for you.</p>
            <p>You are : Student <asp:Label ID="svr" Text="" runat="server"></asp:Label></p>
            <hr />
            <br />










            <div>
                Total Score
                <table border="1" width="500px">
                <tr ><td>Comptency</td></tr >
                <tr bgcolor="chartreuse">
                        <td width="100px"><asp:Label runat="server" ID="cn1"></asp:Label></td>
                        <td width="100px"><asp:Label runat="server" ID="cn2"></asp:Label></td>
                        <td width="100px"><asp:Label runat="server" ID="cn3"></asp:Label></td>
                        <td width="100px"><asp:Label runat="server" ID="cn4"></asp:Label></td>
                        <td width="100px"><asp:Label runat="server" ID="cn5"></asp:Label></td>                </tr>
                    <tr><td>maximum</td></tr>
                    <tr><td width="100px"><asp:Label runat="server" ID="max1"></asp:Label></td>
                        <td width="100px"><asp:Label runat="server" ID="max2"></asp:Label></td>
                        <td width="100px"><asp:Label runat="server" ID="max3"></asp:Label></td>
                        <td width="100px"><asp:Label runat="server" ID="max4"></asp:Label></td>
                        <td width="100px"><asp:Label runat="server" ID="max5"></asp:Label></td>   </tr>              
                    <tr><td>your score</td></tr>
                    <tr>
                        <td width="100px"><asp:Label runat="server" ID="sum1c"></asp:Label></td>
                        <td width="100px"><asp:Label runat="server" ID="sum2c"></asp:Label></td>
                        <td width="100px"><asp:Label runat="server" ID="sum3c"></asp:Label></td>
                        <td width="100px"><asp:Label runat="server" ID="sum4c"></asp:Label></td>
                        <td width="100px"><asp:Label runat="server" ID="sum5c"></asp:Label></td>

                    </tr>
                </table>





            </div>            <br />
            <br />            <br />
            <br />            <br />
            <br />            <br />
            <br />            <br />
            <br />            <br />            <br />            <br />            <br />            <br />            <br />            <br />            <br />            <br />            <br />            <br />
            <br />

            <div >
                            <script type="text/javascript"> 


                                var objTs1 = document.getElementById('sum1c');
                                var objTs2 = document.getElementById('sum2c');
                                var objTs3 = document.getElementById('sum3c');
                                var objTs4 = document.getElementById('sum4c');
                                var objTs5 = document.getElementById('sum5c');
                                var objCs1 = document.getElementById('cn1');
                                var objCs2 = document.getElementById('cn2');
                                var objCs3 = document.getElementById('cn3');
                                var objCs4 = document.getElementById('cn4');
                                var objCs5 = document.getElementById('cn5');
                                var objMx1 = document.getElementById('max1');
                                var objMx2 = document.getElementById('max2');
                                var objMx3 = document.getElementById('max3');
                                var objMx4 = document.getElementById('max4');
                                var objMx5 = document.getElementById('max5');




                                var mW = 400;
                                var mH = 400;
                                var mData = [[objCs1.innerText, objTs1.innerText],
                                [objCs2.innerText, objTs2.innerText],
                                [objCs3.innerText, objTs3.innerText],
                                [objCs4.innerText, objTs4.innerText],
                                [objCs5.innerText, objTs5.innerText]];
                                var mMax = [[objMx1.innerText], [objMx2.innerText], [objMx3.innerText], [objMx4.innerText], [objMx5.innerText]];
                                var mCount = 5; //边数 
                                var mCenter = mW / 2; //中心点
                                var mRadius = mCenter - 50; //半径(减去的值用于给绘制的文本留空间)
                                var mAngle = Math.PI * 2 / mCount; //角度
                                var mCtx = null;
                                var mColorPolygon = '#B8B8B8'; //多边形颜色
                                var mColorLines = '#B8B8B8'; //顶点连线颜色
                                var mColorText = '#000000';


                                //初始化
                                (function () {
                                    var canvas = document.createElement('canvas');
                                    document.body.appendChild(canvas);
                                    canvas.height = mH;
                                    canvas.width = mW;
                                    mCtx = canvas.getContext('2d');

                                    drawPolygon(mCtx);
                                    drawLines(mCtx);
                                    drawText(mCtx);
                                    drawRegion(mCtx);
                                    drawCircle(mCtx);
                                })();

                                // 绘制多边形边
                                function drawPolygon(ctx) {
                                    ctx.save();

                                    ctx.strokeStyle = mColorPolygon;
                                    var r = mRadius / mCount; //单位半径
                                    //画6个圈
                                    for (var i = 0; i < mCount; i++) {
                                        ctx.beginPath();
                                        var currR = r * (i + 1); //当前半径
                                        //画6条边
                                        for (var j = 0; j < mCount; j++) {
                                            var x = mCenter + currR * Math.sin(mAngle * j);
                                            var y = mCenter + currR * Math.cos(mAngle * j);

                                            ctx.lineTo(x, y);
                                        }
                                        ctx.closePath()
                                        ctx.stroke();
                                    }

                                    ctx.restore();
                                }

                                //顶点连线
                                function drawLines(ctx) {
                                    ctx.save();

                                    ctx.beginPath();
                                    ctx.strokeStyle = mColorLines;

                                    for (var i = 0; i < mCount; i++) {
                                        var x = mCenter + mRadius * Math.sin(mAngle * i);
                                        var y = mCenter + mRadius * Math.cos(mAngle * i);

                                        ctx.moveTo(mCenter, mCenter);
                                        ctx.lineTo(x, y);
                                    }

                                    ctx.stroke();

                                    ctx.restore();
                                }

                                //绘制文本
                                function drawText(ctx) {
                                    ctx.save();

                                    var fontSize = mCenter / 12;
                                    ctx.font = fontSize + 'px Microsoft Yahei';
                                    ctx.fillStyle = mColorText;

                                    for (var i = 0; i < mCount; i++) {
                                        var x = mCenter + mRadius * Math.sin(mAngle * i);
                                        var y = mCenter + mRadius * Math.cos(mAngle * i);

                                        if (mAngle * i >= 0 && mAngle * i <= Math.PI / 2) {
                                            ctx.fillText(mData[i][0], x, y + fontSize);
                                        } else if (mAngle * i > Math.PI / 2 && mAngle * i <= Math.PI) {
                                            ctx.fillText(mData[i][0], x - ctx.measureText(mData[i][0]).width, y - fontSize / 2);
                                        } else if (mAngle * i > Math.PI && mAngle * i <= Math.PI * 3 / 2) {
                                            ctx.fillText(mData[i][0], x - ctx.measureText(mData[i][0]).width, y);
                                        } else {
                                            ctx.fillText(mData[i][0], x - 2.5 * fontSize, y);
                                        }

                                    }

                                    ctx.restore();
                                }

                                //绘制数据区域
                                function drawRegion(ctx) {
                                    ctx.save();

                                    ctx.beginPath();
                                    for (var i = 0; i < mCount; i++) {
                                        var x = mCenter + mRadius * Math.sin(mAngle * i) * mData[i][1] / mMax[i];
                                        var y = mCenter + mRadius * Math.cos(mAngle * i) * mData[i][1] / mMax[i];

                                        ctx.lineTo(x, y);
                                    }
                                    ctx.closePath();
                                    ctx.fillStyle = 'rgba(0, 0, 255, 0.5)';
                                    ctx.fill();

                                    ctx.restore();
                                }

                                //画点
                                function drawCircle(ctx) {
                                    ctx.save();

                                    var r = mCenter / 36;
                                    for (var i = 0; i < mCount; i++) {
                                        var x = mCenter + mRadius * Math.sin(mAngle * i) * mData[i][1] / mMax[i];
                                        var y = mCenter + mRadius * Math.cos(mAngle * i) * mData[i][1] / mMax[i];

                                        ctx.beginPath();
                                        ctx.arc(x, y, r, 0, Math.PI * 2);
                                        ctx.fillStyle = 'rgba(255, 0, 0, 0.8)';
                                        ctx.fill();
                                    }

                                    ctx.restore();
                                }
</script></div>
            <br />
            <hr size="5" color="black">
            <br />
            <u>Comments made by other students:</u>
            <br />
            <br />
            <br />
            <div class ="commentbox">
            &nbsp;&nbsp;&nbsp;&nbsp;1. <asp:Label ID="c1label" Text="" runat="server"></asp:Label>
            <br />
            <br />
            </div>
            <hr />
            <div class ="commentbox">
            &nbsp;&nbsp;&nbsp;&nbsp;2. <asp:Label ID="c2label" Text="" runat="server"></asp:Label>
            </div>
            <hr />
            <div class ="commentbox">
            &nbsp;&nbsp;&nbsp;&nbsp;3. <asp:Label ID="c3label" Text="" runat="server"></asp:Label>
            </div>
            <hr />
            <div class ="commentbox">
            &nbsp;&nbsp;&nbsp;&nbsp;4. <asp:Label ID="c4label" Text="" runat="server"></asp:Label>
            </div>
            <hr />
            <div class ="commentbox">
            &nbsp;&nbsp;&nbsp;&nbsp;5. <asp:Label ID="c5label" Text="" runat="server"></asp:Label>
            </div>
            <hr />

            <hr />
            </div>
        <div align=right>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input type ="button" onclick="parent.location = 'peerevaluationfor5c.aspx'" value ="Back" />
    </form>
</body>
</html>