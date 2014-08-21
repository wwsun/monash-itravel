<%@ Page Title="" Language="C#" MasterPageFile="~/master/MasterPage.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="public_Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" href="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.10.4/themes/flick/jquery-ui.css" />
    <script src="../js/jquery-ui.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PhotoSlideHolder" runat="Server">
    <br />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentHolder" runat="Server">
    <div class="row" id="RegDiv" runat="server">
        <div class="col-md-9">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">Register</h3>
                </div>
                <div class="panel-body">

                    <div class="form-horizontal col-md-10" role="form">
                        <div class="form-group">
                            <label for="TxbUsername" class="col-sm-2 control-label">Username</label>
                            <div class="col-sm-10">
                                <asp:TextBox ID="TxbUsername" runat="server" class="form-control"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="VldUsername" ControlToValidate="TxbUsername" runat="server" ForeColor="#CC3333"
                                    ErrorMessage="Only word character(letter, number, or underscore) with 4 to 10 characters" ValidationExpression="\w{4,10}"></asp:RegularExpressionValidator>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="TxbUsername" class="col-sm-2 control-label">Age</label>
                            <div class="col-sm-10">
                                <asp:TextBox ID="TxbAge" runat="server" class="form-control" TextMode="Number"></asp:TextBox>
                                <asp:RangeValidator ID="VldAge" runat="server" ErrorMessage="This age is not between 0 and 120." ForeColor="#CC3333"
                                    Type="Integer" MaximumValue="120" MinimumValue="0" ControlToValidate="TxbAge"></asp:RangeValidator>
                            </div>
                        </div>


                        <div class="form-group">
                            <label for="TxbPassword" class="col-sm-2 control-label">Password</label>
                            <div class="col-sm-10">
                                <asp:TextBox ID="TxbPassword" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="VldPwd" ControlToValidate="TxbPassword" runat="server" ForeColor="#CC3333"
                                    ErrorMessage="Only sequence of one or more word characters with 4 to 15 characters" ValidationExpression="\w{4,15}"></asp:RegularExpressionValidator>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="TxbPassword" class="col-sm-2 control-label">Password Again</label>
                            <div class="col-sm-10">
                                <asp:TextBox ID="TxbPassword2" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                                <asp:CompareValidator ID="VldPwdCmp" runat="server" ErrorMessage="Your password does not match!"
                                    ControlToValidate="TxbPassword2" ControlToCompare="TxbPassword" ForeColor="#CC3333"></asp:CompareValidator>
                                <asp:RequiredFieldValidator ID="vldPwd2" runat="server" ErrorMessage="You must confirm your password!"
                                    ControlToValidate="TxbPassword2" ForeColor="#CC3333"></asp:RequiredFieldValidator>
                            </div>
                        </div>

                       <div class="form-group">
                            <label for="TxbMail" class="col-sm-2 control-label">Email</label>
                            <div class="col-sm-10">
                                <asp:TextBox ID="TxbMail" runat="server" CssClass="form-control" TextMode="Email"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="TxbMail" runat="server" ForeColor="#CC3333"
                                    ErrorMessage="Illeagle Email Address!" ValidationExpression="\S+@\S+\.\S+"></asp:RegularExpressionValidator>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="TxbAttendDate" class="col-sm-2 control-label">Attendance Date</label>
                            <div class="col-sm-10">
                                <asp:TextBox ID="TxbAttendDate" runat="server" CssClass="form-control"></asp:TextBox>
                                <script>
                                    $(function () {
                                        $("#<%= TxbAttendDate.ClientID %>").datepicker({
                                            changeMonth: true,
                                            changeYear: true
                                        });
                                    });
                                </script>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="OptSexList" class="col-sm-2 control-label">Sex</label>
                            <div class="col-sm-10">
                                <div class="radio-inline">
                                    <asp:RadioButton ID="OptSexM" GroupName="OptSex" runat="server" Text="Male" Checked="true" />
                                </div>
                                <div class="radio-inline">
                                    <asp:RadioButton ID="OptSexF" GroupName="OptSex" runat="server" Text="Female" />
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="ChkList" class="col-sm-2 control-label">Interest</label>
                            <div class="col-sm-10">
                                <asp:CheckBoxList ID="ChkList" runat="server" CssClas="checkbox-inline" RepeatDirection="Horizontal" Width="450px">
                                    <asp:ListItem>Art</asp:ListItem>
                                    <asp:ListItem>Science</asp:ListItem>
                                    <asp:ListItem>Math</asp:ListItem>
                                    <asp:ListItem>Computer</asp:ListItem>
                                    <asp:ListItem>Enginneering</asp:ListItem>
                                </asp:CheckBoxList>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="LsbSubscribe" class="col-sm-2 control-label">Subscribe</label>
                            <div class="col-sm-10">
                                <asp:ListBox ID="LsbSubscibe" runat="server" Width="200px" SelectionMode="Multiple" BackColor="White" Font-Size="Medium">
                                    <asp:ListItem>Latest news</asp:ListItem>
                                    <asp:ListItem>Latest notice</asp:ListItem>
                                    <asp:ListItem>Exam information</asp:ListItem>
                                    <asp:ListItem>Open course</asp:ListItem>
                                    <asp:ListItem>Foreign education</asp:ListItem>
                                    <asp:ListItem>Training</asp:ListItem>
                                    <asp:ListItem>Student activity</asp:ListItem>
                                    <asp:ListItem>Free food</asp:ListItem>
                                </asp:ListBox>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="DroplistGrade" class="col-sm-2 control-label">Grade</label>
                            <div class="col-sm-10">
                                <asp:DropDownList ID="DroplistGrade" runat="server" Width="200px" Font-Size="Medium">
                                    <asp:ListItem>PG-One</asp:ListItem>
                                    <asp:ListItem>PG-Two</asp:ListItem>
                                    <asp:ListItem>PG-Three</asp:ListItem>
                                    <asp:ListItem>Others</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-sm-offset-2 col-sm-10">
                                <asp:Button ID="BtnRegister" CssClass="btn btn-info" runat="server" Text="Register" OnClick="BtnRegister_Click" />
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="panel panel-info">
                <div class="panel-heading">
                    <h3 class="panel-title">Notice</h3>
                </div>
                <div class="panel-body">
                    I already have a account, I want to <a href="Login.aspx">log in</a> right now.
                </div>
            </div>
        </div>
    </div>

    <div class="row" id="ResultDiv" runat="server">
        <div class="col-md-8">
            <div class="panel panel-info">
                <div class="panel-heading">
                    <h3 class="panel-title">Registration result</h3>
                </div>
                <div class="panel-body">
                    <asp:Panel ID="PanelResult" runat="server">
                        <asp:Label ID="LblResult" runat="server" Text=""></asp:Label>
                    </asp:Panel>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">Notice</h3>
                </div>
                <div class="panel-body">
                    <p>Please check your account information carefully, you can use this account to <a href="Login.aspx">log in</a>, or you can <a href="Register.aspx">register</a> a new account.</p>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
