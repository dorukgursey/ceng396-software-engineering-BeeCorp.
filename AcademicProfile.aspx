<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AcademicProfile.aspx.cs" Inherits="AcademicProfile" %>

<!DOCTYPE html>
 <style>
     .Txt {
         padding-left: 0;
         padding-top: 0;
         padding-bottom: 0.4em;
         padding-right: 0.4em;
     }
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
    <div>
    
        <asp:Image ID="Image1" runat="server" Height="146px" Width="138px" />
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            
    </div>
        <asp:Label ID="Label2" runat="server" Text="İsim"></asp:Label>
        <p>
            <asp:Label ID="lblfac" runat="server" Text="Label"></asp:Label>
        </p>
        <asp:Label ID="lbldep" runat="server" Text="Label"></asp:Label>
        <p>
            <asp:Button ID="btnapprove" CssClass="button" runat="server" OnClick="btnapprove_Click" Text="Approve" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btndisapprove" CssClass="button" runat="server" OnClick="btndisapprove_Click" Text="Disapprove" />
        </p>

        <div style ="height:282px;margin-left:4px;margin-top:0px;">
            <table>
                <tr>
                    <td>Comment Subject:</td>
                    <td><asp:TextBox ID ="txtSub" CssClass="box" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td valign="top">Comments:</td>
                    <td><asp:TextBox ID="txtcomment" CssClass="box" runat="server" Rows="7" Columns="30" TextMode="MultiLine" Width="391px" /></td>
                </tr>
                <tr>
                    <td>
        <asp:Button ID="btnhome" CssClass="button" runat="server" Text="Home Page" OnClick="btnhome_Click" />
    
                    </td>
                    <td><asp:Button ID="btncomment" CssClass="button" runat="server" Text="Comment" onclick="btncomment_Click" />
                        <asp:Label ID="lblguest" runat="server" Text="Guests can't interact." Visible="False"></asp:Label>
                    </td>
                </tr>
            </table>
            <asp:Label ID="lbltemp" runat="server" Text="Label" Visible="False"></asp:Label>
       </div>
        <div style="margin-left:8px;margin-top:10px;">
        <asp:Repeater ID="rep1" runat="server"></asp:Repeater>
            <HeaderTemplate>
                <table cellpadding="0">
                    <tr>
                        <td colspan="2">
                            <b>Post a Feedback, Comment, or Question</b>
                        </td>
                    </tr>
                    </table>
            </HeaderTemplate>
            <ItemTemplate>
                <tr>
                    <td>
                        <table>
                            <td>
                        <asp:Label ID ="Label5" runat="server" Font-Bold="true" Text='<%#Eval("Username") %>'/>
                        <asp:Label ID ="lblSubject" runat="server" Text='<%# Eval("Subject")%>' Font-Bold="true"/>

                    </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td>
                        <table>
                            <tr>
                                <td>
                                    <asp:Label ID="lblComment" runat="server" Text='<%#Eval("Comment")%>' />
                                    <asp:GridView ID="grdAlperComment" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" >
                                        <Columns>
                                            <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                                            <asp:BoundField DataField="Subject" HeaderText="Subject" SortExpression="Subject" />
                                            <asp:BoundField DataField="Comment" HeaderText="Comment" SortExpression="Comment" />
                                        </Columns>
                                        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                                        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                        <SortedAscendingCellStyle BackColor="#F7F7F7" />
                                        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                                        <SortedDescendingCellStyle BackColor="#E5E5E5" />
                                        <SortedDescendingHeaderStyle BackColor="#242121" />
                                    </asp:GridView>
                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Ceng396_TermConnectionString %>" SelectCommand="SELECT [Username], [Subject], [Comment] FROM [CommentSection]"></asp:SqlDataSource>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                
            </ItemTemplate>
            <FooterTemplate>
                </table>
            </FooterTemplate>
            </asp Repeater>
        </div>
        <asp:Label ID="lblAlper" runat="server" Text="Label" Visible="False"></asp:Label>
    </form>
</body>
</html>
