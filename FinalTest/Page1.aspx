<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Page1.aspx.cs" Inherits="FinalTest.Page1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Main Landing Page (Username Entry)</title>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div>
            <p>Please enter your first and last name...</p>                                            <!-- Prompt the user for their name -->

            <asp:TextBox ID="userName" runat="server"></asp:TextBox>                                   <!-- Make an input source for the user input -->

            <asp:Button ID="nameSubmit" runat="server" text="confirm" CausesValidation="true" onClick="ToMenu"/>    <!-- Create a submitting button -->          
            
            <asp:CustomValidator ID="NameValidator" runat="server" ControlToValidate="userName" OnServerValidate="NameValidation"  
                ValidateEmptyText="true" ErrorMessage="ERROR: Usernames cannot be BLANK and need a FIRST and LAST name"></asp:CustomValidator>     <!-- Validator for the name TextBox -->
    </div>
</asp:Content>

