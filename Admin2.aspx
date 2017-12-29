<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin2.aspx.cs" Inherits="Admin2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">  
    <title></title>  
    <style type="text/css">  
        /* Dropdown Button */
       .dropbtn {
    background-color: #4CAF50;
    color: white;
    padding: 16px;
    font-size: 16px;
    border: none;
    cursor: pointer;
}

/* The container <div> - needed to position the dropdown content */
.dropdown {
    position: relative;
    display: inline-block;
            top: 0px;
            left: 197px;
            width: 859px;
        }

/* Dropdown Content (Hidden by Default) */
.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 160px;
    
    z-index: 1;
}

/* Links inside the dropdown */
.dropdown-content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
     width: 901px;
}

/* Change color of dropdown links on hover */
.dropdown-content a:hover {background-color: #f1f1f1}

/* Show the dropdown menu on hover */
.dropdown:hover .dropdown-content {
    display: block;
    font-family: 'Microsoft YaHei Light';
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
    top: 32%;
    left: 21%;
    width: 111%;
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
 
<h2 align="center" 
        
        
        style="font-family: 'Microsoft YaHei Light'; font-size: 50px; color: #FFFFFF; font-variant: normal; font-style: normal; font-weight: lighter; width: 1339px;">Admin Page</h2>
    <form id="form1" runat="server">  
  


 <div class="dropdown" align="center">
  <div class="dropdown-content">
    <a href="Recieved.aspx">Recieved Resumes</a>
    <a href="Shortlist.aspx">Shortlisted Resumes</a>
    <a href="Selected.aspx">Selected Resumes</a>
   
  </div>
  <button class="dropbtn" 
         
         style="font-family: 'Leelawadee UI Semilight'; font-size: medium; color: #FFFFFF; width: 901px;">Resume Tracker</button>
</div>
<p align="center" 
        style="font-size: 100px; font-family: 'Microsoft JhengHei UI Light'; font-weight: lighter; color: #FFFFFF;">Welcome,Admin</p>
       <br />
       <div align="center" style="height: 56px; width: 1293px">
 <asp:Button ID="Button2" runat="server" class="dropbtn" CausesValidation="False"
        Text="Log Out" onclick="btnSave_Click2" Height="53px" Width="165px" /><br /><br /></div>
    </form>  
   
</body>  
</html> 
