<%@ Page Title="" Language="C#" MasterPageFile="~/master/MasterPage.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="private_Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PhotoSlideHolder" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentHolder" runat="Server">
    <br />
    <hr />
    <div class="row">

        <div class="col-md-4">
            <div class="panel panel-default">
                <div class="panel-heading">Contacts</div>
                <asp:SqlDataSource ID="SourceMail" runat="server" ProviderName="System.Data.OleDb"
                    ConnectionString="<%$ ConnectionStrings:id25467247 %>" SelectCommand="SELECT ID, Username, Email FROM [user]"></asp:SqlDataSource>
                <asp:GridView ID="gvCustomers" runat="server" DataSourceID="SourceMail" DataKeyNames="ID" AutoGenerateColumns="false"
                    CssClass="table table-hover" BorderStyle="None" GridLines="None" CellPadding="5">
                    <Columns>
                        <asp:BoundField DataField="ID" Visible="false" />
                        <asp:BoundField DataField="Username" HeaderText="Username" />
                        <asp:BoundField DataField="Email" HeaderText="Email" />
                        <asp:TemplateField HeaderText="Select">
                            <ItemTemplate>
                                <asp:CheckBox runat="server" ID="chkEmail" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </div>
            <div class="alert alert-danger" role="alert"><asp:Label ID="lblMail" runat="server"></asp:Label></div>
            
            <div class="panel panel-default">
              <div class="panel-heading">
                <h3 class="panel-title">Source codes</h3>
              </div>
              <div class="panel-body">
                    Click the following button to check the source of of this page.
                  <asp:Button ID="BtnMailCode" runat="server" Text="Email" CssClass="btn btn-primary" OnClick="BtnMailCode_Click" />
              </div>
            </div>
            
        </div>
        <div class="col-md-8">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">Contracting Mail</h3>
                </div>

                <ul class="list-group">
                    <li class="list-group-item">
                        <h4>From:</h4>
                        Weiwei SUN
                    </li>
                    <li class="list-group-item">
                        <h4>Subject:</h4>
                        <asp:TextBox ID="TxbSubject" CssClass="form-control" runat="server"></asp:TextBox></li>
                    <li class="list-group-item">
                        <h4>Attachment:</h4>
                        <asp:FileUpload ID="fileUpload" runat="server" /></li>
                    <li class="list-group-item">
                        <h4>Message</h4>
                        <asp:TextBox ID="TxbMessage" runat="server" TextMode="MultiLine" CssClass="form-control" Rows="15"></asp:TextBox></li>
                    <li class="list-group-item">
                        <asp:Button ID="BtnSendMail" runat="server" Text="Send Email" CssClass="btn btn-info" OnClick="BtnSendMail_Click" /></li>
                </ul>
            </div>          
        </div>
    </div>
</asp:Content>

