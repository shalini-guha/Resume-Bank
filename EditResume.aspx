<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EditResume.aspx.cs" Inherits="EditResume" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

 
  
<html xmlns="http://www.w3.org/1999/xhtml">  
<head id="Head1" runat="server">  
    <title></title>  
</head>  
<body bgcolor="#006666">  
    <form id="form1" runat="server">  
    <div align="center"> 
     <h2 align="center" 
        
        
            style="font-family: 'Microsoft YaHei UI Light'; font-size: 50px; text-decoration: underline; color: #FFFFFF; width: 935px; font-weight: lighter;">Interview Details</h2> 
    <table>  
     <tr>  
                <th width="18%" 
                    style="font-family: &quot;Microsoft YaHei UI Light&quot;; font-size: medium; font-weight: lighter; color: #FFFFFF">Enter ID</th>  
                <th width="3%">:</th>  
                <td>  
                     <asp:Label ID="Label2" runat="server" Font-Names="Microsoft JhengHei UI Light" 
                         ForeColor="White"></asp:Label>
                </td>  
                <th width="18%" 
                    style="font-family: 'Microsoft JhengHei UI Light'; font-size: medium; font-weight: lighter; color: #FFFFFF">Name of the Candidate</th>  
                <th width="3%">:</th>  
                <td>  
                 <asp:Label ID="Label1" runat="server" Font-Names="Microsoft JhengHei UI Light" 
                        ForeColor="White"></asp:Label>
                </td>  
            </tr>  
             <tr>  
                <th width="18%" 
                     style="color: #FFFFFF; font-family: 'Microsoft JhengHei UI Light'; font-size: medium; font-weight: lighter">Interview Date</th>  
                <th width="3%">:</th>  
                <td>  
                    <asp:Calendar ID="Calendar1" runat="server" BackColor="#006666" 
                        BorderColor="White" BorderWidth="1px" 
                        Font-Names="Microsoft JhengHei UI Light" Font-Size="9pt" 
                        ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="350px">
                        <DayHeaderStyle Font-Bold="True" Font-Size="8pt" BackColor="#4CAF50" />
                        <DayStyle ForeColor="White" />
                        <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" 
                            VerticalAlign="Bottom" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#4CAF50" ForeColor="White" />
                        <TitleStyle BackColor="#4CAF50" BorderColor="Black" 
                            Font-Bold="True" Font-Size="12pt" ForeColor="Black" BorderStyle="None" />
                        <TodayDayStyle BackColor="#4CAF50" ForeColor="White" />
                    </asp:Calendar>
                </td>  
            </tr>  
             <tr>  
                <th width="18%" 
                     style="color: #FFFFFF; font-family: 'Microsoft JhengHei UI Light'; font-size: medium; font-weight: lighter">Interview Time(HH:MM:SS)</th>  
                <th width="3%">:</th>  
                <td>  

                    <asp:TextBox ID="TextBox2" runat="server" style="margin-left: 0px" 
                        Width="185px" BorderStyle="None" Font-Names="Microsoft JhengHei UI Light" 
                        ForeColor="Black" Height="30px"></asp:TextBox>

                    </td>  
            </tr>  
            <tr>  
                <th width="18%" 
                    style="font-family: 'Microsoft JhengHei UI Light'; color: #FFFFFF; font-size: medium; font-weight: lighter">Mode of interview</th>  
                <th width="3%">:</th>  
                <td>  
                    <asp:DropDownList ID="Mode" runat="server" Width="185px" Height="30px" 
                        AutoPostBack="true" style="margin-left: 0px" 
                        Font-Names="Microsoft JhengHei UI Light" ForeColor="Black">  
                        <asp:ListItem>--Select--</asp:ListItem>  
                        <asp:ListItem>Telephonic</asp:ListItem>  
                        <asp:ListItem>Face to Face</asp:ListItem>  
                        <asp:ListItem>VC</asp:ListItem>   
                    </asp:DropDownList>  
                </td>  
            </tr>  
            <tr>  
                <th width="18%" 
                    style="font-family: 'Microsoft YaHei UI Light'; font-size: medium; font-weight: lighter; color: #FFFFFF">Status</th>  
                <th width="3%">:</th>  
                <td>  
                    <asp:DropDownList ID="Status" runat="server" Width="185px" Height="30px" 
                        AutoPostBack="true" Font-Names="Microsoft JhengHei UI Light" >  
                        <asp:ListItem>--Select--</asp:ListItem>  
                        <asp:ListItem>Shortlisted</asp:ListItem>  
                        <asp:ListItem>On Hold</asp:ListItem>  
                        <asp:ListItem>Rejected</asp:ListItem>   
                    </asp:DropDownList>  
                </td>  
            </tr>  
           
                </table>  
    </div>  
    <div align="center"><br />
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click1" Text="Save" 
            BackColor="#4CAF50" BorderStyle="None" Font-Names="Microsoft JhengHei UI Light" 
            ForeColor="White" Height="47px" Width="109px" /><br /><br />
    <asp:Label ID="lblmsg" runat="server" ForeColor="White"></asp:Label><br /><br />
    <asp:Button ID="Button2" runat="server" onclick="Button1_Click2" Text="Back" 
            BackColor="#4CAF50" BorderStyle="None" Font-Names="Microsoft JhengHei UI Light" 
            ForeColor="White" Height="47px" Width="109px" /><br /><br />
    </div>
    </form>  
</body>  
</html> 
