<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AMP.aspx.cs" Inherits="AMP" %>

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
    <div>
    
        Top Approved - Dissaproved Professors</div>
        <asp:GridView ID="gridView" CssClass="AceTab"  runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" >
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Rateg" HeaderText="Rateg" SortExpression="Rateg" />
                <asp:BoundField DataField="Name_Surname" HeaderText="Name_Surname" SortExpression="Name_Surname" />
                 <asp:TemplateField>
                <ItemTemplate>
                 <img src='data:image/jpg;base64,<%# Eval("Picture") != System.DBNull.Value ? Convert.ToBase64String((byte[])Eval("Picture")) : string.Empty %>' alt="image" height="50" width="50"/>
                 </ItemTemplate>
                     </asp:TemplateField>
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Ceng396_TermConnectionString %>" SelectCommand="SELECT [Name_Surname], [Picture], [Rateg] FROM [AcademicMem]"></asp:SqlDataSource>
    </form>
</body>
</html>
