<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Master.Master" CodeBehind="Dashboard.aspx.vb" Inherits="SCAS_WebTemplate.Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

    <div class="container-fluid">
        <div class="row">
            <%--<nav id="sidebarMenu" class="col-md-3 col-lg-2 d-md-block vh-100 sidebar collapse Dashboard_Menu">
                <div class="h-100 d-flex flex-column justify-content-center">
                    <h5 class="fs-4 text-center">Dashboard</h5>
                    <ul class="nav nav-pills flex-column mb-auto mt-2">
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
            </nav>--%>
            <div class="col-md-3 col-lg-2 border-right">
                <h4 class="d-flex justify-content-between align-items-center mb-3">
                    <span class="text-dark">Dashboard</span>
                </h4>
                <div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                    <a class="nav-link active" id="v-pills-home-tab" data-toggle="pill" href="#v-pills-home" role="tab" aria-controls="v-pills-home" aria-selected="true">Overview</a>
                    <a class="nav-link" id="v-pills-profile-tab" data-toggle="pill" href="#v-pills-profile" role="tab" aria-controls="v-pills-profile" aria-selected="false">Sales</a>
                    <a class="nav-link" id="v-pills-messages-tab" data-toggle="pill" href="#v-pills-messages" role="tab" aria-controls="v-pills-messages" aria-selected="false">Products</a>
                    <a class="nav-link" id="v-pills-settings-tab" data-toggle="pill" href="#v-pills-settings" role="tab" aria-controls="v-pills-settings" aria-selected="false">Customers</a>
                </div>
            </div>

            <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
                <div
                    class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
                    <h1 class="h2">Dashboard</h1>
                    <div class="btn-toolbar mb-3" role="toolbar" aria-label="Toolbar with outline buttons">
                        <div class="btn-group me-2">
                            <button type="button" class="btn btn-sm btn-outline-secondary">Share</button>
                            <button type="button" class="btn btn-sm btn-outline-secondary">Export</button>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="card">
                            <div class="card-header">
                                Sales This Month
                            </div>
                            <div class="card-body">
                                <canvas id="salesChart" width="400" height="200"></canvas>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="card">
                            <div class="card-header">
                                Top Products
                            </div>
                            <div class="card-body">
                                <table class="table table-striped">
                                    <thead>
                                        <tr>
                                            <th scope="col">#</th>
                                            <th scope="col">Product</th>
                                            <th scope="col">Sales</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <th scope="row">1</th>
                                            <td>Product A</td>
                                            <td>100</td>
                                        </tr>
                                        <tr>
                                            <th scope="row">2</th>
                                            <td>Product B</td>
                                            <td>80</td>
                                        </tr>
                                        <tr>
                                            <th scope="row">3</th>
                                            <td>Product C</td>
                                            <td>70</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6" style="width: 400px; height: 200px;">
                        <div class="card">
                            <div class="card-header">
                                Pie Chart (Distribution)
                            </div>
                            <div class="card-body">
                                <canvas id="anotherChart"></canvas>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6" style="width: 400px; height: 200px;">
                        <div class="card">
                            <div class="card-header">
                                Bar Chart Distribution
                            </div>
                            <div class="card-body">
                                <canvas id="newBarChart"></canvas>
                            </div>
                        </div>
                    </div>
                </div>
            </main>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script>
        // Hypothetical chart data for salesChart 
        var salesData = {
            labels: ['Day 1', 'Day 2', 'Day 3', 'Day 4', 'Day 5'],
            datasets: [{
                label: 'Sales',
                data: [50, 70, 60, 80, 90],
                backgroundColor: 'rgba(255, 99, 132, 0.2)',
                borderColor: 'rgba(255, 99, 132, 1)',
                borderWidth: 1
            }]
        };

        // Chart configuration for salesChart
        var ctx = document.getElementById('salesChart').getContext('2d');
        var salesChart = new Chart(ctx, {
            type: 'line',
            data: salesData,
            options: {
                scales: {
                    yAxes: [{
                        ticks: {
                            beginAtZero: true
                        }
                    }]
                }
            }
        });

        var anotherChartData = {
            labels: ['Category A', 'Category B', 'Category C'],
            datasets: [{
                label: 'Data',
                data: [30, 50, 20],
                backgroundColor: ['#ffbbcc', '#99ff99', '#ffcc99'],
                hoverBackgroundColor: ['#ff8080', '#7cff7c', '#ffc07a']
            }]
        };

        var anotherChart = new Chart(document.getElementById('anotherChart').getContext('2d'), {
            type: 'pie',
            data: anotherChartData,
            options: {}
        });

        var newBarChartData = {
            labels: ['Category A', 'Category B', 'Category C'],
            datasets: [{
                label: 'Data',
                data: [30, 50, 20],
                backgroundColor: ['#ffbbcc', '#99ff99', '#ffcc99'],
                hoverBackgroundColor: ['#ff8080', '#7cff7c', '#ffc07a']
            }]
        };

        // Chart configuration for newBarChart
        var ctx = document.getElementById('newBarChart').getContext('2d');
        var newBarChart = new Chart(ctx, {
            type: 'bar',
            data: newBarChartData,
            options: {
                scales: {
                    yAxes: [{
                        ticks: {
                            beginAtZero: true
                        }
                    }]
                }
            }
        });
    </script>
</asp:Content>
