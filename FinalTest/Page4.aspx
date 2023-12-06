<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Page4.aspx.cs" Inherits="FinalTest.Page4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Thankyou, <%= Session["fullName"] %></h1>

    <p>Your order has been <%= Session["orderStatus"] %>!</p>
</asp:Content>
