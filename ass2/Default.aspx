<%@ Page Title="" Language="C#" MasterPageFile="~/master/PublicMaster.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PhotoSlideHolder" runat="Server">
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
                    <img src="ads/s4.jpg" alt="photo">
                    <div class="carousel-caption">
                        <h1>Campus of Nine-Dragon Lake</h1>
                    </div>
                </div>
                <div class="item">
                    <img src="ads/s2.jpg" alt="photo">
                    <div class="carousel-caption">
                        <h1>SEU-Monash Joint Graduation School</h1>
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
    <div class="row menu-login">

        <asp:LoginView ID="LoginView1" runat="server">
            <AnonymousTemplate>
                <div class="col-md-2">
                    <h5 class="text-center">Login</h5>
                </div>
                <div class="col-md-1">
                    <h5 class="text-right">Name</h5>
                </div>
                <div class="col-md-2">
                    <asp:TextBox ID="TxbUsername" CssClass="form-control input-sm" runat="server"></asp:TextBox>
                </div>
                <div class="col-md-1">
                    <h5 class="text-right">Password</h5>
                </div>
                <div class="col-md-2">
                    <asp:TextBox ID="TxbPassword" CssClass="form-control input-sm" runat="server" TextMode="Password"></asp:TextBox>
                </div>
                <div class="col-md-1">
                    <asp:Button ID="BtnLogin" CssClass="btn btn-default btn-sm col-md-12" runat="server" Text="Sign In" OnClick="BtnLogin_Click" />
                </div>
                <div class="col-md-1">
                    <a href="public/register.aspx">
                        <button class="btn btn-default btn-sm col-md-12">Register</button></a>
                </div>
                <div class="col-md-2">
                    <asp:Label ID="LblResult" runat="server" Text=""></asp:Label>
                </div>
            </AnonymousTemplate>
            <LoggedInTemplate>
                <div class="col-md-offset-4">
                    <p>
                        Welcome back, <em>
                            <asp:LoginName ID="LoginUser" runat="server" />
                        </em>, or you can 
                    <asp:Button ID="BtnSignOff" runat="server" Text="Sign out" CssClass="btn btn-default btn-sm" OnClick="BtnSignOff_Click" />
                    </p>
                </div>
            </LoggedInTemplate>
        </asp:LoginView>

    </div>
    <!--LoginControl-->
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
            <h3>Photo Gallery</h3>
            <p>Hello world, Hello world, Hello world, Hello world, Hello world, Hello world</p>
        </div>

        <div class="col-md-4">
            <asp:AdRotator ID="AdRotator2" runat="server" AdvertisementFile="~/conf/ChildAds.xml" />
            <h3>Photo Gallery</h3>
            <p>Hello world, Hello world, Hello world, Hello world, Hello world, Hello world</p>
        </div>

        <div class="col-md-4">
            <img src="img/well.jpg" class="img-rounded" />
            <h3>Follow my trips</h3>
            <p>Hello world, Hello world, Hello world, Hello world, Hello world, Hello world</p>
        </div>
    </div>
</asp:Content>

