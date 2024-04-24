<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Vertical2.Master" CodeBehind="EntityTest.aspx.vb" Inherits="SCAS_WebTemplate.EntityTest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container mt-3">
        <h1>Entity Entry Form</h1>
        <ul class="nav nav-tabs" id="entityTabs" role="tablist">
            <li class="nav-item" role="presentation">
                <button class="nav-link active" id="customer-tab" data-bs-toggle="tab" data-bs-target="#customer-content" type="button" role="tab" aria-controls="customer-content" aria-selected="true">Customer</button>
            </li>
            <li class="nav-item" role="presentation">
                <button class="nav-link" id="supplier-tab" data-bs-toggle="tab" data-bs-target="#supplier-content" type="button" role="tab" aria-controls="supplier-content" aria-selected="false">Supplier</button>
            </li>
            <li class="nav-item" role="presentation">
                <button class="nav-link" id="logistics-tab" data-bs-toggle="tab" data-bs-target="#logistics-content" type="button" role="tab" aria-controls="logistics-content" aria-selected="false">Logistics</button>
            </li>
        </ul>
        <div class="tab-content" id="entityTabsContent">
            <div class="tab-pane fade show active" id="customer-content" role="tabpanel" aria-labelledby="customer-tab">
                <form id="customerForm">
                    <div class="mb-3">
                        <label for="customerName" class="form-label">Customer Name</label>
                        <input type="text" class="form-control" id="customerName" name="customerName" required>
                    </div>
                    <div class="mb-3">
                        <label for="customerEmail" class="form-label">Email Address</label>
                        <input type="email" class="form-control" id="customerEmail" name="customerEmail" required>
                    </div>
                    <div class="mb-3">
                        <label for="customerPhone" class="form-label">Phone Number</label>
                        <input type="tel" class="form-control" id="customerPhone" name="customerPhone" required>
                    </div>
                    <button type="submit" class="btn btn-primary">Submit Customer</button>
                </form>
            </div>
            <div class="tab-pane fade" id="supplier-content" role="tabpanel" aria-labelledby="supplier-tab">
                <form id="supplierForm">
                    <div class="mb-3">
                        <label for="supplierName" class="form-label">Supplier Name</label>
                        <input type="text" class="form-control" id="supplierName" name="supplierName" required>
                    </div>
                    <div class="mb-3">
                        <label for="supplierEmail" class="form-label">Email Address</label>
                        <input type="email" class="form-control" id="supplierEmail" name="supplierEmail" required>
                    </div>
                    <div class="mb-3">
                        <label for="supplierPhone" class="form-label">Phone Number</label>
                        <input type="tel" class="form-control" id="supplierPhone" name="supplierPhone" required>
                    </div>
                    <button type="submit" class="btn btn-primary">Submit Supplier</button>
                </form>
            </div>
            <div class="tab-pane fade" id="logistics-content" role="tabpanel" aria-labelledby="logistics-tab">
                <form id="logisticsForm">
                    <div class="mb-3">
                        <label for="logisticsCompany" class="form-label">Company Name</label>
                        <input type="text" class="form-control" id="logisticsCompany" name="logisticsCompany" required>
                    </div>
                    <div class="mb-3">
                        <label for="logisticsService" class="form-label">Service Type</label>
                        <input type="text" class="form-control" id="logisticsService" name="logisticsService" required>
                    </div>
                    <div class="mb-3">
                        <label for="logisticsArea" class="form-label">Coverage Area</label>
                        <textarea class="form-control" id="logisticsArea" name="logisticsArea" rows="3" required></textarea>
                    </div>
                    <button type="submit" class="btn btn-primary">Submit Logistics</button>
                </form>
            </div>
        </div>
        <script>
            $(function () {
                // Activate tab based on URL parameter (optional)
                const urlParams = new URLSearchParams(window.location.search);
                const activeTab = urlParams.get('entityType');
                if (activeTab) {
                    $(`#${activeTab}-tab`).tab('show');
                }

                // Handle form submissions (replace with your actual submission logic)
                $('#customerForm').submit(function (e) {
                    e.preventDefault();
                    const customerData = $(this).serialize();
                    console.log('Submitting customer data:', customerData);
                    // Submit data using AJAX or other methods
                });

                $('#supplierForm').submit(function (e) {
                    e.preventDefault();
                    const supplierData = $(this).serialize();
                    console.log('Submitting supplier data:', supplierData);
                    // Submit data using AJAX or other methods
                });

                $('#logisticsForm').submit(function (e) {
                    e.preventDefault();
                    const logisticsData = $(this).serialize();
                    console.log('Submitting logistics data:', logisticsData);
                    // Submit data using AJAX or other methods
                });
            });
        </script>
    </div>

</asp:Content>
