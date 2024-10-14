﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="taskrabbit2.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
 <style>

    body {
        font-family: 'Open Sans', sans-serif;
  background-color: lightblue;
    }
    input[type=text], input[type=password]
    {
        width: 100%;
        padding: 12px 20px;
        margin: 8px 0;
        display: inline-block;
        border: 1px solid #ccc;
        box-sizing: border-box;
    }
    button:hover {
        opacity: 0.8;
    }
    .regbtn {
        background-color: #ec3f3f;
        color: white;
        padding: 14px 20px;
        margin: 8px 0;
        border: none;
        cursor: pointer;
        width: 49%;
    }
    .lgnbtn {
        background-color: #4CAF50;
        color: white;
        padding: 14px 20px;
        margin: 8px 0;
        border: none;
        cursor: pointer;
        width: 50%;
    }
    .imgcontainer {
        text-align: center;
        margin: 24px 0 12px 0;
    }
    img.avatar {
        width: 40%;
        border-radius: 50%;
    }
    .container {
        padding: 16px;
        background-color:lightgray
    }
    span.psw {
        float: right;
        padding-top: 16px;
    }
    /* Change styles for span and cancel button on extra small screens */
    @media screen and (max-width: 300px) {
        span.psw {
            display: block;
            float: none;
        }
        .cnbtn {
            width: 100%;
        }
    }
    .frmalg {
    margin: auto;
    background-color: white;
    width:40%;
    margin-top: 100px; /* Add some top margin for better appearance */
}
</style>
<h1 style="text-align:center;color:darkblue;font-family:'Segoe UI';font-weight:bold">Task Rabbit</h1>


    <div class="container">
        <center>
            <h3>Login</h3>
        </center>
        <label for="uname"><b>Username</b></label>
        <asp:TextBox runat="server" ID="txt_Email" placeholder="Enter Username"></asp:TextBox>
        <label for="psw"><b>Password</b></label>
        <asp:TextBox runat="server" ID="txt_password" TextMode="Password" placeholder="Enter Password"></asp:TextBox>
       <asp:Button runat="server" ID="btn_Login" CssClass="lgnbtn" Text="Login" OnClick="btn_Login_Click" />
        
        <asp:Button runat="server" ID="btn_Register" Text="Update" CssClass="regbtn" OnClick="btn_Update_Click" />
        <asp:Label ID="lbl" runat="server" ForeColor="Red"></asp:Label>
            

    </div>
</asp:Content>
