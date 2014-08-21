<%@ Page Title="" Language="C#" MasterPageFile="~/master/MasterPage.master" AutoEventWireup="true" CodeFile="services.aspx.cs" Inherits="private_services" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PhotoSlideHolder" runat="Server">
    <hr />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentHolder" runat="Server">
    <div class="row">
        <div class="col-md-3">
            <div class="list-group">
                <a href="#" class="list-group-item active">OPERATIONS
                </a>
                <a href="#searchphoto" class="list-group-item">Search Records</a>
                <a href="#allphoto" class="list-group-item">Display Records</a>
                <a href="#sourcecode" class="list-group-item">Source Codes</a>               
            </div>
        </div>
        <div class="col-md-9">
            <div class="row">
                <h2 id="searchphoto">Search Photos</h2>
                <div class="col-md-4">
                    <asp:TextBox ID="txbTitle" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-md-2">
                    <asp:Button ID="btnTitle" runat="server" Text="Search from title" OnClick="btnTitle_Click" CssClass="btn btn-default" />
                </div>               
            </div><!--search input-->
            <br />
            <div class="panel panel-default">
                <div class="panel-heading">Search results</div>
                <asp:GridView ID="GridView1" runat="server" DataSourceID="SourceSearch"
                    CssClass="table table-hover" BorderStyle="None" GridLines="None">
                </asp:GridView>
                <asp:SqlDataSource ID="SourceSearch" runat="server" ProviderName="System.Data.OleDb"
                    ConnectionString="<%$ ConnectionStrings:id25467247 %>" SelectCommand="SELECT * FROM [product] 
                WHERE Title LIKE '%'+@Title+'%'">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="Title" QueryStringField="Title" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </div><!--search results-->

            <div class="row">
                <h2 id="allphoto">Display All Photos</h2>
            </div>
            <div class="panel panel-default">
                <div class="panel-heading">Display All</div>
                <asp:GridView ID="GridView4" runat="server" DataSourceID="SourceAllPhoto" DataKeyNames="ID"
                    AutoGenerateColumns="False" AllowPaging="True" AllowSorting="True" CssClass="table table-hover" BorderStyle="None" GridLines="None"
                    SelectedRowStyle-BackColor="Yellow">
                    <Columns>
                        <asp:BoundField HeaderText="Title" SortExpression="Title" DataField="Title" />
                        <asp:BoundField HeaderText="PhotoDate" DataField="PhotoDate" />
                        <asp:HyperLinkField DataTextField="ImgUrl" Text="ImgUrl" />
                        <asp:ImageField DataImageUrlField="ImgUrl" HeaderText="ImgUrl">
                        </asp:ImageField>
                        <asp:CommandField ShowEditButton="True" ButtonType="Button" ControlStyle-CssClass="btn btn-default btn-sm" />
                    </Columns>
                </asp:GridView>

                <asp:SqlDataSource ID="SourceAllPhoto" runat="server" ProviderName="System.Data.OleDb"
                    ConnectionString="<%$ ConnectionStrings:id25467247 %>"
                    SelectCommand="SELECT * FROM [product]"
                    UpdateCommand="UPDATE [product] SET Title=@Title, PhotoDate=@PhotoDate, ImgUrl=@ImgUrl WHERE ID=@ID"></asp:SqlDataSource>


            </div>

            <div class="row" id="sourcecode">
                <h2>Review the source codes:</h2>
                <div class="btn-group btn-group-justified">
                  <div class="btn-group">
                      <asp:Button ID="Button1" runat="server" Text="Add Records" CssClass="btn btn-default" />
                  </div>
                  <div class="btn-group">
                    <asp:Button ID="Button2" runat="server" Text="Display Records" CssClass="btn btn-default" />
                  </div>
                  <div class="btn-group">
                    <asp:Button ID="Button3" runat="server" Text="Search Records" CssClass="btn btn-default" />
                  </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

