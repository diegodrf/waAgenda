<%@ Page Title="" Language="C#" MasterPageFile="~/pages/MasterPageMain.Master" AutoEventWireup="true" CodeBehind="contacts.aspx.cs" Inherits="waAgenda.pages.contacts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3>Inserir novo contato</h3>
    <asp:Label ID="Label1" runat="server" Text="Nome"></asp:Label>
    <br />
    <asp:TextBox ID="txbName" runat="server" Width="372px"></asp:TextBox>
    <br />
    <asp:Label ID="Label2" runat="server" Text="E-mail"></asp:Label>
    <br />
    <asp:TextBox ID="txbEmail" runat="server" Width="370px"></asp:TextBox>
    <br />
    <asp:Label ID="Label3" runat="server" Text="Telefone"></asp:Label>
    <br />
    <asp:TextBox ID="txbPhone" runat="server" Width="314px"></asp:TextBox><asp:Button ID="btnSaveContact" runat="server" Text="Salvar" OnClick="btnSaveContact_Click" />
    <h3>Lista de contatos</h3>
    <asp:GridView ID="ContactListGrid" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="ContactsDataSource" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>
    
    <asp:SqlDataSource ID="ContactsDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:AgendaDatabaseConnectionString %>" DeleteCommand="DELETE FROM [Contacts] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Contacts] ([Name], [Email], [Phone]) VALUES (@Name, @Email, @Phone)" SelectCommand="SELECT [Id], [Name], [Email], [Phone] FROM [Contacts]" UpdateCommand="UPDATE [Contacts] SET [Name] = @Name, [Email] = @Email, [Phone] = @Phone WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Phone" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Phone" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
