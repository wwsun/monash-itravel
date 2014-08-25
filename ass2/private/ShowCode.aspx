<%@ Page Title="" Language="C#" MasterPageFile="~/master/MasterPage.master" AutoEventWireup="true" CodeFile="ShowCode.aspx.cs" Inherits="private_ShowCode" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PhotoSlideHolder" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentHolder" runat="Server">
    <div class="page-header">
        <h1>Checking the source code</h1>
    </div>
    
    <div class="row">
        <div class="col-md-2">
            <div class="list-group">
                <a href="#" class="list-group-item active">SOURCE CODE
                </a>
                <a href="#codeHere" class="list-group-item">CS FILE</a>
                <a href="#pageHere" class="list-group-item">ASPX FILE</a>
            </div>
        </div>
        <div class="col-md-10">
            <div id="codeHere">

                <h3>
                    <asp:Label ID="CodeName" runat="server"></asp:Label></h3>
                <asp:Panel ID="PnlCsCode" runat="server">
                    <pre>
                    <asp:Label ID="CsCode" runat="server"></asp:Label>
                </pre>
                </asp:Panel>
            </div>

            <div id="pageHere">

                <h3>
                    <asp:Label ID="FileName" runat="server"></asp:Label></h3>
                <asp:Panel ID="PnlCode" runat="server">
                    <pre>
                    <asp:Label ID="Code" runat="server"></asp:Label>
                </pre>
                </asp:Panel>
            </div>
        </div>
    </div>
</asp:Content>

