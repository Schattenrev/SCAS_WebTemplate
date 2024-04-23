<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Vertical.Master" CodeBehind="V-Dashboard.aspx.vb" Inherits="SCAS_WebTemplate.V_Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">
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
    </script>

</asp:Content>
