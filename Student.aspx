<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Student.aspx.cs" Inherits="Student" %>

<!DOCTYPE html>
<style>
    body{
        
        background-image: url(Pictures/img.jpg);
        background-repeat: no-repeat;
        background-size: cover;
        color:white;
        font-family:Arial;
        font-weight: bold;
       

    }
    a:link{
        text-decoration:none;
        background-color:black;
        color:transparent;
        border-radius:6px;
        display:block;
    width:50px;
    height:20px;
    }
    a:hover{
        background-color:gray;
            color:transparent;
            cursor:pointer;
        
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
        background-color:black;
        color:white;
        border-radius: 5px;
        border:medium;
        
    }
    .AceTab{
        margin-left:auto; 
    margin-right:auto;
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
    <h1>Student Page</h1>
        <h1>
            <asp:Image ID="Image1" runat="server" Height="148px" Width="140px" />
        </h1>
        Name: <asp:Label ID="lblisim" runat="server" Text="İsim"></asp:Label>
&nbsp;<br />
        <br />
        Surname: <asp:Label ID="lblstudentsoyisim" runat="server" Text="soyisim"></asp:Label>
        &nbsp;<br />
        <br />
        StudentID: <asp:Label ID="lblID" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        Department: <asp:Label ID="lbldept" runat="server" Text="dept"></asp:Label>
        <br />
        <br />
        Faculty: <asp:Label ID="lblfaculty" runat="server" Text="Faculty"></asp:Label>
        <br />
        <br />
        YearStarted: <asp:Label ID="lblyearstarted" runat="server" Text="YearStarted"></asp:Label>
&nbsp;<br />
        <br />
        <asp:Button ID="btnhomepage" Cssclass =" button" runat="server" Text="HomePage" OnClick="btnhomepage_Click" />
        <div>
    
    &nbsp;</div>
    </form>
</body>
</html>
