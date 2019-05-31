<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Forgot.aspx.cs" Inherits="Forgot" %>

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
    border-style: none;
        border-color: inherit;
        border-width: medium;
        display: inline-block;
        border-radius: 4px;
        background-color:crimson;
        color:white;
        text-align: center;
        font-size: 20px;
        padding: 20px;
        transition: all 0.5s;
        cursor: pointer;
        margin: 5px;
}
    .box{
        border-style: none;
        border-color: inherit;
        border-width: medium;
        background-color:grey;
        color:white;
        border-radius: 5px;
        margin-left: 0px;
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
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="lblid" runat="server" Text="Enter Your StudentID: "></asp:Label>
        <asp:TextBox ID="txtstudentid" CssClass="box" runat="server" ValidationGroup="1"></asp:TextBox>
            <asp:RequiredFieldValidator ID="ValiPass" ControlToValidate="txtstudentid" ValidationGroup="1" ErrorMessage="Fill the Blanks" runat="server" />
        <br />
        <br />
        <asp:Label ID="lblsafety" runat="server" Text="Enter Your Incase Password: "></asp:Label>
        <asp:TextBox ID="txtspass" CssClass="box" runat="server" ValidationGroup="1"></asp:TextBox>
            <asp:RequiredFieldValidator ID="ValiPass0" ControlToValidate="txtspass" ValidationGroup="1" ErrorMessage="Fill the Blanks" runat="server" />
        <br />
    
    </div>
        <asp:Label ID="lblyp" runat="server" Text="Your Password: " Visible="False"></asp:Label>
        <asp:Label ID="lblspassdisplay" runat="server" Text="Your Incase Password is Incorrect!" Visible="False"></asp:Label>
        <p>
            <asp:Button ID="btnconfirm" CssClass="button" runat="server" OnClick="btnconfirm_Click" Text="Confirm" ValidationGroup="1" />
            <asp:Button ID="Button1" CssClass ="button" runat="server" Text="Return" OnClick="Button1_Click" />
        </p>
    </form>
</body>
</html>
