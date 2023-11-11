<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="About.aspx.vb" Inherits="WellnessPlus._About" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <br />

    <img src="Img/Exercise1.png" alt="Exercise">

    <div style="color: #FFFFFF; font-size: 75px;">
    <h3> Sign up for our Newsletter Below!</h3>
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Contact]"></asp:SqlDataSource>
   
    
    <asp:GridView ID="GridView1" runat="server" cssclass="mygrid" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ContactId" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="ContactId" HeaderText="ContactId" ReadOnly="True" SortExpression="ContactId" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
       </div>
    <br />
    <hr />
   <div style="background-color: #0078c1; color: white;"> <div class="wrapper"> 
   <asp:Label ID="lblFname" runat="server" Text="First Name" AssociatedControlID ="txtFname"></asp:Label><asp:TextBox ID="txtFname" runat="server"></asp:TextBox>
      <br /><asp:Label ID="lblEmail" runat="server" Text="Email" AssociatedControlID ="txtEmail"></asp:Label><asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
         <br /><asp:Label ID="lblPhone" runat="server" Text="Phone" AssociatedControlID ="txtPhone"></asp:Label><asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
    <br /><asp:Button ID="Button1" runat="server" Text="Submit" CssClass="formbutton" />
   <br /><asp:Label ID="lblOut" runat="server"></asp:Label>
    </div></div>
</asp:Content>
