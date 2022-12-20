<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AboutUss.aspx.cs" Inherits="WebProject.AboutUss" %>


<!DOCTYPE html>

<html>
<head>
    <meta charset="utf-8" />
    <link rel="stylesheet" type="text/css" href="Style.css">
    <title>About Us</title>
</head>
<div>
    <center><a href="Home.aspx"> <img src="logo.png" style="width:200px; height:150px; " /> </a></center>
</div>

<body>
    <div id="menu">
        <center>
            <ul>
                <li><a href="ContactUss.aspx"> Contact Us</a></li>
                <li><a href="UserEdit.aspx">Edit Your Profile</a></li>
                <li><a href="TestInterface.aspx">Testing</a></li>
                <li><a href="LoginForm.aspx">Logout</a></li>

            </ul>
        </center>
    </div>
    <div id="content">
        <p>
            <img class="wrap" src="aboutus.jpeg" style="width:100px ; height: 100px;" />

            Our company founded in 2022 by two collage students who <br />
            had to issues with security and they decided to start they own security website.
            <br /> Our website is used to test coputers to find out if there is any viruses.

        </p>
    </div>
        We have two test available in the website:
    <ul id="about" style="color:white;" >
        <li>T1136.001 Create Local Acount: Adversaries may create a local account to maintain access to victim systems. Local accounts are those configured by an organization for use by users, remote support, services, or for administration on a single system or service. With a sufficient level of access, the net user /add command can be used to create a local account. On macOS systems the dscl -create command can be used to create a local account.
Such accounts may be used to establish secondary credentialed access that do not require persistent remote access tools to be deployed on the system. </li>
        <li>T1115 Clipboard Data: Adversaries may collect data stored in the clipboard from users copying information within or between applications.

In Windows, Applications can access clipboard data by using the Windows API.[1] OSX provides a native command, pbpaste, to grab clipboard contents.[2]</li>
    </ul>

    
    <div class="container">
        <img src="Emre-Atlier-Olca.jpg" style="width:100px ; height: 100px; " alt="Emre" class="image" />
        <div class="overlay">Emre Olca</div>
    </div>
    <p style="text-align: right; color:white;">
        This Wbsite is done under supervising Dr. Emre Olca
    </p>
</body>
<div id="footer">
    <p style="float: left; font-size: large; margin-top: 12px; margin-bottom: 12px;">
        SECURITYS&Y
        <img src="Rights.png" style="width: 30px; height: 20px; vertical-align:bottom" /> 2022
    </p>

    <div id="footerImg">
        <a href="https://maltepe.edu.tr/"> <img id="footerGithub" src="R.png" style="width: 40px; height: 40px; margin-right:10px" /></a>
        <a href="https://github.com/YousraAlaklouk/WebProject"> <img id="footerGithub" src="GitHub_logo.png" style="width: 40px; height: 40px; " /></a>
    </div>

</div>
</html>