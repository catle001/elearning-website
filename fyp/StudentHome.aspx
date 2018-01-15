<%@ Page Title="" Language="C#" MasterPageFile="~/Studentmaster.Master" AutoEventWireup="true" CodeBehind="StudentHome.aspx.cs" Inherits="FYP.StudentHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="container body-content">

<div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="6000">
    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
    </ol>
    <div class="carousel-inner" role="listbox" style="height:300px">
        <div class="item active">
            <img src="images/study-abroad-BANNER.jpg" height="50" class="img-responsive" />
            <div class="carousel-caption" role="option">
            </div>
        </div>
        <div class="item">
            <img src="images/CanadaBannerStudy.jpg" height="50" class="img-responsive" />
            <div class="carousel-caption" role="option">
            </div>
        </div>
    </div>
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div>
    <div class="row">
        <div class="col-md-4">
            <h2>Know EEE Leadership Program</h2>
            <p>
                NTU EEE Leadership program is a program for EEE student to learn and become the leader of the future, 
                in which students will develop 4 core competencies via various learning and project activities
            </p>
            <p>
                <a class="btn btn-default" href="#">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Assess your competencies</h2>
            <p>
                Assess yourself in various questions to find your strength and weakness.
            </p>
            <p>
                <a class="btn btn-default" href="#">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Develop your competencies</h2>
            <p>
                Improve yourself in leadership training program.
            </p>
            <p>
                <a class="btn btn-default" href="#">Learn more &raquo;</a>
            </p>
        </div>
    </div>
            </div>
</asp:Content>