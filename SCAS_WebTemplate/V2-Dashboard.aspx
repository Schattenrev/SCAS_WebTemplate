<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Vertical2.Master" CodeBehind="V2-Dashboard.aspx.vb" Inherits="SCAS_WebTemplate.V2_Dashboard" %>

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
            data: salesData
        });

        // Initialize product chart
        var productCtx = document.getElementById('productChart').getContext('2d');
        var productChart = new Chart(productCtx, {
            type: 'bar',
            data: productData
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
