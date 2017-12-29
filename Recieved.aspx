<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Recieved.aspx.cs" Inherits="Recieved" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
  <style type="text/css">  
         /* Dropdown Button */
       .dropbtn {
    background-color:#4CAF50;
    color: Blue;
    padding: 16px;
    font-size: 16px;
    border: none;
    cursor: pointer;
}

/* The container <div> - needed to position the dropdown content */
.dropdown {
    position: relative;
    display: inline-block;
}

/* Dropdown Content (Hidden by Default) */
.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
}

/* Links inside the dropdown */
.dropdown-content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
}

/* Change color of dropdown links on hover */
.dropdown-content a:hover {background-color: #f1f1f1}

/* Show the dropdown menu on hover */
.dropdown:hover .dropdown-content {
    display: block;
}

/* Change the background color of the dropdown button when the dropdown content is shown */
.dropdown:hover .dropbtn {
    background-color: #3e8e41;
}
        #form1
        {
            height: 544px;
        }
                    .centerBlock {
    position: fixed;
    top: 62%;
    left: 48%;
    width: 50%;
    height: 111px;
    margin: -100px 0 0 -25%;
    
    
}
h2.headertekst {
  text-align: center;
  font-family:Arial;
   color:#003300;
}
.font1
{
    font-family:"Arial";
     color:#003300;
    
}
.Grid {background-color: #fff; margin: 5px 0 10px 0; border: solid 1px #525252; border-collapse:collapse; font-family:Calibri; color: #474747;}
.Grid td {
      padding: 2px;
      border: solid 1px #c1c1c1; }
.Grid th  {
      padding : 4px 2px;
      color: #fff;
      background: #363670 url(Images/grid-header.png) repeat-x top;
      border-left: solid 1px #525252;
      font-size: 0.9em; }
.Grid .alt {
      background: #fcfcfc url(Images/grid-alt.png) repeat-x top; }
.Grid .pgr {background: #363670 url(Images/grid-pgr.png) repeat-x top; }
.Grid .pgr table { margin: 3px 0; }
.Grid .pgr td { border-width: 0; padding: 0 6px; border-left: solid 1px #666; font-weight: bold; color: #fff; line-height: 12px; }  
.Grid .pgr a { color: Gray; text-decoration: none; }
.Grid .pgr a:hover { color: #000; text-decoration: none; }
    </style>  
<body bgcolor="#006666">
<h2 align="center" 
        
        
        
        
        style="font-family: 'Microsoft JhengHei UI Light'; text-decoration: underline; font-size: 50px; color: #FFFFFF; font-weight: lighter; width: 1361px; margin-left: 0px;">Resume Tracker</h2>
    <form id="form1" runat="server">
    <div align="center">
    <asp:GridView ID="GridView" runat="server" HeaderStyle-BackColor="#3AC0F2" HeaderStyle-ForeColor="White"  
            RowStyle-BackColor="#A1DCF2" AlternatingRowStyle-BackColor="White" AlternatingRowStyle-ForeColor="#000"  
            AutoGenerateColumns="false" AutoGenerateSelectButton="True" 
            EnableHeadersVisualStyles="False" Height="255px" Width="761px" 
            BackColor="#4CAF50" Caption="Level 3: Resumes Received" 
            ForeColor="White" BorderColor="#666666" 
            style="margin-left: 85px" Font-Names="Microsoft YaHei UI Light" 
            EnableTheming="True" HorizontalAlign="Center"    
            >  
<AlternatingRowStyle BackColor="#006666" ForeColor="White" BorderColor="#666666" 
            Font-Names="Malgun Gothic Semilight"></AlternatingRowStyle>
         <Columns>  
               <asp:BoundField DataField="id" HeaderText="ID" /> 
                <asp:BoundField DataField="CName" HeaderText="Name" /> 
                <asp:BoundField DataField="Exp" HeaderText="Experience" /> 
                <asp:BoundField DataField="Skills" HeaderText="Skills" /> 
                <asp:BoundField DataField="PrevComp" HeaderText="Previous Company" /> 
                <asp:BoundField DataField="CTC" HeaderText="Current CTC" /> 
                <asp:BoundField DataField="NoticePer" HeaderText="Notice Period" /> 
                <asp:BoundField DataField="Loc" HeaderText="Location" /> 
                <asp:BoundField DataField="TenScore" HeaderText="Tenth Score" /> 
                <asp:BoundField DataField="TwelveScore" HeaderText="Twelve Score" /> 
                <asp:BoundField DataField="Grad" HeaderText="Graduation Score" /> 
                <asp:BoundField DataField="Email" HeaderText="E-Mail" /> 
                <asp:BoundField DataField="Phone" HeaderText="Phone" />  
                <asp:BoundField DataField="Name1" HeaderText="File Name" /> 
                
                 <asp:TemplateField ItemStyle-HorizontalAlign="Center">  
                    <ItemTemplate>  
                        <asp:LinkButton ID="lnkEdit" runat="server" HeaderText="Edit Status"  DataKeyName = "CName" Text="Edit Application" CommandArgument='<%# Eval("CName") %>'
    OnCommand="lnkRequestID_Click" ForeColor="White"></asp:LinkButton>  
                    </ItemTemplate>  

<ItemStyle HorizontalAlign="Center"></ItemStyle>
                </asp:TemplateField>  
            </Columns>  
             <EditRowStyle BackColor="#666666" BorderColor="#666666" 
            BorderStyle="Solid" />

<HeaderStyle BackColor="#4CAF50" ForeColor="White" BorderColor="#666666"></HeaderStyle>

<RowStyle BackColor="#006666" BorderColor="#666666"></RowStyle>

             <selectedrowstyle backcolor="#4CAF50"
             
         forecolor="White"
         font-bold="true"/> 
     </asp:GridView>
    </div>
    <br /><br />
    <div align="center" style="width: 1353px">
    <asp:Button ID="Button2" runat="server" onclick="Button1_Click2" Text="Back" 
            CssClass="dropbtn" Height="51px" Width="117px" ForeColor="White" 
            BackColor="#4CAF50" />
    </div>
    </form>
</body>
</html>
