<%@ Page Title="" Language="C#" MasterPageFile="~/master/MasterPage.master" AutoEventWireup="true" CodeFile="Document.aspx.cs" Inherits="private_Document" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PhotoSlideHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentHolder" Runat="Server">
    <div class="page-header">
        <h1>Documentation <small>iTravel</small></h1>
    </div>
    <div class="row">
        <div class="col-md-8">
            
            <h2>Author Information</h2>
            <p><strong>Name: </strong> Weiwei SUN</p>
            <p><strong>Student ID: </strong> 25467247</p>
            <p><strong>Unit Provider: </strong> Monash University, The Caulfield School of Information Technology</p>
            <p><strong>Assignment numer: </strong> FIT5192</p>
            <p><strong>Date of submission: </strong> August 27, 2014</p>
            <p><strong>Lecturer's Name: </strong> Grace Xie</p>
            <p><strong>Tutor's Name: </strong> Hongliang Zhang</p>
            <p><strong>Email: </strong> ww.sun@outlook.com / wsun38@monash.edu</p>
            <p><strong>Assignment Specification: </strong> none</p>
            
            <h2>Overview</h2>
            <p>This website is an assignment of FIT5192 Monash University, which is developed by ASP.NET From-base technique. This document will be helpful to clarify the detail of my work in this project.
                 In this project, we design and developed a personal website for displaying photos of our life. In this project(named iTravel) 
                we will describe the key points of the implementation brifly.
            </p>
            <p>Git is selected to faciliate the source control, and Github is chosen as a remote repository. Therefore, you can download all souce codes via the following commands:</p>
            <pre>$git clone https://github.com/wwsun/monash-itravel.git</pre>

            <h2>Project Information</h2>
            <p>content</p>

            <h2>Copyright</h2>
            <p>content of this section</p>

            <h2>References</h2>
            <p>content of this section</p>

            <div class="well">
                <strong>Click the following the buttons to check the source codes.  </strong>
                <asp:Button ID="BtnCss" runat="server" Text="Css" CssClass="btn btn-primary" OnClick="BtnCss_Click" />
                <asp:Button ID="BtnSkin" runat="server" Text="Skin" CssClass="btn btn-primary" OnClick="BtnSkin_Click" />
            </div>
        </div>

        <div class="col-md-4">
            <div class="list-group">
              <a href="#" class="list-group-item active">
                Content
              </a>
              <a href="#" class="list-group-item">Author information</a>
              <a href="#" class="list-group-item">Overview</a>
              <a href="#" class="list-group-item">Project information</a>
              <a href="#" class="list-group-item">Copyright</a>
                <a href="#" class="list-group-item">References</a>
            </div>
        </div>
    </div>
</asp:Content>

