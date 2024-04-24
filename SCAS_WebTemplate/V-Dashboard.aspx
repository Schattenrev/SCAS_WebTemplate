<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Vertical.Master" CodeBehind="V-Dashboard.aspx.vb" Inherits="SCAS_WebTemplate.V_Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form id="form1" runat="server">
        <div class="container mt-5">
            <h1 class="mb-4">Electronic Company Sales Dashboard</h1>
            <div class="row">
                <div class="col-md-6">
                    <canvas id="salesChart" width="400" height="200"></canvas>
                </div>
                <div class="col-md-6">
                    <canvas id="productChart" width="400" height="200"></canvas>
                </div>
            </div>
            <div class="row mt-5">
                <div class="col-md-12">
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th>Product</th>
                                <th>Units Sold</th>
                                <th>Total Sales</th>
                            </tr>
                        </thead>
                        <tbody id="salesTableBody">
                            <!-- Table rows will be populated dynamically -->
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </form>

    <!-- Script to populate charts and table -->
    <script>
        // Sample data
        var salesData = {
            labels: ["January", "February", "March", "April", "May", "June"],
            datasets: [{
                label: "Monthly Sales",
                data: [100, 200, 300, 400, 500, 600],
                backgroundColor: 'rgba(255, 99, 132, 0.2)',
                borderColor: 'rgba(255, 99, 132, 1)',
                borderWidth: 1
            }]
        };

        var productData = {
            labels: ["Laptop", "Smartphone", "Tablet", "TV"],
            datasets: [{
                label: "Product Sales",
                data: [150, 250, 200, 300],
                backgroundColor: [
                    'rgba(255, 99, 132, 0.2)',
                    'rgba(54, 162, 235, 0.2)',
                    'rgba(255, 206, 86, 0.2)',
                    'rgba(75, 192, 192, 0.2)'
                ],
                borderColor: [
                    'rgba(255, 99, 132, 1)',
                    'rgba(54, 162, 235, 1)',
                    'rgba(255, 206, 86, 1)',
                    'rgba(75, 192, 192, 1)'
                ],
                borderWidth: 1
            }]
        };

        // Initialize sales chart
        var salesCtx = document.getElementById('salesChart').getContext('2d');
        var salesChart = new Chart(salesCtx, {
            type: 'line',
            data: salesData,
            options: {
                scales: {
                    yAxes: [{
                        scaleLabel: {
                            display: true,
                            labelString: 'Sales ($)'
                        }
                    }]
                }
            }
        });

        // Initialize product chart
        var productCtx = document.getElementById('productChart').getContext('2d');
        var productChart = new Chart(productCtx, {
            type: 'bar',
            data: productData,
            options: {
                scales: {
                    yAxes: [{
                        scaleLabel: {
                            display: true,
                            labelString: 'Sales ($)'
                        }
                    }]
                }
            }
        });

        // Function to populate sales table
        function populateSalesTable() {
            var salesTableBody = document.getElementById('salesTableBody');
            var products = ["Laptop", "Smartphone", "Tablet", "TV"];
            var unitsSold = [150, 250, 200, 300];
            var totalSales = [15000, 25000, 20000, 30000];

            for (var i = 0; i < products.length; i++) {
                var row = "<tr><td>" + products[i] + "</td><td>" + unitsSold[i] + "</td><td>" + totalSales[i] + "</td></tr>";
                salesTableBody.innerHTML += row;
            }
        }

        // Call the function to populate sales table
        populateSalesTable();
    </script>




</asp:Content>

<%--<div class="container-fluid">
    <div class="row">
        <div class="col-md-6">
            <canvas id="chart1"></canvas>
        </div>
        <div class="col-md-6">
            <canvas id="chart2"></canvas>
        </div>
    </div>
    <div class="row">
        <div class="col-md-6">
            <canvas id="chart3"></canvas>
        </div>
        <div class="col-md-6">
            <canvas id="chart4"></canvas>
        </div>
    </div>
</div>

<script>
    // Sample related data for demonstration
    var data = {
        labels: ['January', 'February', 'March', 'April', 'May', 'June', 'July'],
        datasets: [{
            label: 'Dataset 1',
            data: [65, 59, 80, 81, 56, 55, 40],
            borderColor: 'rgba(255, 99, 132, 1)',
            borderWidth: 1
        }, {
            label: 'Dataset 2',
            data: [28, 48, 40, 19, 86, 27, 90],
            backgroundColor: 'rgba(54, 162, 235, 0.2)',
            borderColor: 'rgba(54, 162, 235, 1)',
            borderWidth: 1
        }]
    };

    var options = {
        scales: {
            y: {
                beginAtZero: true
            }
        }
    };

    var ctx1 = document.getElementById('chart1').getContext('2d');
    var chart1 = new Chart(ctx1, {
        type: 'bar',
        data: data,
        options: options
    });

    var ctx2 = document.getElementById('chart2').getContext('2d');
    var chart2 = new Chart(ctx2, {
        type: 'line',
        data: data,
        options: options
    });

    var ctx3 = document.getElementById('chart3').getContext('2d');
    var chart3 = new Chart(ctx3, {
        type: 'pie',
        data: data,
        options: options
    });

    var ctx4 = document.getElementById('chart4').getContext('2d');
    var chart4 = new Chart(ctx4, {
        type: 'radar',
        data: data,
        options: options
    });
</script>--%>