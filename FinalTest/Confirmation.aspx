<%@ Page Title="Confirmation" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Confirmation.aspx.cs" Inherits="Final.Confirmation" %>

<asp:Content ID="Confirmation" ContentPlaceHolderID="MainContent" runat="server">
    <div class="content">
        <div class="Menu">
            <h2>Order Confirmation</h2>
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



        //function confirmOrder() {

        //}

        //function cancelOrder() {
        //}
    </script>
</asp:Content>
