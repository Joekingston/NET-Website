<%-- 
FILE		    : Confirmation.aspx
PROJECT			: PROG 2001 - Final Exam Practical Component
PROGRAMMERS		: Joey Carson (ID: 8213035, Lab Section: 6), Cody Glanville (ID: 8864645, Lab Section: 3)
FIRST VERSION   : December 03, 2023
DESCRIPTION		:
	This file is used in order to hold the logic for creating a confirmation menu that will either allow a user to cancel or
    submit their pizza order to the SET Pizza Shop. The HTML elements will show the customer their order and present them with
    two options (cancel or confirm) alongside a description of their pizza order (toppings and price) imitating a receipt.
--%>

<%@ Page Title="Confirmation" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Confirmation.aspx.cs" Inherits="Final.Confirmation" %>

<asp:Content ID="Confirmation" ContentPlaceHolderID="MainContent" runat="server">
    <div class="content">
        <div class="Menu">
            <h2 class="OrderHeader" >Order Confirmation</h2>
            <h3>Ciao, <%= Session["userName"] %>!</h3>
            <p>Please review your order and confirm everything is correct!</p>
            <div class="receipt">
                <p>Your <strong>LARGE</strong> Pizza Contains:</p>
                <div id="orderDetails">

                </div>
                <div id="totalPrice2">Total Price: $<span id="totalPrice">10.00</span></div>

            </div>

            <asp:Button CssClass="btnCancel" runat="server" onclick="CancelOrder" Text="CANCEL"/>
            <asp:Button CssClass="btnConfirm" runat="server" onclick="ConfirmOrder" Text="CONFIRM"/>


        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
    <script>
        // Name    : Start
        // Purpose : Intializes everything dynamically on start, getting total price and toppings.
        // Inputs  : None
        // Returns : void
        $(function Start() {
            var toppingsData = <%= Session["ToppingsData"] %>;
            var totalPrice = <%= Session["TotalPrice"] %>
            $('#totalPrice').html(totalPrice.toFixed(2));
        // adds each item to list
        var orderDetailsHtml = '';

            $.each(toppingsData, function (topping, isSelected) {
                if (isSelected) {
                     orderDetailsHtml += '<div>' + topping;
                }
            });

            $('#orderDetails').html(orderDetailsHtml);
        });
    </script>
</asp:Content>
