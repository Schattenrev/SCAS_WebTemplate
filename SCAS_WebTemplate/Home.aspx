<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Master.Master" CodeBehind="Home.aspx.vb" Inherits="SCAS_WebTemplate.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="vw-75 mt-3" id="videoCarousel">
        <div id="carouselExampleIndicators"
            class="carousel slide w-100 h-100 d-flex flex-row justify-content-center align-items-center">
            <div class="carousel-indicators">
                <div class="py-1 px-1 rounded-5" style="background-color: rgba(0, 0, 0, 0.473);">
                    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active"
                        aria-current="true" aria-label="Slide 1">
                    </button>

                    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"
                        class="">
                    </button>

                    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"
                        class="">
                    </button>

                    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="3" aria-label="Slide 4"
                        class="">
                    </button>

                    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="4" aria-label="Slide 5"
                        class="">
                    </button>
                </div>
            </div>

            <div class="container  w-100 h-100">
                <div class="position-relative p-5 text-center bg-body rounded-5 w-100 h-100">
                    <div class="carousel-inner w-100 h-100">

                        <div class="carousel-item active w-100 h-100">
                            <div class="video-holder">
                                <video muted autoplay loop>
                                    <source src="Media/Videos/2.mp4" type="video/mp4">
                                    Your browser does not support the video tag.
                                </video>
                            </div>
                        </div>
                        <!--End of Carousel-Item 1-->

                        <!-- Add other carousel items similarly -->

                        <div class="carousel-item  w-100 h-100">
                            <div class="video-holder">
                                <video muted autoplay loop>
                                    <source src="Media/Videos/3.mp4" type="video/mp4">
                                    Your browser does not support the video tag.
                                </video>
                            </div>
                        </div>

                        <div class="carousel-item  w-100 h-100">
                            <div class="video-holder">
                                <video muted autoplay loop>
                                    <source src="Media/Videos/4.mp4" type="video/mp4">
                                    Your browser does not support the video tag.
                                </video>
                            </div>
                        </div>

                        <div class="carousel-item  w-100 h-100">
                            <div class="video-holder">
                                <video muted autoplay loop>
                                    <source src="Media/Videos/5.mp4" type="video/mp4">
                                    Your browser does not support the video tag.
                                </video>
                            </div>
                        </div>

                        <div class="carousel-item  w-100 h-100">
                            <div class="video-holder">
                                <video muted autoplay loop>
                                    <source src="Media/Videos/7.mp4" type="video/mp4">
                                    Your browser does not support the video tag.
                                </video>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators"
                data-bs-slide="prev">
                <i class="fa fa-chevron-left text-bg-dark text-light py-2 px-2 rounded"></i>
                <span class="carousel-control-prev-icon visually-hidden" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators"
                data-bs-slide="next">
                <i class="fa fa-chevron-right text-bg-dark text-light py-2 px-2 rounded"></i>
                <span class="carousel-control-next-icon visually-hidden" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
    </div>

    <hr class="my-5 ">

    <div id="jumbotron">
        <div class="p-5 mb-4 rounded-3 text-center ">
            <div class="container-fluid py-5">
                <h1 class="display-5 fw-bold">Lorem Ipsum</h1>
                <p class="col-lg-8 mx-auto lead">
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam felis nibh, commodo sit amet urna vel, faucibus
          efficitur mi. Ut rutrum viverra purus, a facilisis lorem efficitur eget.
                </p>
                <button class="btn btn-success btn-lg" type="button">
                    Example button
                </button>
            </div>
        </div>
    </div>

    <hr class="my-5 ">

    <div class="about">
        <div class="container text-center ">
            <div class="row">
                <div class="col-lg-4">
                    <img src="https://placehold.co/400" alt="" class="rounded-circle " style="width: 100px; height: 100px;">
                    <h2 class="fw-normal">Heading</h2>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                    <p><a class="btn btn-success" href="#">Lorem Ipsum »</a></p>
                </div>
                <div class="col-lg-4">
                    <img src="https://placehold.co/400" alt="" class="rounded-circle " style="width: 100px; height: 100px;">
                    <h2 class="fw-normal">Heading</h2>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                    <p><a class="btn btn-success" href="#">Lorem Ipsum »</a></p>
                </div>
                <div class="col-lg-4">
                    <img src="https://placehold.co/400" alt="" class="rounded-circle " style="width: 100px; height: 100px;">
                    <h2 class="fw-normal">Heading</h2>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                    <p><a class="btn btn-success " href="#">Lorem Ipsum »</a></p>
                </div>
            </div>
        </div>
    </div>

    <script>
        const darkModeSwitch = document.getElementById('darkModeSwitch');
        const body = document.body;
        const header = document.getElementById('pageHeader');
        const jumbotron = document.getElementById('jumbotron');

        darkModeSwitch.addEventListener('change', () => {
            if (darkModeSwitch.checked) {
                body.classList.add('dark-mode');
                header.classList.remove('navbar-light');
                header.classList.add('navbar-dark', 'bg-dark');
            } else {
                body.classList.remove('dark-mode');
                header.classList.remove('navbar-dark', 'bg-dark');
                header.classList.add('navbar-light', 'header-primarycolor');
            }
        });
    </script>

    <script>
        var videoCarousel = document.getElementById('videoCarousel');
        videoCarousel.addEventListener('slide.bs.carousel', function (event) {
            var videos = videoCarousel.querySelectorAll('video');
            videos.forEach(function (video, index) {
                if (index != event.to) {
                    video.pause();
                } else {
                    video.play();
                }
            });
        })
    </script>

</asp:Content>
