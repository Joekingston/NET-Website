<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Page1.aspx.cs" Inherits="FinalTest.Page1" %>

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
                            ValidateEmptyText="true" ErrorMessage="ERROR: Usernames cannot be BLANK or have Numbers and need a FIRST and LAST name"></asp:CustomValidator> <!-- Validator for the name TextBox -->
                    </div>
                </div>
                <div class="column">
                    <img src="pizza.png" alt="PIZZA PROP">
                </div>
            </div>
    </div>
</asp:Content>

