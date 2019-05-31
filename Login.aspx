<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>
<style>
    body{
        text-align:center;
        background-image: url(Pictures/img.jpg);
        background-repeat: no-repeat;
        background-size: cover;
        color:white;
        font-family:Arial;
        font-weight: bold;
       

    }
    .button {
  display: inline-block;
  border-radius: 4px;
  background-color:crimson;
  border: none;
  color:white;
  text-align: center;
  font-size: 20px;
  padding: 20px;
  width: 100px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 5px;
}
    .box{
        background-color:grey;
        color:white;
        border-radius: 5px;
        border:medium;
        
    }

.button span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

.button span:after {
  content: '\00bb';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}

.button:hover span {
  padding-right: 25px;
}

.button:hover span:after {
  opacity: 1;
  right: 0;
}
    </style>
<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>Login</title>
</head>
    
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <br />
            <br />
            StudentID: <asp:TextBox ID="txtstudent" CssClass="box" runat="server"  AutoCompleteType="Disabled"></asp:TextBox>
            <asp:RequiredFieldValidator ID="ValiStudent" ControlToValidate="txtstudent" ValidationGroup="1" ErrorMessage="Fill the Blanks" runat="server" />
        </div>
        <p>
            Password: <asp:TextBox ID="txtpassw" CssClass="box" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="ValiPass" ControlToValidate="txtpassw" ValidationGroup="1" ErrorMessage="Fill the Blanks" runat="server" />
        </p>
        <p>
            
            <asp:Button ID="logbtn" style="vertical-align:middle" CssClass="button" runat="server" ValidationGroup ="1" OnClick="btnlog_Click" Text="Log In" />
            <asp:Button ID="regbtn" style="vertical-align:middle" CssClass="button" runat="server" OnClick="btnreg_Click" Text="Sign Up" Width="115px" />    
            <asp:Button ID="btnguest" style="vertical-align:middle" CssClass="button" runat="server" OnClick="btnguest_Click" Text="Guest Log In" Width="163px" />    
            <asp:Button ID="btnforgetpass" style="vertical-align:middle" CssClass="button" runat="server" Text="Forgot Password" OnClick="btnforgetpass_Click" Width="200px" />
        </p>
        <asp:Label ID="lblEror" runat="server" Text="Label" Visible="False"></asp:Label>
    </form>
</body>
</html>
