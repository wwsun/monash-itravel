<%@ Page Title="" Language="C#" MasterPageFile="~/master/MasterPage.master" AutoEventWireup="true" CodeFile="Sitemap.aspx.cs" Inherits="private_Sitemap" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PhotoSlideHolder" runat="Server">

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentHolder" runat="Server">
    <br />
    <hr />
    <div class="row">

        <div class="col-md-3 col-md-offset-1">
            <asp:TreeView ID="TreeView1" runat="server" DataSourceID="siteMapDS"
                HoverNodeStyle-Font-Underline="true" ShowExpandCollapse="false" NodeIndent="5">
                <LevelStyles>
                    <asp:TreeNodeStyle ChildNodesPadding="10" Font-Bold="true" Font-Size="14pt" ForeColor="DarkBlue" />
                    <asp:TreeNodeStyle ChildNodesPadding="5" Font-Bold="True" Font-Size="12pt" />
                    <asp:TreeNodeStyle ChildNodesPadding="5" Font-Bold="True" Font-Size="12pt" />
                </LevelStyles>
            </asp:TreeView>
            <asp:SiteMapDataSource ID="siteMapDS" runat="server" SiteMapProvider="privateSiteMap" />
            <br />
        </div>

        <div class="col-md-7">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">Site Map Introducton</h3>
                </div>

                <ul class="list-group">
                    <li class="list-group-item">
                        <b>HOME:</b> The first page you will see when you visit our site. 
                    </li>
                    <li class="list-group-item">
                        <b>Admin:</b> Search records and display all records for the administrator. </li>
                    <li class="list-group-item">
                        <b>Site:</b> Display the overview structure of this site. </li>
                    <li class="list-group-item">
                        <b>Documentation:</b> The design documentation of this site. </li>
                    <li class="list-group-item">
                        <b>Contact:</b> Contct developers of this site.</li>
                    <li class="list-group-item">
                        <b>About:</b> Display the history and frequently asked questions of this site.</li>
                </ul>

            </div>
            <asp:Button ID="BtnSiteMap" runat="server" Text="Site Map" CssClass="btn btn-default" OnClick="BtnSiteMap_Click" />
        
        </div>

    </div>
</asp:Content>

