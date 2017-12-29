<%@ Page Language="C#" AutoEventWireup="true" CodeFile="User.aspx.cs" Inherits="User" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<script runat="server">

   
</script>
<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
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
}
.SomeClass { font-family: "Times New Roman"; font-size: 1.2em; }

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
            height: 754px;
                width: 1454px;
                margin-left: 0px;
            }
            .centerBlock {
    position: fixed;
    top: 30%;
    left: 43%;
    width: 50%;
    height: 200px;
    margin: -100px 0 0 -25%;
     background-color:#6666ff;
    
}
h2.headertekst {
  text-align: center;
  font-family:Arial;
   color:#003300;
}
.font1
{
    font-family:"Malgun Gothic Semilight";
     color:White;
    
}
        </style>
    <title></title>
</head>
<body bgcolor="#006666">
 <h3 align="center" 
        
        
        
        style="width: 672px; margin-left: 302px; font-family: 'Malgun Gothic Semilight'; text-decoration: underline blink; font-weight: lighter; color: #FFFFFF; font-size: 50px;">Welcome,User</h3>
    <form id="form1" runat="server">
    <div >
    <table align="center" style="height: 427px">
            <tr>
                <td colspan="3">
                    <h3 class="headertekst" align="left" 
                        
                        style="font-family: 'Malgun Gothic Semilight'; font-weight: lighter; font-size: xx-large; color: #FFFFFF">Upload Resume</h3>
                </td>
            </tr>
            <tr>
                <td>
                   
                 <asp:Label ID="Label1" runat="server" Text="Name of the Candidate:" 
                        Width="252px"  class="font1" ForeColor="White" 
                        Font-Names="Microsoft New Tai Lue"></asp:Label>
                    </td>
                <td>
                    <asp:TextBox ID="txt_Cname" runat="server" Width="150px" 
                        Font-Names="Microsoft New Tai Lue" ForeColor="Black"></asp:TextBox>
                </td>
                <td><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ErrorMessage="Enter Candidate Name" ControlToValidate="txt_Cname" 
                        ForeColor="#4CAF50" Font-Names="Microsoft New Tai Lue"></asp:RequiredFieldValidator> </td>
            </tr>
             <tr>
                <td>
                   
                 <asp:Label ID="Label4" runat="server" Text="Total Experience:"  
                        Width="245px"   class="font1" ForeColor="White" 
                        Font-Names="Microsoft New Tai Lue"></asp:Label>
                    </td>
                <td>
                    <asp:TextBox ID="txt_Exp" runat="server" Width="150px" 
                        Font-Names="Microsoft New Tai Lue"></asp:TextBox>
                </td>
                <td><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ErrorMessage="Enter Total Experience" ControlToValidate="txt_Exp" 
                        ForeColor="#4CAF50" Font-Names="Microsoft New Tai Lue"></asp:RequiredFieldValidator> </td>
            </tr>
             <tr>
                <td>
                   
                 <asp:Label ID="Label5" runat="server" Text="Key Skills:"  
                        Width="252px"  class="font1" Font-Names="Microsoft New Tai Lue"></asp:Label>
                    </td>
                <td>
                    <asp:TextBox ID="txt_Skills" runat="server" Width="150px" 
                        Font-Names="Microsoft New Tai Lue"></asp:TextBox>
                </td>
                <td><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ErrorMessage="Enter UserName" ControlToValidate="txt_Skills" 
                        ForeColor="#4CAF50" Font-Names="Microsoft New Tai Lue"></asp:RequiredFieldValidator> </td>
            </tr>
             <tr>
                <td>
                   
                 <asp:Label ID="Label6" runat="server" Text="Previous Company:"  
                        Width="242px"  class="font1" Font-Names="Microsoft New Tai Lue"></asp:Label>
                    </td>
                <td>
                    <asp:TextBox ID="txt_PrevComp" runat="server" Width="150px" 
                        Font-Names="Microsoft New Tai Lue"></asp:TextBox>
                </td>
                <td><asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ErrorMessage="Enter Previous Company Name" ControlToValidate="txt_PrevComp" 
                        ForeColor="#4CAF50" Font-Names="Microsoft New Tai Lue"></asp:RequiredFieldValidator> </td>
            </tr>
             <tr>
                <td>
                   
                 <asp:Label ID="Label7" runat="server" Text="Current CTC:"  
                        Width="241px"  class="font1" Font-Names="Microsoft New Tai Lue"></asp:Label>
                    </td>
                <td>
                    <asp:TextBox ID="txt_CTC" runat="server" Width="150px" 
                        Font-Names="Microsoft New Tai Lue"></asp:TextBox>
                </td>
                <td><asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ErrorMessage="Enter Current CTC" ControlToValidate="txt_CTC" 
                        ForeColor="#4CAF50" Font-Names="Microsoft New Tai Lue"></asp:RequiredFieldValidator> </td>
            </tr>
             <tr>
                <td>
                   
                 <asp:Label ID="Label8" runat="server" Text="Notice Period:"  
                        Width="242px"  class="font1" Font-Names="Microsoft New Tai Lue"></asp:Label>
                    </td>
                <td>
                    <asp:TextBox ID="txt_NoticePer" runat="server" Width="150px" 
                        Font-Names="Microsoft New Tai Lue"></asp:TextBox>
                </td>
                <td><asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                        ErrorMessage="Enter Notice Period" ControlToValidate="txt_NoticePer" 
                        ForeColor="#4CAF50" Font-Names="Microsoft New Tai Lue"></asp:RequiredFieldValidator> </td>
            </tr>
             <tr>
                <td>
                   
                 <asp:Label ID="Label9" runat="server" Text="Location:"  
                        Width="242px"  class="font1" Font-Names="Microsoft New Tai Lue"></asp:Label>
                    </td>
                <td>
                    <asp:TextBox ID="txt_Loc" runat="server" Width="150px" 
                        Font-Names="Microsoft New Tai Lue"></asp:TextBox>
                </td>
                <td><asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                        ErrorMessage="Enter your Location" ControlToValidate="txt_Loc" 
                        ForeColor="#4CAF50" Font-Names="Microsoft New Tai Lue"></asp:RequiredFieldValidator> </td>
            </tr>
             <tr>
                <td>
                   
                 <asp:Label ID="Label10" runat="server" Text="Class X marks:"  
                        Width="241px"   class="font1" Font-Names="Microsoft New Tai Lue"></asp:Label>
                    </td>
                <td>
                    <asp:TextBox ID="txt_TenScore" runat="server" Width="150px" 
                        Font-Names="Microsoft New Tai Lue"></asp:TextBox>
                </td>
                <td><asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                        ErrorMessage="Enter Class X marks" ControlToValidate="txt_TenScore" 
                        ForeColor="#4CAF50" Font-Names="Microsoft New Tai Lue"></asp:RequiredFieldValidator> </td>
            </tr>
             <tr>
                <td>
                   
                 <asp:Label ID="Label11" runat="server" Text="Class XI marks:"  
                        Width="238px"  class="font1" Font-Names="Microsoft New Tai Lue"></asp:Label>
                    </td>
                <td>
                    <asp:TextBox ID="txt_TwelveScore" runat="server" Width="150px" 
                        Font-Names="Microsoft New Tai Lue"></asp:TextBox>
                </td>
                <td><asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                        ErrorMessage="Enter Class XI marks" ControlToValidate="txt_TwelveScore" 
                        ForeColor="#4CAF50" Font-Names="Microsoft New Tai Lue"></asp:RequiredFieldValidator> </td>
            </tr>
             <tr>
                <td>
                   
                 <asp:Label ID="Label12" runat="server" Text="Graduation Marks:"  
                        Width="241px"  class="font1" Font-Names="Microsoft New Tai Lue"></asp:Label>
                    </td>
                <td>
                    <asp:TextBox ID="txt_Grad" runat="server" Width="150px" 
                        Font-Names="Microsoft New Tai Lue"></asp:TextBox>
                </td>
                <td><asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                        ErrorMessage="Enter Graduation Marks" ControlToValidate="txt_Grad" 
                        ForeColor="#4CAF50" Font-Names="Microsoft New Tai Lue"></asp:RequiredFieldValidator> </td>
            </tr>
             <tr>
                <td>
                   
                 <asp:Label ID="Label13" runat="server" Text="Enter E-mail:" Width="100px"  
                        class="font1" Font-Names="Microsoft New Tai Lue"></asp:Label>
                     <asp:RegularExpressionValidator ID="RxvEmail" runat="server" ControlToValidate="txt_Email"
                        ErrorMessage="Invalid E-mail" ForeColor="#4CAF50" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                        Font-Names="Microsoft New Tai Lue"></asp:RegularExpressionValidator></td>
                <td>
                    <asp:TextBox ID="txt_Email" runat="server" Width="150px" 
                        Font-Names="Microsoft New Tai Lue"></asp:TextBox>
                </td>
                <td><asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                        ErrorMessage="Enter E-Mail" ControlToValidate="txt_Email" 
                        ForeColor="#4CAF50" Font-Names="Microsoft New Tai Lue"></asp:RequiredFieldValidator> </td>
            </tr>
             <tr>
                <td>
                   
                 <asp:Label ID="Label14" runat="server" Text="Enter Phone Number:"  
                        Width="178px" class="font1" Font-Names="Microsoft New Tai Lue"></asp:Label>
                    <asp:RegularExpressionValidator ID="RxvMobile" runat="server" ErrorMessage="Invalid Mobile Number"
                        ForeColor="#4CAF50" ValidationExpression="^([7-9]{1})([0-9]{9})$" 
                        ControlToValidate="txt_Phone" Font-Names="Microsoft New Tai Lue"></asp:RegularExpressionValidator>
                    </td>
                <td>
                    <asp:TextBox ID="txt_Phone" runat="server" Width="150px" 
                        Font-Names="Microsoft New Tai Lue"></asp:TextBox>
                </td>
                <td><asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                        ErrorMessage="Enter Phone Number" ControlToValidate="txt_Phone" 
                        ForeColor="#4CAF50" Font-Names="Microsoft New Tai Lue"></asp:RequiredFieldValidator> </td>
            </tr>
            
            <asp:Label ID="lblMessage" runat="server" Text=""
Font-Names = "Arial"></asp:Label>

 </table>
 </div>
 <br />
 <div align="center" 
        style="font-family: 'Malgun Gothic Semilight'; font-size: medium; height: 278px; width: 668px; margin-left: 302px;">


<asp:FileUpload ID="FileUpload1" runat="server" Height="23px" Width="226px" 
         ForeColor="#4CAF50" Font-Names="Microsoft New Tai Lue"/>
<br />

                    <asp:Label ID="lblmsg" runat="server" ForeColor="#4CAF50" 
         Font-Names="Microsoft New Tai Lue"></asp:Label><br /><br />
                        <asp:Label ID="Label2" runat="server" ForeColor="#4CAF50" 
         Font-Names="Microsoft New Tai Lue"></asp:Label><br /><br />
                    <asp:Button ID="Button1" runat="server" class="dropbtn"
        Text="Save Details" onclick="btnSave_Click" 
         Font-Names="Microsoft New Tai Lue" /><br /><br />
 <asp:Button ID="Button2" runat="server" class="dropbtn" CausesValidation="False"
        Text="Log Out" onclick="btnSave_Click2" 
         Font-Names="Microsoft New Tai Lue" /><br /><br />
        </div>
         </form>
</body>
</html>
