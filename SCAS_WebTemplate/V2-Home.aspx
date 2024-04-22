<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Vertical2.Master" CodeBehind="V2-Home.aspx.vb" Inherits="SCAS_WebTemplate.V2_Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>
        
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <%--<div class="container">
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
    </div>--%>

    <div class="container-fluid">
        <div class="d-flex flex-column">
            <div>
                <div class="position-relative overflow-hidden p-3 p-md-5 m-md-3 text-center bg-body-tertiary">
                    <div class="col-md-6 p-lg-5 mx-auto my-5">
                        <h1 class="display-3 fw-bold">Designed for engineers</h1>
                        <h3 class="fw-normal text-muted mb-3">Build anything you want with Aperture</h3>
                        <div class="product-device shadow-sm d-none d-md-block"></div>
                        <div class="product-device product-device-2 shadow-sm d-none d-md-block"></div>
                    </div>
                    <div class="d-md-flex flex-md-equal w-100 my-md-3 ps-md-3">
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
                                <p class="lead">And an even wittier  subheading.</p>
                            </div>
                            <div class="bg-dark shadow-sm mx-auto" style="width: 80%; height: 300px; border-radius: 21px 21px 0 0;"></div>
                        </div>
                    </div>

                    <div class="d-md-flex flex-md-equal w-100 my-md-3 ps-md-3">
                        <div class="bg-body-tertiary me-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center overflow-hidden">
                            <div class="my-3 p-3">
                                <h2 class="display-5">Another headline</h2>
                                <p class="lead">And an even wittier subheading.</p>
                            </div>
                            <div class="bg-dark shadow-sm mx-auto" style="width: 80%; height: 300px; border-radius: 21px 21px 0 0;"></div>
                        </div>
                        <div class="text-bg-primary me-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center overflow-hidden">
                            <div class="my-3 py-3">
                                <h2 class="display-5">Another headline</h2>
                                <p class="lead">And an even wittier subheading.</p>
                            </div>
                            <div class="bg-body-tertiary shadow-sm mx-auto" style="width: 80%; height: 300px; border-radius: 21px 21px 0 0;"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
