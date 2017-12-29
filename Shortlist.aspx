<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Shortlist.aspx.cs" Inherits="Shortlist" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
    </style>  
</head>
<body bgcolor="#006666">
    <form id="form1" runat="server">
    <h2 align="center" 
        
        style="font-family: 'Microsoft YaHei UI Light'; font-size: 50px; text-decoration: underline; color: #FFFFFF; width: 1299px; font-weight: lighter;">Resume Tracker</h2>
    <div align="center" style="width: 1351px">
    <br /><br />
     <asp:GridView ID="GridView1" runat="server" HeaderStyle-BackColor="#3AC0F2" HeaderStyle-ForeColor="White"  
            RowStyle-BackColor="#A1DCF2" AlternatingRowStyle-BackColor="White" AlternatingRowStyle-ForeColor="#000"  
            AutoGenerateColumns="false"  AutoGenerateSelectButton="True" 
            Height="225px" Width="527px" 
            BackColor="Blue" BorderColor="#666666" 
            ForeColor="White" Caption="Level 2: Shortlisted Resumes" 
            style="margin-left: 0px" Font-Names="Microsoft New Tai Lue" HorizontalAlign="Center" 
            >  
<AlternatingRowStyle BackColor="#006666" ForeColor="White" 
             Font-Names="Microsoft JhengHei Light"></AlternatingRowStyle>
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
                        <asp:LinkButton ID="lnkEdit" runat="server" HeaderText="Edit Status" Text="Edit Application" 
                         CommandArgument='<%# Eval("CName") %>'
    OnCommand="lnkRequestID_Click" ForeColor="White"></asp:LinkButton>  
                    </ItemTemplate>  

<ItemStyle HorizontalAlign="Center"></ItemStyle>
                </asp:TemplateField>  
            </Columns>  
             <EditRowStyle BackColor="#00CC99" 
             Font-Names="Microsoft JhengHei UI Light" />

<HeaderStyle BackColor="#4CAF50" ForeColor="White"></HeaderStyle>

<RowStyle BackColor="#006666"></RowStyle>

             <selectedrowstyle backcolor="#4CAF50"
         forecolor="White"
         font-bold="true"/> 
     </asp:GridView>  
    </div>
    <br />
    <br />
    <div style="width: 1306px"  align="center">
    <asp:Button ID="Button2" runat="server" onclick="Button1_Click2" Text="Back" 
        Height="47px" Width="115px" CssClass="dropbtn" ForeColor="White"  />
        </div>
    </form>
</body>
</html>
