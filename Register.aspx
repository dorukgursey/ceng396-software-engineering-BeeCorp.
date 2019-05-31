<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

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
    
    </div>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="Name: "></asp:Label>
        &nbsp;
        <asp:TextBox ID="txtname" CssClass="box" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname" ErrorMessage="Fill the Blanks!" ValidationGroup="1"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Surname: "></asp:Label>
        &nbsp;
        <asp:TextBox ID="txtsurname" CssClass="box" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtsurname" ErrorMessage="Fill the Blanks!" ValidationGroup="1"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="lblemail"  runat="server" Text="Email: "></asp:Label>
        <asp:TextBox ID="txtemail" CssClass="box" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtemail" ErrorMessage="Fill the Blanks!" ValidationGroup="1"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Student ID: "></asp:Label>
        <asp:TextBox ID="txtstudentid" CssClass="box" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtstudentid" ErrorMessage="Fill the Blanks!" ValidationGroup="1"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="lblfac" runat="server" Text="Faculty: "></asp:Label>
        <asp:TextBox ID="txtfac" CssClass="box" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtfac" ErrorMessage="Fill the Blanks!" ValidationGroup="1"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="lbldept" runat="server" Text="Department: "></asp:Label>
        <asp:TextBox ID="txtdept" CssClass="box" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtdept" ErrorMessage="Fill the Blanks!" ValidationGroup="1"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="lblyear" runat="server" Text="Year Started: "></asp:Label>
        <asp:TextBox ID="txtyear" CssClass="box" runat="server" TextMode="Date"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtyear" ErrorMessage="Fill the Blanks!" ValidationGroup="1"></asp:RequiredFieldValidator>
        <br />
        <br />
        InCase Password: <asp:TextBox ID="txtincase" CssClass="box" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtincase" ErrorMessage="Fill the Blanks!" ValidationGroup="1"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Text="Password: "></asp:Label>
        &nbsp;<asp:TextBox ID="txtpass" CssClass="box" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtpass" ErrorMessage="Fill the Blanks!" ValidationGroup="1"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="Label5" runat="server" Text="Confirm Password: "></asp:Label>
        <asp:TextBox ID="txtcpass" CssClass="box" runat="server" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtcpass" ErrorMessage="Fill the Blanks!" ValidationGroup="1"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="lblEror" runat="server" Text="Label" Visible="False"></asp:Label>
        <p>
            <asp:Button ID="btnreg" CssClass="button" runat="server" ValidationGroup="1" OnClick="btnreg_Click" Text="Register" Width="124px"  />
            <asp:Button ID="rtrlog" CssClass="button" runat="server" OnClick="rtrlog_Click" Text="Have an Account?" Width="205px" />
           
        </p>
    </form>
</body>
</html>
