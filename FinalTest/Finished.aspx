<%-- 
FILE		    : Finished.aspx
PROJECT			: PROG 2001 - Final Exam Practical Component
PROGRAMMERS		: Joey Kingston, Cody Glanville
FIRST VERSION   : December 03, 2023
DESCRIPTION		:
	This file is used in order to display the status of a user's order for the SET Pizza Shop. Depending on the user's choice on the previous
    page of either confirming or cancelling their order, they will be prompted in this page with a thankyou using their full name, and also the 
    status of their order (confirmed or cancelled).
--%>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Finished.aspx.cs" Inherits="FinalTest.Finished" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="FinalPage">

        <h1 ID="FullNamePrompt">Thank you, <%= Session["fullName"] %>!</h1>
        <p ID="FinalOrderStatus">Your order has been <%= Session["orderStatus"] %>!</p>
        <img src="EndPic.png" alt="FINAL PIZZA" id="FinalPicture"/>

    </div>

</asp:Content>
