<%@ Page Title="" Language="C#" MasterPageFile="~/master/MasterPage.master" AutoEventWireup="true" CodeFile="DisplayRecords.aspx.cs" Inherits="private_DisplayRecords" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PhotoSlideHolder" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentHolder" runat="Server">

    <div class="page-header">
        <h1>Display Records: <small>Show all users</small></h1>
    </div>

    <div class="row">
        <div class="col-md-8">
            <div class="panel panel-default">
                <div class="panel-heading">Display All</div>
                <asp:GridView ID="GridViewDisAll" runat="server" DataSourceID="SourceAllPhoto" DataKeyNames="ID"
                    AutoGenerateColumns="False" AllowPaging="True" AllowSorting="True" CssClass="table table-hover" BorderStyle="None" GridLines="None"
                    SelectedRowStyle-BackColor="#ECF0F1">
                    <Columns>
                        <asp:ButtonField HeaderText="Operation" ControlStyle-CssClass="btn btn-default btn-sm" CommandName="Select" Text="Detail" >
<ControlStyle CssClass="btn btn-default btn-sm"></ControlStyle>
                        </asp:ButtonField>
                        <asp:BoundField HeaderText="Username" SortExpression="Username" DataField="Username" />
                        <asp:BoundField HeaderText="Age" DataField="Age" SortExpression="Age" />
                        <asp:BoundField HeaderText="Gender" DataField="Sex" SortExpression="Sex" />
                        <asp:BoundField HeaderText="Grade" DataField="Grade" SortExpression="Grade" />
                        <asp:BoundField HeaderText="AttendanceDate" DataField="AttendanceDate" SortExpression="AttendanceDate" />
                        <asp:HyperLinkField DataTextField="Homepage" HeaderText="Homepage" DataNavigateUrlFields="Homepage" />
                    </Columns>
                    <SelectedRowStyle BackColor="#ECF0F1"></SelectedRowStyle>
                </asp:GridView>

                <asp:SqlDataSource ID="SourceAllPhoto" runat="server" ProviderName="System.Data.OleDb"
                    ConnectionString="<%$ ConnectionStrings:id25467247 %>"
                    SelectCommand="SELECT * FROM [user]"></asp:SqlDataSource>
            </div>

        </div>

        <div class="col-md-4">
            <div class="panel panel-info">
                <div class="panel-heading">User profile</div>
                <asp:DetailsView ID="DetailsView1" runat="server" CssClass="table table-hover" DataSourceID="SourceDetail"
                    BorderStyle="None" GridLines="None" AutoGenerateEditButton="true">
                </asp:DetailsView>
                <asp:SqlDataSource ID="SourceDetail" runat="server" ProviderName="System.Data.OleDb"
                    ConnectionString="<%$ ConnectionStrings:id25467247 %>"
                    SelectCommand="SELECT * FROM [user] WHERE ID=@ID"
                    UpdateCommand="UPDATE [user] SET Username=@Username, Password=@Password, Age=@Age, Sex=@Sex, Interest=@Interest,
                    Grade=@Grade, AttendanceDate=@AttendanceDate, Email=@Email WHERE ID=@ID">
                    <SelectParameters>
                        <asp:ControlParameter Name="ID" ControlID="GridViewDisAll" PropertyName="SelectedValue" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>
            <asp:Button ID="BtnSource" runat="server" Text="Display Records" CssClass="btn btn-primary" OnClick="BtnSource_Click" />
            <asp:Button ID="BtnSearch" runat="server" Text="Search Records" CssClass="btn btn-default" OnClick="BtnSearch_Click" />
        </div>        
    </div>

</asp:Content>

