<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Finished.aspx.cs" Inherits="FinalTest.Page4" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="FinalPage">

        <h1 ID="FullNamePrompt">Thank you, <%= Session["fullName"] %>!</h1>
        <p ID="FinalOrderStatus">Your order has been <%= Session["orderStatus"] %>!</p>
        <img src="EndPic.png" alt="FINAL PIZZA" id="FinalPicture"/>

    </div>

</asp:Content>
