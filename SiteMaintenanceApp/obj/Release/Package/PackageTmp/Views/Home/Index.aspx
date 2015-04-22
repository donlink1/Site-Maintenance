<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="indexTitle" ContentPlaceHolderID="TitleContent" runat="server">
    Home Page - My ASP.NET MVC Application
</asp:Content>

<asp:Content ID="indexFeatured" ContentPlaceHolderID="FeaturedContent" runat="server">
    <%--<section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1>Home Page.</h1>
                <h2><%: ViewBag.Message %></h2>
            </hgroup>
            <p>
                To learn more about ASP.NET MVC visit
                <a href="http://asp.net/mvc" title="ASP.NET MVC Website">http://asp.net/mvc</a>.
                The page features <mark>videos, tutorials, and samples</mark> to help you get the most from ASP.NET MVC.
                If you have any questions about ASP.NET MVC visit
                <a href="http://forums.asp.net/1146.aspx/1?MVC" title="ASP.NET MVC Forum">our forums</a>.
            </p>
        </div>
    </section>--%>
</asp:Content>

<asp:Content ID="indexContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2 class="centerText">Welcome to my demo application for site maintenance.</h2>
    <br />
    <p class="centerText">
        Questions answered in this demo:
        <br />1. What is the distribution of serviceTier by territory?
        <br />2. Which sites have not received a lastMaintenanceCall since 1/1/2015?
        <br />3. What can you identify in this data that might be valuable to decision makers? In other words, can you show us something interesting about this data?
    </p>
    <p class="space-above centerText"> If you want immedaite results for the questions above, go to <%: Html.ActionLink("Tables", "Index", "Tables") %>.</p>
    <p class="space-above centerText"> If you want a map interpretation of the results, go to <%: Html.ActionLink("Map", "Index", "Map") %>.</p>
    <br />
    <p class="space-above centerText">If you have any questions, please contact me via:
        <br />Phone: (205) 243-4523
        <br />Email: <a href="mailto:ldm0007@auburn.edu">ldm0007@auburn.edu</a>
    </p>
</asp:Content>
