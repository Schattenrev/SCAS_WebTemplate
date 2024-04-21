<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Vertical2.Master" CodeBehind="V2-Home.aspx.vb" Inherits="SCAS_WebTemplate.V2_Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <h1>Welcome to Your Website</h1>
        <div class="d-flex flex-column">
            <p>This is the home page content.</p>
            <div class="card mb-3">
                <div class="card-body">
                    <h5 class="card-title">Card Title</h5>
                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                    <a href="#" class="btn btn-primary">Go somewhere</a>
                </div>
            </div>
            <p>More content can be added here...</p>
        </div>
    </div>

</asp:Content>
