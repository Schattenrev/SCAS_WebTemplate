<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Vertical2.Master" CodeBehind="Dates.aspx.vb" Inherits="SCAS_WebTemplate.Dates" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src='https://cdn.jsdelivr.net/npm/fullcalendar@6.1.11/index.global.min.js'></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container mb-5">
        <h1 class="text-center mb-4">Simple Calendar</h1>
        <div id="calendar"></div>
        <div class="text-center mt-3">
            <button class="btn btn-primary" id="prevBtn">Previous</button>
            <button class="btn btn-primary" id="nextBtn">Next</button>
        </div>
    </div>

    <!-- Bootstrap JS and jQuery (needed for FullCalendar) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script>
        document.addEventListener('DOMContentLoaded', function () {
            var calendarEl = document.getElementById('calendar');
            var calendar = new FullCalendar.Calendar(calendarEl, {
                initialView: 'dayGridMonth',
                headerToolbar: {
                    left: '',
                    center: 'title',
                    right: ''
                }
            });
            calendar.render();

            // Previous button click event
            document.getElementById('prevBtn').addEventListener('click', function () {
                calendar.prev();
            });

            // Next button click event
            document.getElementById('nextBtn').addEventListener('click', function () {
                calendar.next();
            });
        });
    </script>

</asp:Content>
