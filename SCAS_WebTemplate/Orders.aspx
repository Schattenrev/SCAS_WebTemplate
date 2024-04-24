<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Vertical2.Master" CodeBehind="Orders.aspx.vb" Inherits="SCAS_WebTemplate.Orders" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container mt-3">
        <h1>Electronic Company - Order List</h1>
        <hr>
        <table class="table table-striped table-bordered">
            <thead>
                <tr>
                    <th scope="col">Order ID</th>
                    <th scope="col">Customer Name</th>
                    <th scope="col">Order Date</th>
                    <th scope="col">Total Amount</th>
                    <th scope="col">Status</th>
                </tr>
            </thead>
            <tbody>
            </tbody>
        </table>
    </div>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <script>
        $(document).ready(function () {
            // Replace this with your logic to fetch order data from a server
            const orders = [
                { id: 1234, name: "John Doe", date: "2024-04-20", amount: 199.99, status: "Processing" },
                { id: 5678, name: "Jane Smith", date: "2024-04-22", amount: 425.75, status: "Shipped" }
            ];

            // Loop through orders and populate the table body
            orders.forEach(function (order) {
                const tableRow = `<tr>
          <td>${order.id}</td>
          <td>${order.name}</td>
          <td>${order.date}</td>
          <td>$${order.amount.toFixed(2)}</td>
          <td>${order.status}</td>
        </tr>`;
                $("tbody").append(tableRow);
            });
        });
    </script>

</asp:Content>
