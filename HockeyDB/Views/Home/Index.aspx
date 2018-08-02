<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<HockeyDB.Models.Player>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">


<h2>Index</h2>

<p class="link">
    <%: Html.ActionLink("Create New", "Create") %>
</p>
<table>
    <tr>
        <th>
            <%: Html.DisplayNameFor(model => model.FirstName) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.Lastname) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.Number) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.Team) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.Position) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.DateDrafted) %>
        </th>
        <th></th>
    </tr>

<% foreach (var item in Model) { %>
    <tr>
        <td>
            <%: Html.DisplayFor(modelItem => item.FirstName) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.Lastname) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.Number) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.Team) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.Position) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.DateDrafted) %>
        </td>
        <td class="options">
            <%: Html.ActionLink("Edit", "Edit", new { id=item.Id }) %> |
            <%: Html.ActionLink("Delete", "Delete", new { id=item.Id }) %>
        </td>
    </tr>
<% } %>

</table>

</asp:Content>
