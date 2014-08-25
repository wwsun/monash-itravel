<%@ Page Title="" Language="C#" MasterPageFile="~/master/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="public_Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Login page - Welcome to iTravel</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PhotoSlideHolder" runat="Server">
    <br />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentHolder" runat="Server">
    <div class="container">
        <div class="row">
            <div class="col-md-4">
                <img src="../ads/sideAdOne.jpg" class="img-rounded" width="325" height="290" />
            </div>
            <div class="col-md-7 col-sm-offset-1">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">Login</h3>
                    </div>
                    <div class="panel-body">

                        <div class="form-horizontal" role="form">
                            <div class="form-group">
                                <label for="InputUsername" class="col-sm-2 control-label">Username</label>
                                <div class="col-sm-10">
                                    <asp:TextBox ID="InputUsername" runat="server" CssClass="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="VldUsername" runat="server" ControlToValidate="InputUsername"
                                        ErrorMessage="Please input your username!" ForeColor="#CC3333" EnableClientScript="false"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="InputPassword" class="col-sm-2 control-label">Password</label>
                                <div class="col-sm-10">
                                    <asp:TextBox ID="InputPassword" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="VldPwd" runat="server" ErrorMessage="Please input your password!"
                                        ControlToValidate="InputPassword" ForeColor="#CC3333" EnableClientScript="false"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-offset-2 col-sm-10">
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox">
                                            Remember me       
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-offset-2">
                                    <asp:Button ID="BtnSigin" runat="server" Text="Sign in" CssClass="btn btn-success" OnClick="BtnSigin_Click" />
                                    <a href="Register.aspx">
                                        <input id="Button1" type="button" value="Register" class="btn btn-default" /></a>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>

        </div>
        <!--first row:user login -->

        <div class="row">
            <div class="well">
                <asp:Label ID="LblResult" runat="server" Text=""></asp:Label>
                <p>
                    <strong>Click the following button and then log in the web site to check the source code. </strong>
                    <asp:Button ID="BtnLoginSource" runat="server" Text="Login" CssClass="btn btn-primary" OnClick="BtnLoginSource_Click" />

                </p>
            </div>
        </div>
    </div>
    <!--container-->
</asp:Content>

