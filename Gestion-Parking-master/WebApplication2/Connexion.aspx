<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Connexion.aspx.cs" Inherits="WebApplication2.Connexion" %>

 <!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Form</title>

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
        
        body {
            font-family: Arial, Helvetica, sans-serif;
            align-content:center;
            
        }
        form {
            border: 3px solid #f1f1f1;
        }
        input[type=text], input[type=password] {
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
        .cnbtn {
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
            width: 40%;
        }
        .auto-style1 {
            width: 370px;
            position:center;
        }
    </style>

</head>
<body>
    
 <form id="form2" runat="server">
        <div class="frmalg" draggable="auto">
             <tr>
                <td colspan="2">
                    <img alt="" src="img/LOgo.PNG" class="auto-style1" />
                </td>
            </tr>
            <center>
                <h3>&nbsp;</h3>
            </center>
            <label for="uname"><b>Adresse électronique :</b></label>
            <asp:TextBox runat="server" ID="txtlog" placeholder="Enter Email"></asp:TextBox>
            <label for="psw"><b>Mot de passe :</b></label>
            <asp:TextBox runat="server" ID="txtmdp" TextMode="Password" placeholder="Enter Password"></asp:TextBox>
            <asp:Button runat="server" ID="Button1" OnClick="Button1_Click1" Text="Connecter" CssClass="lgnbtn" />
            <asp:Button runat="server" ID="btn_cancel" Text="Cancel" class="cnbtn" OnClick="btn_cancel_Click" />
            
                    <tr>
                    <td>
                        <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton1_Click">s&#39;inscrire</asp:LinkButton>
                    </td>
                </tr>
            
             </div>
    </form>
</body>
</html>
