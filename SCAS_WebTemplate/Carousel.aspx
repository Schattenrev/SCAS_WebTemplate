<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Vertical.Master" CodeBehind="Carousel.aspx.vb" Inherits="SCAS_WebTemplate.Carousel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>
        #carouselExampleIndicators {
            max-width: 600px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-indicators">
            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active bi bi-circle" aria-current="true" aria-label="Slide 1"></button>
            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" class="bi bi-circle" aria-label="Slide 2"></button>
            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" class="bi bi-circle" aria-label="Slide 3"></button>
        </div>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="Photos/EPFQP-Logo2.png" class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item">
                <img src="Photos/EPFQP-Logo3.png" class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item">
                <img src="Photos/EPFQP-Logo4.png" class="d-block w-100" alt="...">
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
            <span class="carousel-control-prev-icon text-dark" aria-hidden="true" style="color: black;"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
            <span class="carousel-control-next-icon text-dark" aria-hidden="true" style="color: black;"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>

</asp:Content>
