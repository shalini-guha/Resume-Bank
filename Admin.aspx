<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Default2" %>
<!DOCTYPE html>  
  
<html xmlns="http://www.w3.org/1999/xhtml">  
<head id="Head1" runat="server">  
    <title>All Recieved Resumes</title>  
    <style type="text/css">  
        body{  
            font-family:Arial;  
            font-size:20px;  
        }  
  
        td,th{  
  
            height:25px;  
            width:100Px;  
        }  
    </style>  
</head>  
<body>  
    <form id="form1" runat="server">  
    <div>  
    <p align="center">All Resumes</p><br /><br /
    <p>Level 3: Resumes Recieved</p>
    <asp:GridView ID="GridView" runat="server" HeaderStyle-BackColor="#3AC0F2" HeaderStyle-ForeColor="White"  
            RowStyle-BackColor="#A1DCF2" AlternatingRowStyle-BackColor="White" AlternatingRowStyle-ForeColor="#000"  
            AutoGenerateColumns="false" Height="225px" Width="929px" 
            >  
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
                <asp:BoundField DataField="Status" HeaderText="Status" />  
                 <asp:TemplateField ItemStyle-HorizontalAlign="Center">  
                    <ItemTemplate>  
                        <asp:LinkButton ID="lnkEdit" runat="server" HeaderText="Edit Status" Text="Edit Application" OnClick="EditFile"  
                            CommandArgument='<%# Eval("Status") %>'></asp:LinkButton>  
                    </ItemTemplate>  
                </asp:TemplateField>  
            </Columns>  

     </asp:GridView> 
     <br /><br />
     <p>Level 2: Resumes Shortlisted</p> 
      <asp:GridView ID="GridView1" runat="server" HeaderStyle-BackColor="#3AC0F2" HeaderStyle-ForeColor="White"  
            RowStyle-BackColor="#A1DCF2" AlternatingRowStyle-BackColor="White" AlternatingRowStyle-ForeColor="#000"  
            AutoGenerateColumns="false" Height="225px" Width="929px" 
            >  
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
                <asp:BoundField DataField="Status" HeaderText="Status" />  
            
                 <asp:TemplateField ItemStyle-HorizontalAlign="Center">  
                    <ItemTemplate>  
                        <asp:LinkButton ID="lnkEdit" runat="server" HeaderText="Edit Status" Text="Edit Application" OnClick="EditFile1"  
                            CommandArgument='<%# Eval("Status") %>'></asp:LinkButton>  
                    </ItemTemplate>  
                </asp:TemplateField>  
            </Columns>  
     </asp:GridView> 
     <br /><br />
     <p>Level 1: Resumes Selected</p>  
      <asp:GridView ID="GridView2" runat="server" HeaderStyle-BackColor="#3AC0F2" HeaderStyle-ForeColor="White"  
            RowStyle-BackColor="#A1DCF2" AlternatingRowStyle-BackColor="White" AlternatingRowStyle-ForeColor="#000"  
            AutoGenerateColumns="false" Height="225px" Width="928px" 
            >  
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
                        <asp:Label ID="lnkEdit" runat="server" HeaderText="Edit Status" Text="Selected"></asp:Label>  
                    </ItemTemplate>  
                </asp:TemplateField>  
            </Columns>  
     </asp:GridView>  
  
  
  
    </div>  
    </form>  
</body>  
</html>  