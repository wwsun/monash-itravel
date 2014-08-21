<%@ Page Title="" Language="C#" MasterPageFile="~/master/MasterPage.master" AutoEventWireup="true" CodeFile="SearchRecords.aspx.cs" Inherits="private_SearchRecords" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PhotoSlideHolder" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentHolder" runat="Server">

    <div class="page-header">
        <h1>Search Records:</h1>
    </div>
    <div class="row">
        <div class="col-md-4">
            <asp:TextBox ID="txbTitle" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="col-md-2">
            <asp:Button ID="btnTitle" runat="server" Text="Search from title" OnClick="btnTitle_Click" CssClass="btn btn-default" />
        </div>
    </div>
    <!--search input-->
    <br />
    <div class="row">
        <div class="col-md-8">
            <div class="panel panel-default">
                <div class="panel-heading">Search results</div>
                <asp:GridView ID="GridView1" runat="server" DataSourceID="SourceSearch"
                    CssClass="table table-hover" BorderStyle="None" GridLines="None">
                </asp:GridView>
                <asp:SqlDataSource ID="SourceSearch" runat="server" ProviderName="System.Data.OleDb"
                    ConnectionString="<%$ ConnectionStrings:id25467247 %>" SelectCommand="SELECT * FROM [user] 
                WHERE Username = @Username">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="Username" QueryStringField="Username" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>
            <!--search results-->
        </div>
        <div class="col-md-4">
            <div class="list-group">
                <a class="list-group-item active"><b>SOURCE CODES</b></a>
                <a href="ShowCode.aspx?filename=SearchRecords.aspx" class="list-group-item">Search Records</a>             
            </div>
        </div>
    </div>



</asp:Content>

