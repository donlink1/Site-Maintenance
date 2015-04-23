<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<SiteMaintenanceApp.Models.ServicesViewModel>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Services
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2 class="centerText">Services</h2>

    <div class="centerText space-above">

        <select id="search">
            <option selected="selected" disabled="disabled">Select a territory to see current services</option>
            <% foreach (var territory in Model.allTerritories)
               { %>
            <option value="<%= territory.territory1 %>"><%= territory.territory1 %></option>
            <% } %>
        </select>

        <table class="table table-striped table-hover table-bordered space-above centerTable" id="table">
            <thead>
                <tr>
                    <th class="centerText">Site</th>
                    <th class="centerText">Service</th>
                    <th class="centerText">Territory</th>
                </tr>
            </thead>
            <tbody>
                <% foreach (var service in Model.allServiceTiers)
                   { %>
                <tr>
                    <td class="centerText"><%: Model.allSites.FirstOrDefault(model => model.siteCode == service.siteCode).siteName %></td>
                    <td class="centerText"><%: service.serviceTierType %></td>
                    <td class="centerText"><%: Model.FindTerrritory(service, Model.allStaff, Model.allTerritories).territory1 %></td>
                </tr>
                <% } %>
            </tbody>
        </table>

    </div>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
    <script>
        /*$(document).ready(function () {
            $('select').on('change', function () {
                $("option:selected", this).text;
            });
        });*/
        $(document).ready(function () {
            var $rows = $('#table tbody tr');
            $('#search').on('change', function () {
                var val = $.trim($(this).val()).replace(/ +/g, ' ').toLowerCase();

                $rows.show().filter(function () {
                    var text = $(this).text().replace(/\s+/g, ' ').toLowerCase();
                    return !~text.indexOf(val);
                }).hide();
            });
        });
    </script>
</asp:Content>
