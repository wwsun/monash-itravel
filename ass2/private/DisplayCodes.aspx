<%@ Page Title="" Language="C#" MasterPageFile="~/master/MasterPage.master" AutoEventWireup="true" CodeFile="DisplayCodes.aspx.cs" Inherits="private_DisplayCodes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PhotoSlideHolder" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentHolder" runat="Server">

    <h2>Accessing File System</h2>
    <asp:Label ID="fileProp" runat="server" Text="Label"></asp:Label>

    <asp:Label ID="dirProp" runat="server" Text="Label"></asp:Label>

    <h2>Iterating through the Files in a Directory</h2>
    <asp:DataList ID="dlFiles" runat="server" Font-Names="Arial">
        <HeaderStyle Font-Bold="true" />
        <HeaderTemplate>Directory File List</HeaderTemplate>
        <AlternatingItemStyle BackColor="#7DCCF7" />
        <ItemTemplate>
            <a href="DisplayCodes.aspx?filename=<%# Container.DataItem %>" target="_blank">
                <%# Container.DataItem %></a>
        </ItemTemplate>
    </asp:DataList>


    <hr />
    <asp:Label ID="FileName" runat="server"></asp:Label>
    <hr />
    <asp:Panel ID="PnlCode" runat="server">
        <pre>
        <asp:Label ID="Code" runat="server"></asp:Label>
        </pre>
    </asp:Panel>
</asp:Content>

