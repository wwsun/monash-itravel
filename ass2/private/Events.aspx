<%@ Page Title="" Language="C#" MasterPageFile="~/master/MasterPage.master" AutoEventWireup="true" CodeFile="Events.aspx.cs" Inherits="private_Events" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PhotoSlideHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentHolder" Runat="Server">
    <div class="row">
        <div class="col-md-6">
            <asp:Calendar ID="EventCalendar" runat="server" BackColor="White" BorderColor="Black" DayNameFormat="Shortest" OnDayRender="EventCalendar_DayRender"
                Font-Names="Microsoft Sans Serif" Font-Size="10pt" ForeColor="Black" Height="350px" NextPrevFormat="FullMonth" TitleFormat="Month" Width="550px">
                <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="9pt" ForeColor="#333333" Height="10pt" />
                <DayStyle Width="14%" Font-Size="12pt" />
                <NextPrevStyle Font-Size="8pt" ForeColor="White" />
                <OtherMonthDayStyle ForeColor="#999999" />
                <SelectedDayStyle BackColor="#CC3333" ForeColor="White" />
                <SelectorStyle BackColor="#CCCCCC" Font-Bold="True" Font-Names="Verdana" Font-Size="8pt" ForeColor="#333333" Width="1%" />
                <TitleStyle BackColor="Black" Font-Bold="True" Font-Size="15pt" ForeColor="White" Height="16pt" />
                <TodayDayStyle BackColor="#CCCC99" />
            </asp:Calendar>
        </div>
        <div class="col-md-6">
            <div class="panel panel-default">
              <div class="panel-heading">
                <h3 class="panel-title">Upcoming Events</h3>
              </div>
              <ul class="list-group">
                  <asp:Label ID="LblEvent" runat="server"></asp:Label>
              </ul>
            </div>
            
        </div>
    </div>
</asp:Content>

