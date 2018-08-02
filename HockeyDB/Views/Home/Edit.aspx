<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<HockeyDB.Models.Player>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Edit
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Edit</h2>

<% using (Html.BeginForm()) { %>
    <%: Html.AntiForgeryToken() %>
    <%: Html.ValidationSummary(true) %>

    <fieldset>
        <legend>Player</legend>

        <%: Html.HiddenFor(model => model.Id) %>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.FirstName) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.FirstName) %>
            <%: Html.ValidationMessageFor(model => model.FirstName) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Lastname) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Lastname) %>
            <%: Html.ValidationMessageFor(model => model.Lastname) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Number) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Number) %>
            <%: Html.ValidationMessageFor(model => model.Number) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Team) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Team) %>
            <%: Html.ValidationMessageFor(model => model.Team) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Position) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Position) %>
            <%: Html.ValidationMessageFor(model => model.Position) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.DateDrafted) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.DateDrafted) %>
            <%: Html.ValidationMessageFor(model => model.DateDrafted) %>
        </div>

        <p>
            <input type="submit" value="Save" />
        </p>
    </fieldset>
<% } %>

<div class="link">
    <%: Html.ActionLink("Back to List", "Index") %>
</div>

</asp:Content>
