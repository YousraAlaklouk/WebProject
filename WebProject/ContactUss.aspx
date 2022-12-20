﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContactUss.aspx.cs" Inherits="WebProject.ContactUss" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <link rel="stylesheet" type="text/css" href="Style.css">

    <title>Contact Us</title>
</head>
<div>
    <center><a href="Home.aspx"> <img src="logo.png" style="width: 200px; height: 150px;" /> </a></center>
</div>
<body>
    <div id="menu">
        <center>
            <ul>
                <li><a href="AboutUss.aspx">About us</a></li>
                <li><a href="UserEdit.aspx">Edit Your Profile</a></li>
                <li><a href="TestInterface.aspx">Testing</a></li>
                <li><a href="LoginForm.aspx">Logout</a></li>

            </ul>
        </center>
    </div>


    <CENTER>

        <h3>If you need any help call us ASAP</h3>
        <p>
            <a href="mailto:yousralaklouk@gmail.com">
                <button id="button1" style="background-color:rgba(201, 136, 196, 0.516); font-style: italic;">Send An Email</button>
            </a>
        </p>
        <p>
            <a href="tel:0905344720189">
                <button id="button1" style="background-color:rgba(201, 136, 196, 0.516); font-style: italic;">05344720189</button>
            </a>
        </p>

        <h3>Or Visit Us Any Time</h3>
        <p><strong> Istanbul, Turkey</strong></p>
    </CENTER>
</body>
<div id="footer">
    <p style="float: left; font-size: large;margin-top:12px; margin-bottom:12px;">
        SECURITYS&Y
        <img src="Rights.png" style="width: 30px; height: 20px; vertical-align:bottom" /> 2022
    </p>

    <div id="footerImg">
        <a href="https://maltepe.edu.tr/"> <img id="footerGithub" src="R.png" style="width: 40px; height: 40px; margin-right:10px" /></a>
        <a href="https://github.com/YousraAlaklouk/WebProject"> <img id="footerGithub" src="GitHub_logo.png" style="width: 40px; height: 40px; " /></a>
    </div>

</div>
</html>