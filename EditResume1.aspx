<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EditResume1.aspx.cs" Inherits="EditResume1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

 
  
<html xmlns="http://www.w3.org/1999/xhtml">  
<head id="Head1" runat="server">  
    <title></title>  
</head>  
<body bgcolor="#006666">  
    <form id="form1" runat="server"> 
     
    <div align="center">  
     <h2 align="center" 
        
        
            style="font-family: 'Microsoft YaHei UI Light'; font-size: 50px; text-decoration: underline; color: #FFFFFF; width: 935px; font-weight: lighter;">Assessment Details</h2>
    <table style="font-family: 'Microsoft JhengHei UI Light'; color: #FFFFFF">  
     <tr>  
                <th width="18%">Enter ID</th>  
                <th width="3%">:</th>  
                <td>  
                     <asp:Label ID="Label2" runat="server" Width="179px"></asp:Label>
                </td>  
                <th width="18%">Name of the Candidate</th>  
                <th width="3%">:</th>  
                <td style="font-family: 'Microsoft JhengHei UI Light'; color: #FFFFFF">  
                     <asp:Label ID="Label1" runat="server" Width="179px"></asp:Label>
                </td>  
            </tr>  
             <tr>  
                <th width="18%">Technical-(.Net)</th>  
                <th width="3%">:</th>  
               <td>  
                     <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 0px" 
                         Width="179px" Font-Names="Microsoft JhengHei UI Light" ForeColor="Black"></asp:TextBox>
                </td> 
              
            </tr>  
              <tr>  
                <th width="18%">Technical-(DB)</th>  
                <th width="3%">:</th>  
               <td>  
                     <asp:TextBox ID="TextBox5" runat="server" Width="179px" 
                         style="margin-left: 0px" Font-Names="Microsoft JhengHei UI Light"></asp:TextBox>
                </td>  
                 
            </tr>  
              <tr>  
                <th width="18%">Technical-(JS,XML,Others)</th>  
                <th width="3%">:</th>  
               <td>  
                     <asp:TextBox ID="TextBox6" runat="server" style="margin-left: 0px" 
                         Width="179px" Font-Names="Microsoft JhengHei UI Light"></asp:TextBox>
                </td>
               
                
            </tr>  
              <tr>  
                <th width="18%">Attitude</th>  
                <th width="3%">:</th>  
               <td>  
                     <asp:TextBox ID="TextBox7" runat="server" Width="179px" 
                         Font-Names="Microsoft JhengHei UI Light"></asp:TextBox>
                </td> 
               
            </tr>  
              <tr>  
                <th width="18%">Communication</th>  
                <th width="3%">:</th>  
               <td>  
                     <asp:TextBox ID="TextBox8" runat="server" Width="179px" 
                         Font-Names="Microsoft JhengHei UI Light"></asp:TextBox>
                </td>  
                
            </tr>  
              <tr>  
                <th width="18%">Presentation</th>  
                <th width="3%">:</th>  
               <td>  
                     <asp:TextBox ID="TextBox9" runat="server" Width="179px" 
                         Font-Names="Microsoft JhengHei UI Light"></asp:TextBox>
                </td> 
                
  <tr>  
                <th width="18%">Overall</th>  
                <th width="3%">:</th>  
               <td>  
                     <asp:TextBox ID="TextBox10" runat="server" Width="179px" 
                         Font-Names="Microsoft JhengHei UI Light"></asp:TextBox>
                </td>  
               
  <tr>  
                <th width="18%">Remarks</th>  
                <th width="3%">:</th>  
               <td>  
                     <asp:TextBox ID="TextBox11" runat="server" Width="179px" 
                         Font-Names="Microsoft JhengHei UI Light" style="margin-left: 0px"></asp:TextBox>
                </td>  
               
            </tr>  
            </tr>  
            </tr>  
            <tr>  
                <th width="18%">Status</th>  
                <th width="3%">:</th>  
                <td>  
                    <asp:DropDownList ID="Status" runat="server" Width="181px" Height="30px" 
                        AutoPostBack="true" Font-Names="Microsoft JhengHei UI Light" >  
                        <asp:ListItem>--Select--</asp:ListItem>  
                        <asp:ListItem>Selected</asp:ListItem>  
                        <asp:ListItem>On Hold</asp:ListItem>  
                        <asp:ListItem>Rejected</asp:ListItem>   
                    </asp:DropDownList>  
                </td>  
                
            </tr>  
           
                </table>  
    </div>  
    <br /><br />
    <div align="center">
     <asp:Label ID="lblmsg" runat="server" Font-Names="Microsoft JhengHei UI Light" 
        ForeColor="White"></asp:Label><br /><br />
    <asp:Button ID="Button1" runat="server"  Text="Save" onclick="Button1_Click" 
        BackColor="#4CAF50" BorderStyle="None" Font-Names="Microsoft JhengHei UI Light" 
        ForeColor="White" Height="44px" Width="131px" /><br /><br />
   
    <asp:Button ID="Button2" runat="server"  Text="Back" onclick="Button1_Click1" 
        BackColor="#4CAF50" BorderStyle="None" Font-Names="Microsoft JhengHei UI Light" 
        ForeColor="White" Height="44px" Width="131px" /><br />
        </div>
    </form>  
</body>  
</html> 
