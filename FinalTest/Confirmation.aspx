<%@ Page Title="Confirmation" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Confirmation.aspx.cs" Inherits="Final.Confirmation" %>

<asp:Content ID="Confirmation" ContentPlaceHolderID="MainContent" runat="server">
    <div class="content">
        <div class="Menu">
        <h2>Order Confirmation</h2>
        <p>Ciao, <%= Session["userName"] %>!</p>
        <p>Your order details:</p>
        <div id="orderDetails">

        </div>
        <div id="totalPrice2">Total Price: $<span id="totalPrice">10.00</span></div>
        <button type="button" id="btnConfirm" onclick="confirmOrder()">CONFIRM</button>
        <button type="button" id="btnCancel" onclick="cancelOrder()">CANCEL</button>
    </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
    <script>
        $(function Start() {
            
            var orderDetails = <%= Session["orderDetails"] %>; 
            $('#orderDetails').html(orderDetails);
        });

        function confirmOrder() {

        }

        function cancelOrder() {
        }
    </script>
</asp:Content>
