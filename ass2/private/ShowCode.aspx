<%@ Page Title="" Language="C#" MasterPageFile="~/master/MasterPage.master" AutoEventWireup="true" CodeFile="ShowCode.aspx.cs" Inherits="private_ShowCode" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PhotoSlideHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentHolder" Runat="Server">
    <div class="row">
        <div class="col-md-0">
        </div>
        <div class="col-md-12">
            <asp:Label ID="FileName" runat="server"></asp:Label>
            <asp:Panel ID="PnlCode" runat="server">
                <pre>
                    <asp:Label ID="Code" runat="server"></asp:Label>
                </pre>
            </asp:Panel>
        </div>
    </div>
</asp:Content>

