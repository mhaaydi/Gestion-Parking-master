<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="inscription.aspx.cs" Inherits="WebApplication2.inscription" %>


 <!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Form</title>

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
         .myButton {
	        box-shadow: 0px 10px 14px -7px #3e7327;
	        background:linear-gradient(to bottom, #77b55a 5%, #72b352 100%);
	        background-color:green;
	        border-radius:33px;
	        border:1px solid #4b8f29;
	        display:inline-block;
	        cursor:pointer;
	        color:#ffffff;
	        font-family:Arial;
	        font-size:18px;
	        font-weight:bold;
	        font-style:italic;
	        padding:6px 12px;
	        text-decoration:none;
	        text-shadow:50px 0px 50px #5b8a3c;
        }
        .myButton:hover {
	        background:linear-gradient(to bottom, #72b352 5%, #77b55a 100%);
	        background-color:#72b352;
        }
        .myButton:active {
	        position:relative;
	        top:1px;
        }

        

     footer{
             position:absolute;
             bottom:0;

        }
     form{
            position:center;
            
     }
     fieldset{
        
         position: center;
         margin-left: 90px;
         align-content: center;
     }
   
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
              width: 60%;
        }
        .auto-style2 {
            margin-right: 0px;
            margin-top: 0px;
            
        }


         .mystyle{
               box-shadow: 0px 10px 14px -7px #3e7327;
	        background:linear-gradient(to bottom, #77b55a 5%, #72b352 100%);
	        background-color:green;
	        border-radius:33px;
	        border:1px solid #4b8f29;
	        display:inline-block;
	        cursor:pointer;
	        color:#ffffff;
	        font-family:Arial;
	        font-size:18px;
	        font-weight:bold;
	        font-style:italic;
	        padding:6px 12px;
	        text-decoration:none;
	        text-shadow:50px 0px 50px #5b8a3c;
           
         }
        .auto-style3 {
            margin: auto;
            width: 60%;
            height: 1124px;
        }
    </style>

</head>
<body>
     <form id="form1" runat="server">
     <div class="mystyle" >
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

          </div >
        <div class="auto-style3" draggable="auto">
         
          <div  style="text-align: center; font-size: 50px; font-style:italic; color:blue" class="auto-style2"  >Inscription  </div>
          <div>
            <asp:ValidationSummary style="margin-left: 800px; font:italic;" ID="ValidationSummary1" runat="server" ForeColor="Red" 
                HeaderText="Vous devez entrer une valeur valide dans les champs ci-dessous: " />
        </div>
    <div>
        
         
        <fieldset>
            <legend>Informations de connexion</legend>
            <table  >
            <tr>
                <td class="style2" >
                    <asp:Label ID="Label1" runat="server" Text="Adresse électronique :" Width="180px"></asp:Label></td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Width="285px" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="Adresse électronique" ForeColor="Red" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                        Display="Dynamic">
                        Adresse électronique non valide. Elle doit être au format email@hôte.domaine
                    </asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label2" runat="server" Text="Mot de passe :" Width="180px"></asp:Label>:</td>
                <td class="style4">
                    <asp:TextBox ID="TextBox3" runat="server" Width="286px" TextMode="Password" OnTextChanged="TextBox3_TextChanged"></asp:TextBox>
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                        ControlToValidate="TextBox3" ErrorMessage="Mot de passe" 
                        ForeColor="Red" 
                        ValidationExpression=".*[@#&%!=?+*-/].*" Display="Dynamic">
                        Le mot de passe doit comprendre un de ces caractères: (@ # & % ! = ? + - * /)
                    </asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style2"><asp:Label ID="Label3" runat="server" Text="Entrez à nouveau le mot de passe:"></asp:Label> </td>
                <td class="style4">
                    <asp:TextBox ID="TextBox4" runat="server" Width="286px" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="TextBox3" ControlToValidate="TextBox4"  
                        ErrorMessage="Entrez à nouveau le mot de passe" ForeColor="Red" 
                        Display="Dynamic">Les champs relatifs au mot de passe diffèrent
                    </asp:CompareValidator>
                </td>
            </tr>
           </table>
        </fieldset>
    </div>
        <br />
     <div>
        <fieldset>
            <legend>Informations personnelles</legend>
            <table>
            <tr>
                <td class="style3"><asp:Label ID="Label4" runat="server" Text="Prénom :" 
                        Width="213px"></asp:Label></td>
                <td><asp:TextBox ID="TextBox5" runat="server" style="margin-left: 1px" Width="286px"></asp:TextBox></td>
                <td></td>
            </tr>
            <tr>
                <td class="style3" ><asp:Label ID="Label5" runat="server" Text="Nom" Width="180px"></asp:Label></td>
                <td><asp:TextBox ID="TextBox6" runat="server" Width="286px"></asp:TextBox></td>
                <td></td>
            </tr>
            <tr>
                <td class="style3"><asp:Label ID="Label8" runat="server" Text="Téléphone" Width="180px"></asp:Label></td>
                <td><asp:TextBox ID="TextBox9" runat="server" Width="286px"></asp:TextBox></td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                        ControlToValidate="TextBox9" ErrorMessage="Téléphone" 
                        ForeColor="Red" ValidationExpression="[0-9]{10}" 
                        Display="Dynamic">
                        Le numéro de téléphone doit comporter 10 chiffre
                    </asp:RegularExpressionValidator>
                </td>
            </tr>
           </table>
        </fieldset>
        </div>
        <br />
        <br />
        <div  style=" text-align: center; margin-bottom:20px">
                  
                <asp:Button class="myButton" ID="Button1" runat="server" Text="inscription" Height="33px"  
                    Width="118px" OnClick="Button1_Click"/>   
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button class="myButton" ID="Button2" runat="server" Text="annuler" OnClick="Button2_Click1" />
            
        </div>
    
    </form>
             </div>
         <footer class="mystyle">  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Created by © El Yazid</footer>


</body>

</html>


   
