<%@ Page Title="" Language="C#" MasterPageFile="~/master/PublicMaster.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Welcome to iTravel, a personal photo collection</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PhotoSlideHolder" runat="Server">
    <div class="row menu-login">
        <asp:LoginView ID="LoginView1" runat="server">
            <AnonymousTemplate>
                <div class="col-md-2 col-md-offset-9">
                    <h5 class="text-center"><a href="public/Login.aspx">Login</a> | <a href="public/Register.aspx">Register</a></h5>
                </div>
            </AnonymousTemplate>
            <LoggedInTemplate>
                <div class="col-md-3 col-md-offset-9">
                    <p>
                        Welcome <b><asp:LoginName ID="LoginUser" runat="server" /></b>
                    <asp:Button ID="BtnSignOff" runat="server" Text="Sign out" CssClass="btn btn-default btn-sm" OnClick="BtnSignOff_Click" />
                    </p>
                </div>
            </LoggedInTemplate>
        </asp:LoginView>
    </div>
    <!--LoginControl-->
    <div class="row">
        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                <li data-target="#carousel-example-generic" data-slide-to="2"></li>
            </ol>

            <!-- Wrapper for slides -->
            <div class="carousel-inner" role="listbox">
                <div class="item active">
                    <img src="ads/s5.jpg" alt="photo">
                    <div class="carousel-caption">
                        <h1>Suzhou Staion</h1>
                    </div>
                </div>
                <div class="item">
                    <img src="ads/s6.jpg" alt="photo">
                    <div class="carousel-caption">
                        <h1>Jinji Lake</h1>
                    </div>
                </div>
                <div class="item">
                    <img src="ads/s7.jpg" alt="photo">
                    <div class="carousel-caption">
                        <h1>Jinji Lake</h1>
                    </div>
                </div>
                <div class="item">
                    <img src="ads/s8.jpg" alt="photo">
                    <div class="carousel-caption">
                        <h1>Jinji Lake</h1>
                    </div>
                </div>
            </div>

            <!-- Controls -->
            <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>
    <!--PhotoSlides-->

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentHolder" runat="Server">
    <div class="row">
        <br />
        <h2 class="text-center">Follow My Travel With My Camera</h2>
        <p class="text-center">Best 2014 travle places in China, the best places you should go.</p>
        <br />
        <br />
    </div>
    <div class="row">
        <div class="col-md-4">
            <asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="~/conf/ChildAds.xml" />
            <h3>AdRotator Gallery</h3>
            <p>Click the following button to open up a new tab in the browser for checking the codes of this page and its associated XML file.</p>
            <asp:Button ID="BtnAdRotator" runat="server" Text="AdRotator" CssClass="btn btn-primary" OnClick="BtnAdRotator_Click" />

        </div>

        <div class="col-md-4">
            <asp:AdRotator ID="AdRotator2" runat="server" AdvertisementFile="~/conf/ChildAds.xml" />
            <h3>Master Page</h3>
            <p>Click the following button to open up a new tab in the browser for checking the codes of the Master Page designed by us.</p>
            <asp:Button ID="BtnAdRotator2" runat="server" Text="Master Page" CssClass="btn btn-primary" OnClick="BtnAdRotator2_Click" />
        </div>

        <div class="col-md-4">
            <img src="img/well.jpg" class="img-rounded" />
            <h3>About Us</h3>
            <p>This site is a assignment for Monash FIT5192 Web Application. Therefore, this is a test site, all the contents are follow around the design document.
                <b>The photos used in this site were related with Suzhou</b>.</p>
        </div>
    </div>
</asp:Content>

