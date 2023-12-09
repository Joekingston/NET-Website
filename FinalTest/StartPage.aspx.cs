/*
* FILE				: StartPage.aspx.cs
* PROJECT			: PROG 2001 - Final Exam Practical Component
* PROGRAMMERS		: Joey Carson (ID: 8213035, Lab Section: 6), Cody Glanville (ID: 8864645, Lab Section: 3)
* FIRST VERSION		: December 03, 2023
* DESCRIPTION		:
*	This file is used in order to hold the code-behind of the starting page of the SET Pizza Shop for receiving a user's
*	full name. As such, this file holds validation and redirection methods that determine if the name the user entered was
*	valid for the application and if so, it will redirect them accordingly if they press the button to continue. 
*/

using System;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalTest
{
    /*
    * PUBLIC PARTIAL CLASS         : StartPage
    * DESCRIPTION	               :
    *	This class acts to hold the server-sided methods for our starting page. These methods are ultimately used to validate user input regarding
    *	user names and then either continue to the next page in the application or prompt the user to enter a valid username that is an 
    *	acceptable format.
    */
    public partial class StartPage : System.Web.UI.Page
    {
        /*
        *	METHOD          : Page_Load(object sender, EventArgs e)
        *	DESCRIPTION		:
        *		This method is automatically called upon and acts as an event handler in the page lifecycle. This method ultimately acts to
        *		perform tasks when a webpage isloaded. In this particular case, we changed this page's validation settings to allow for a custom 
        *		validator.
        *	PARAMETERS      :
        *		object sender            :   This is the object that triggered the event for the page to load
        *		EventArgs e              :   This is an object that contains event-specific data
        *	RETURNS			:
        *		void	                 :	 This method does not have any return value
        */
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }


        /*
        *	METHOD          : ToMenu(object sender, EventArgs e)
        *	DESCRIPTION		:
        *		This method is activated when a user clicks the "Start Order" button on our default page for the SET Pizza Shop. If
        *		the username the user has entered was determined to be valid, they will be redirected to the page where they can choose
        *		the toppings for their pizza order.
        *	PARAMETERS      :
        *		object sender            :   This is the object that triggered the event for the page to load
        *		EventArgs e              :   This is an object that contains event-specific data
        *	RETURNS			:
        *		void	                 :	 This method does not have any return value
        */
        protected void ToMenu(object sender, EventArgs e)
        {
            // Used to send the user to the next page (if their name ended up being valid through the validation)

            if (Page.IsValid) // If the page was valid from the server validation function then we can go to the next page
            {
                Response.Redirect("./Menu.aspx");
            }

            // Otherwise, the user will have to enter another name in order to pass validation
        }

        /*
        *	METHOD          : NameValidation(object sender, ServerValidateEventArgs e)
        *	DESCRIPTION		:
        *		This method is activated as a validation method to determine if the name the user has input for their time on the SET Pizza Shop
        *		can be used for their duration on the website. This method will go through a series of tests to validate the user input and check 
        *		if their name contained only alphabetic characters and if it was two parts (first AND last name). If the user has input a valid name, 
        *		the page will be deemed valid and session variables will be created for their name. Otherwise, the page will be deemed invalid.
        *	PARAMETERS      :
        *		object sender                   :   This is the object that triggered the event for the page to load
        *		ServerValidateEventArgs e       :   This is an object that contains event-specific data
        *	RETURNS			:
        *		void	                        :	This method does not have any return value
        */
        protected void NameValidation(object sender, ServerValidateEventArgs e)
        {
            string userInput = e.Value;                         // Original Input

            string[] nameSections = userInput.Split(' ');       // User input divided into two parts

            if (nameSections.Length != 2)                       // Determines if the name has exactly two separate parts (first and last name)
            {
                e.IsValid = false;
                return;
            }
            else if (string.IsNullOrWhiteSpace(nameSections[0]) || string.IsNullOrWhiteSpace(nameSections[1])) // Check if the users first or second name is blank
            {
                e.IsValid = false;
                return;
            }
            else
            {
                // Check both first and last name to only contain letters, break early and return false if the name does not only contain letters

                foreach (string section in nameSections)
                {
                    foreach (char c in section)
                    {
                        if (!char.IsLetter(c))
                        {
                            e.IsValid = false;
                            return;
                        }
                    }
                }

                // Otherwise we have made it to the end and the name can be used
                e.IsValid = true;
                Session["userName"] = nameSections[0];      // Specifically make a session variable the user's first name to align with the Ciao Requirement
                Session["fullName"] = userInput;            // Specifically make a session variable the user's full name to align with the summary page requirement
            }
        }
    }
}