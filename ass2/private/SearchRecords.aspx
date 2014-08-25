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
            <asp:RequiredFieldValidator ID="VldTxtTitle" runat="server" ErrorMessage="You should input something!" ControlToValidate="txbTitle"
                ForeColor="Red" EnableClientScript="false"></asp:RequiredFieldValidator>
        </div>
        <div class="col-md-6">
            <asp:Button ID="btnTitle" runat="server" Text="Search Username" OnClick="btnTitle_Click" CssClass="btn btn-primary" />
            <asp:Button ID="btnAge" runat="server" Text="Search Sex" OnClick="btnAge_Click" CssClass="btn btn-primary" />
            <asp:Button ID="btnMail" runat="server" Text="Search Email" OnClick="btnMail_Click" CssClass="btn btn-primary" />
        </div>
    </div>
    <!--search input-->
    <br />
    <div class="row">
        <div class="col-md-8">
            <div class="panel panel-default">
                <div class="panel-heading">Search results</div>

                <asp:SqlDataSource ID="SourceSearch" runat="server" ProviderName="System.Data.OleDb"
                    ConnectionString="<%$ ConnectionStrings:id25467247 %>" SelectCommand="SELECT * FROM [user] 
                WHERE Username = @Username">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="Username" QueryStringField="Username" />
                    </SelectParameters>
                </asp:SqlDataSource>

                <asp:ListView ID="ListView1" runat="server" DataSourceID="SourceSearch">
                    <ItemTemplate>
                        <ul class="list-group">
                            <li class="list-group-item"><b>Uesrname:&emsp;</b> <%# Eval("Username") %></li>
                            <li class="list-group-item"><b>Password:&emsp;</b> <%# Eval("Password") %></li>
                            <li class="list-group-item"><b>Age:&emsp;</b> <%# Eval("Age") %></li>
                            <li class="list-group-item"><b>Sex:&emsp;</b> <%# Eval("Sex") %></li>
                            <li class="list-group-item"><b>Interest:&emsp;</b> <%# Eval("Interest") %></li>
                            <li class="list-group-item"><b>Subscribe:&emsp;</b> <%# Eval("Subscribe") %></li>
                            <li class="list-group-item"><b>Grade:&emsp;</b> <%# Eval("Grade") %></li>
                            <li class="list-group-item"><b>AttendanceDate:&emsp;</b> <%# Eval("AttendanceDate") %></li>
                            <li class="list-group-item"><b>Email:&emsp;</b> <%# Eval("Email") %></li>
                        </ul>
                    </ItemTemplate>
                </asp:ListView>

                <asp:GridView ID="GridView1" runat="server" DataSourceID="SourceSex"
                    CssClass="table table-hover" BorderStyle="None" GridLines="None" AllowSorting="true" AutoGenerateColumns="false">
                     <Columns>
                       <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" />
                       <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                       <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                       <asp:BoundField DataField="Sex" HeaderText="Sex" SortExpression="Sex" />
                       <asp:BoundField DataField="Email" HeaderText="Email" />
                       <asp:BoundField DataField="Grade" HeaderText="Grade" SortExpression="Grade" />
                   </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SourceSex" runat="server" ProviderName="System.Data.OleDb"
                    ConnectionString="<%$ ConnectionStrings:id25467247 %>" SelectCommand="SELECT * FROM [user] 
                WHERE Sex = @Sex">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="Sex" QueryStringField="Sex" />
                    </SelectParameters>
                </asp:SqlDataSource>

               <asp:GridView ID="GridView2" runat="server" DataSourceID="SourceMail"
                    CssClass="table table-hover" BorderStyle="None" GridLines="None" AllowSorting="True" AutoGenerateColumns="False">
                   <Columns>
                       <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" />
                       <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                       <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                       <asp:BoundField DataField="Sex" HeaderText="Sex" SortExpression="Sex" />
                       <asp:BoundField DataField="Email" HeaderText="Email" />
                       <asp:BoundField DataField="Grade" HeaderText="Grade" SortExpression="Grade" />
                   </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SourceMail" runat="server" ProviderName="System.Data.OleDb"
                    ConnectionString="<%$ ConnectionStrings:id25467247 %>" SelectCommand="SELECT * FROM [user] 
                WHERE Email = @Email">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="Email" QueryStringField="Email" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>
            <!--search results-->
        </div>
        <div class="col-md-4">
            <div class="panel panel-default">
              <div class="panel-heading">
                <h3 class="panel-title">Source Codes</h3>
              </div>
              <div class="panel-body">
                Click the following button to open a new window to checking the source code of this page.
                  <br />
                  <asp:Button ID="BtnSearchRecords" runat="server" Text="Search Records" CssClass="btn btn-primary" OnClick="BtnSearchRecords_Click" />
              </div>
            </div>
        </div>
    </div>



</asp:Content>

