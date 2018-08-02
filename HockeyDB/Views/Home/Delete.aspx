<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<HockeyDB.Models.Player>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Delete
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Delete</h2>

<h3>Are you sure you want to delete this?</h3>
<fieldset>
    <legend>Player</legend>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.FirstName) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.FirstName) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.Lastname) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Lastname) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.Number) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Number) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.Team) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Team) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.Position) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Position) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.DateDrafted) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.DateDrafted) %>
    </div>
</fieldset>
<% using (Html.BeginForm()) { %>
    <%: Html.AntiForgeryToken() %>
    <p class="link">
        <input type="submit" value="Delete" /> |
        <%: Html.ActionLink("Back to List", "Index") %>
    </p>
<% } %>

</asp:Content>
