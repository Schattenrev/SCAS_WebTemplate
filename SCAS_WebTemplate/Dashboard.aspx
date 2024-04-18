<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Master.Master" CodeBehind="Dashboard.aspx.vb" Inherits="SCAS_WebTemplate.Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">
        <div class="row">
            <nav id="sidebarMenu" class="col-md-3 col-lg-2 d-md-block bg-light vh-100 sidebar collapse">
                <div class="h-100 d-flex flex-column justify-content-center">
                    <h5 class="fs-4 text-center">Dashboard</h5>
                    <ul class="nav nav-pills flex-column mb-auto">
                        <li class="nav-item">
                            <a href="#" class="nav-link active" aria-current="page">
                                <svg class="bi me-2" width="16" height="16">
                                    <use xlink:href="#home" />
                                </svg>
                                Overview
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="#" class="nav-link">
                                <svg class="bi me-2" width="16" height="16">
                                    <use xlink:href="#table" />
                                </svg>
                                Reports
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="#" class="nav-link">
                                <svg class="bi me-2" width="16" height="16">
                                    <use xlink:href="#gear" />
                                </svg>
                                Settings
                            </a>
                        </li>
                    </ul>
                </div>
            </nav>


        </div>
    </div>

</asp:Content>
