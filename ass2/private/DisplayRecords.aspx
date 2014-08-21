<%@ Page Title="" Language="C#" MasterPageFile="~/master/MasterPage.master" AutoEventWireup="true" CodeFile="DisplayRecords.aspx.cs" Inherits="private_DisplayRecords" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PhotoSlideHolder" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentHolder" runat="Server">

    <div class="page-header">
        <h1>Display Records:</h1>
    </div>

    <div class="row">
        <div class="col-md-8">
            <div class="panel panel-default">
                <div class="panel-heading">Display All</div>
                <asp:GridView ID="GridView4" runat="server" DataSourceID="SourceAllPhoto" DataKeyNames="ID"
                    AutoGenerateColumns="False" AllowPaging="True" AllowSorting="True" CssClass="table table-hover" BorderStyle="None" GridLines="None"
                    SelectedRowStyle-BackColor="Yellow">
                    <Columns>
                        <asp:BoundField HeaderText="Username" SortExpression="Username" DataField="Username" />
                        <asp:BoundField HeaderText="Age" DataField="Age" SortExpression="Age" />
                        <asp:BoundField HeaderText="Sex" DataField="Sex" SortExpression="Sex" />
                        <asp:BoundField HeaderText="Grade" DataField="Grade" SortExpression="Grade" />
                        <asp:BoundField HeaderText="AttendanceDate" DataField="AttendanceDate" SortExpression="AttendanceDate" />
                        <asp:HyperLinkField DataTextField="" Text="Detail" />
                        <asp:CommandField ShowEditButton="True" ButtonType="Button" ControlStyle-CssClass="btn btn-default btn-sm" />
                    </Columns>
                </asp:GridView>

                <asp:SqlDataSource ID="SourceAllPhoto" runat="server" ProviderName="System.Data.OleDb"
                    ConnectionString="<%$ ConnectionStrings:id25467247 %>"
                    SelectCommand="SELECT * FROM [user]"
                    UpdateCommand="UPDATE [user] SET Username=@Username, Age=@Age, Sex=@Sex WHERE ID=@ID"></asp:SqlDataSource>
            </div>
        </div>
        <div class="col-md-4">
            <div class="list-group">
                <a class="list-group-item active"><b>SOURCE CODES</b></a>
                <a href="ShowCode.aspx?filename=DisplayRecords.aspx" class="list-group-item">Display Records</a>
            </div>
        </div>
    </div>

</asp:Content>

