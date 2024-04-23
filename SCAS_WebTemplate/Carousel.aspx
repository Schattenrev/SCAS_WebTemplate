<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Vertical.Master" CodeBehind="Carousel.aspx.vb" Inherits="SCAS_WebTemplate.Carousel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>
        .carousel-inner {
            width: 80vw;
            height: 80vh;
        }

            .carousel-inner .carousel-item {
                width: 100%;
                height: 100%;
            }

                .carousel-inner .carousel-item img {
                    width: 100%;
                    height: 100%;
                    object-fit: cover;
                }

        .icon {
            background-color: black;
            padding: 30px;
            border-radius: 100px;
        }

        .carousel-control-prev {
            left: 2em;
        }

        .carousel-control-next {
            right: 2em;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <main>
        <div id="carouselExampleFade" class="carousel slide carousel-fade">

            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="https://user-images.githubusercontent.com/78242022/284473812-eda73791-83d8-47db-bb4f-21de64621094.jpg" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="https://user-images.githubusercontent.com/78242022/284473830-babc90af-7e73-4ee8-813b-7d87c4fae908.jpg" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="https://user-images.githubusercontent.com/78242022/284473823-1d713ee7-af6a-4913-b4e4-01d2d78c7e2d.jpg" class="d-block w-100" alt="...">
                </div>
            </div>

            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="prev">
                <i class="fa-solid fa-arrow-left icon"></i>
                <span class="carousel-control-prev-icon visually-hidden" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="next">
                <i class="fa-solid fa-arrow-right icon"></i>
                <span class="carousel-control-next-icon visually-hidden" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
    </main>

</asp:Content>
