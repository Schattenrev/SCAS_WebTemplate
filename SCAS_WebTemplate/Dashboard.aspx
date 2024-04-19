<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Master.Master" CodeBehind="Dashboard.aspx.vb" Inherits="SCAS_WebTemplate.Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid" id="dashboard_wrapper">
        <div class="row">
            <div class="col-md-3 col-lg-2 border border-gray-300 border-start-0 border-top-0 border-bottom-0" id="Dashboard_Menu">
                <h4 class="d-flex justify-content-between align-items-center mb-3">
                    <span class="mt-4">Dashboard</span>
                </h4>
                <div class="nav flex-column nav-pills" id="v-right-pills" role="tablist" aria-orientation="vertical">
                    <a class="nav-link active" id="v-pills-home-tab" data-toggle="pill" href="#v-pills-home" role="tab" aria-controls="v-pills-home" aria-selected="true">Overview</a>
                    <a class="nav-link" id="v-pills-profile-tab" data-toggle="pill" href="#v-pills-profile" role="tab" aria-controls="v-pills-profile" aria-selected="false">Sales</a>
                    <a class="nav-link" id="v-pills-messages-tab" data-toggle="pill" href="#v-pills-messages" role="tab" aria-controls="v-pills-messages" aria-selected="false">Products</a>
                    <a class="nav-link" id="v-pills-settings-tab" data-toggle="pill" href="#v-pills-settings" role="tab" aria-controls="v-pills-settings" aria-selected="false">Customers</a>
                </div>
            </div>

            <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
                <div
                    class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
                    <h1 class="h2">Overview</h1>
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
                </div>
                <div class="row mt-4">
                    <div class="col-md-6">
                        <div class="card">
                            <div class="card-header">
                                Bar Chart
                            </div>
                            <div class="card-body">
                                <canvas id="barChart" class="chart-canvas"></canvas>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="card">
                            <div class="card-header">
                                Pie Chart
                            </div>
                            <div class="card-body">
                                <canvas id="pieChart" class="chart-canvas"></canvas>
                            </div>
                        </div>
                    </div>
                </div>
            </main>
        </div>
    </div>

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

    <script>
        // Bar chart
        const barChartCanvas = document.getElementById('barChart').getContext('2d');
        const barChart = new Chart(barChartCanvas, {
            type: 'bar',
            data: {
                labels: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'],
                datasets: [{
                    label: 'Sales',
                    data: [12, 19, 3, 5, 2, 3, 7, 8, 9, 10, 11, 12],
                    backgroundColor: 'rgba(75, 192, 192, 0.2)',
                    borderColor: 'rgba(75, 192, 192, 1)',
                    borderWidth: 1
                }]
            },
            options: {
                scales: {
                    y: {
                        beginAtZero: true
                    }
                }
            }
        });

        // Pie chart
        const pieChartCanvas = document.getElementById('pieChart').getContext('2d');
        const pieChart = new Chart(pieChartCanvas, {
            type: 'pie',
            data: {
                labels: ['Desktop', 'Tablet', 'Mobile'],
                datasets: [{
                    label: 'Devices',
                    data: [300, 50, 100],
                    backgroundColor: ['#4e73df', '#1cc88a', '#36b9cc'],
                    hoverOffset: 4
                }]
            },
            options: {
                maintainAspectRatio: false,
                plugins: {
                    legend: {
                        display: true,
                        position: 'bottom',
                        labels: {
                            padding: 25,
                            boxWidth: 20
                        }
                    }
                }
            }
        });
    </script>

</asp:Content>
