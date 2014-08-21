<%@ Page Title="" Language="C#" MasterPageFile="~/master/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="public_Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PhotoSlideHolder" runat="Server">
    <br />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentHolder" runat="Server">
    <div class="container">
        <div class="row">
            <div class="col-md-3">
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
                                            ErrorMessage="Please input your username" ForeColor="#CC3333"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="InputPassword" class="col-sm-2 control-label">Password</label>
                                    <div class="col-sm-10">
                                        <asp:TextBox ID="InputPassword" runat="server" CssClass="form-control"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="VldPwd" runat="server" ErrorMessage="Please input your username"
                                             ControlToValidate="InputPassword" ForeColor="#CC3333"></asp:RequiredFieldValidator>
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
                                        <asp:Button ID="BtnSigin" runat="server" Text="Signin" CssClass="btn btn-success" OnClick="BtnSigin_Click" />
                                        <a href="Register.aspx"><input id="Button1" type="button" value="Register" class="btn btn-default"/></a>
                                    </div>
                                </div>
                            </div>
                        
                    </div>
                </div>
            </div>            
        </div><!--first row:user login -->

        <div class="row">
            <asp:Label ID="LblResult" runat="server" Text=""></asp:Label>
        </div><!--login result: for test-->

    </div>
    <!--container-->
</asp:Content>

