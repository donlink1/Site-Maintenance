<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<SiteMaintenanceApp.Models.MaintenanceTimesViewModel>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Maintenance Times
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <link rel="stylesheet" href="../../Content/bootstrap.min.css">

    <h2 class="centerText">Maintenance Times</h2>

    <div class="centerText space-above">

        <p>Date to check what sites have not recieved a maintenance call:</p>
        <div class="well span12 main">
            <input type="text" id="datepickerObj" value="" class="span2 datepicker" placeholder="Date..." name="date"> (In progress) <br>
        </div>

        <table class="table table-striped table-hover table-bordered space-above centerTable" id="table">
            <thead>
                <tr>
                    <th class="centerText">Site</th>
                    <th class="centerText">Last Maintenance Call</th>
                </tr>
            </thead>
            <tbody>
                <% foreach (var site in Model.allSites)
                   { %>
                       <% var callLog = Model.allCallLogs.Where(model => model.lastMaintenanceCall != null).OrderByDescending(model => model.lastMaintenanceCall).FirstOrDefault(model => model.siteCode == site.siteCode);
                        { 
                            if (callLog != null && callLog.lastMaintenanceCall < new DateTime(2015, 1, 1)) {%>   
                            <tr>
                                <td class="centerText"><%: site.siteName %></td>
                                <td class="centerText" id="call" data-value="<%= callLog.lastMaintenanceCall %>"><%: callLog.lastMaintenanceCall %></td>
                            </tr>
                         <% } %>
                     <% } %>
                <% } %>
            </tbody>
        </table>

    </div>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
    <script>
        $(function () {
            $('.datepicker').datepicker({
                format: 'mm-dd-yyyy'
            });
        });
        $(document).ready(function () {
            var $rows = $('#table tbody tr');
            $('#datepickerObj').on('change', function () {
                var pickerDate = new Date($.trim($(this).val()).replace(/ +/g, ' ').toLowerCase());

                $rows.show().filter(function () {
                    var selector = document.querySelector('#call');
                    var date = new Date(selector.dataset.value);
                    return (pickerDate > date);
                }).hide();
            });
        });
    </script>
</asp:Content>

