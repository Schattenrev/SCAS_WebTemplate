<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Vertical2.Master" CodeBehind="Product.aspx.vb" Inherits="SCAS_WebTemplate.Product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evSXbIWVMQvAuqLtWBQOnYlLWYRhkqZcL891iI91S7gXyJCEkNIlOZvUrqSSoVVz" crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <main class="container">

        <section class="row mb-5">
            <div class="col-md-6">
                <img src="placeholder.jpg" alt="Hero Image" class="img-fluid rounded animate__animated animate__fadeInLeft">
            </div>
            <div class="col-md-6 d-flex flex-column justify-content-center">
                <h2 class="display-5 mb-3">Pellentesque habitant morbi tristique</h2>
                <p class="lead">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce feugiat, lacus vel pretium pretium, quam ante imperdiet massa, nec rhoncus turpis leo id tellus. </p>
                <a href="#" class="btn btn-lg btn-primary">Explore Products</a>
            </div>
        </section>

        <h2 class="text-center mb-4">Our Top Picks</h2>
        <section class="row row-cols-1 row-cols-md-3 g-4">

            <div class="col animate__animated animate__fadeInUp">
                <div class="card h-100">
                    <img src="product1.jpg" class="card-img-top" alt="Product 1 Image">
                    <div class="card-body">
                        <h5 class="card-title">Product 1 Name</h5>
                        <p class="card-text">Lorem ipsum dolor sit amet</p>
                        <a href="#" class="btn btn-primary">View Details</a>
                    </div>
                </div>
            </div>

            <div class="col animate__animated animate__fadeInUp">
                <div class="card h-100">
                    <img src="product2.jpg" class="card-img-top" alt="Product 2 Image">
                    <div class="card-body">
                        <h5 class="card-title">Product 2 Name</h5>
                        <p class="card-text">Lorem ipsum dolor sit amet</p>
                        <a href="#" class="btn btn-primary">View Details</a>
                    </div>
                </div>
            </div>

            <div class="col animate__animated animate__fadeInUp">
                <div class="card h-100">
                    <img src="product3.jpg" class="card-img-top" alt="Product 3 Image">
                    <div class="card-body">
                        <h5 class="card-title">Product 3 Name</h5>
                        <p class="card-text">Lorem ipsum dolor sit amet</p>
                        <a href="#" class="btn btn-primary">View Details</a>
                    </div>
                </div>
            </div>

        </section>

    </main>

</asp:Content>

<%--<div class="position-relative overflow-hidden p-3 p-md-5 m-md-3 text-center bg-body-tertiary">
    <div class="col-md-6 p-lg-5 mx-auto my-5">
        <h1 class="display-3 fw-bold">Designed for engineers</h1>
        <h3 class="fw-normal text-muted mb-3">Build anything you want with Aperture</h3>
        <div class="d-flex gap-3 justify-content-center lead fw-normal">
            <a class="icon-link" href="#">Learn more
     
        <svg class="bi">
            <use xlink:href="#chevron-right" />
        </svg>
            </a>
            <a class="icon-link" href="#">Buy
     
        <svg class="bi">
            <use xlink:href="#chevron-right" />
        </svg>
            </a>
        </div>
    </div>
    <div class="product-device shadow-sm d-none d-md-block"></div>
    <div class="product-device product-device-2 shadow-sm d-none d-md-block"></div>
</div>

<hr />

<div class="d-md-flex justify-content-center w-100 my-md-3 ps-md-3">
    <div class="text-bg-dark me-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center overflow-hidden">
        <div class="my-3 py-3">
            <h2 class="display-5">Another headline</h2>
            <p class="lead">And an even wittier subheading.</p>
        </div>
        <div class="bg-body-tertiary shadow-sm mx-auto" style="width: 80%; height: 300px; border-radius: 21px 21px 0 0;"></div>
    </div>
    <div class="bg-body-tertiary me-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center overflow-hidden">
        <div class="my-3 p-3">
            <h2 class="display-5">Another headline</h2>
            <p class="lead">And an even wittier subheading.</p>
        </div>
        <div class="bg-dark shadow-sm mx-auto" style="width: 80%; height: 300px; border-radius: 21px 21px 0 0;"></div>
    </div>
</div>--%>
   