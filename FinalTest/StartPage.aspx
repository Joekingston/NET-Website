<%-- 
FILE		    : StartPage.aspx
PROJECT			: PROG 2001 - Final Exam Practical Component
PROGRAMMERS		: Joey Carson (ID: 8213035, Lab Section: 6), Cody Glanville (ID: 8864645, Lab Section: 3)
FIRST VERSION   : December 03, 2023
DESCRIPTION		:
	This file contains the HTML elements utilized in order to create our starting page for our final 
    exam. This page is meant to mimic a web page that will take in customer's first and last name to use
    for their order on the SET pizza ordering application. As such, after entering a valid username, the 
    user will be redirected the pizza ordering menu. 
--%>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StartPage.aspx.cs" Inherits="FinalTest.StartPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Main Landing Page (Username Entry)</title>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="Menu" >
        <h2 id="FriendlyTitle">Don't be a Stranger! We're Family at SET Pizza! </h2>
        <div class="flex-container">
            <div class="column">
                <div class="P1Title">
                    <p>Please enter your first and last name</p>
                </div>
                <div class="UserInput">
                    <asp:TextBox ID="userName" CssClass="EnterName" runat="server"></asp:TextBox>  <!-- Make an input source for the user input -->
                    <asp:Button ID="nameSubmit" CssClass="SubmitName" runat="server" text="Start Order" CausesValidation="true" onClick="ToMenu"/>  <!-- Create a submitting button -->                     
                    <asp:CustomValidator ID="NameValidator" runat="server" ControlToValidate="userName" OnServerValidate="NameValidation"
                        ValidateEmptyText="true" ErrorMessage="ERROR: Usernames cannot be blank, must be alphabetical, and must contain two parts (first and last)"
                        CssClass="NameValidator"></asp:CustomValidator> <!-- Validator for the name TextBox -->
                </div>
            </div>
            <div class="column">
                <img src="pizza.png" alt="PIZZA PROP">
            </div>
        </div>
    </div>
</asp:Content>

