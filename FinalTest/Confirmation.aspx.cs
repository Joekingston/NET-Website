/*
* FILE				: Confirmation.aspx.cs
* PROJECT			: PROG 2001 - Final Exam Practical Component
* PROGRAMMERS		: Joey Kingston, Cody Glanville
* FIRST VERSION		: December 03, 2023
* DESCRIPTION		:
*	This file is used for the server-sided logic used in the confirmation page of the SET Pizza Shop application. The methods 
*	utilized on this page are purely used for the navigation to the final page of the application. However, depending on the 
*	user's choice of cancelling or confirming their order, the session variable used to hold their order status will be 
*	changed to hold a different status.
*/

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Final
{
    /*
    * PUBLIC PARTIAL CLASS          : Confirmation
    * DESCRIPTION	                :
    *	This class acts to hold the server-side methods used for the confirmation page of the SET Pizza Shop. These methods pertain to the 
    *	two separate buttons the user can interact with (cancel and confirm). Depending on the button the user selects, a different session 
    *	variable value will be utilized for their order status.
    */
    public partial class Confirmation : System.Web.UI.Page
    {
        /*
        *	METHOD          : Page_Load(object sender, EventArgs e)
        *	DESCRIPTION		:
        *		This method is automatically called upon and acts as an event handler in the page lifecycle. This method ultimately acts to
        *		perform tasks when a webpage isloaded. In this particular case, no additional logic was needed in this method relating to 
        *		any type of validation, etc.
        *	PARAMETERS      :
        *		object sender            :   This is the object that triggered the event for the page to load
        *		EventArgs e              :   This is an object that contains event-specific data
        *	RETURNS			:
        *		void	                 :	 This method does not have any return value
        */
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        /*
        *	METHOD          : CancelOrder(object sender, EventArgs e)
        *	DESCRIPTION		:
        *		This method is used when a user selects the "Cancel" button on the order confirmation page of the SET Pizza Shop application. 
        *		Once this button has been clicked, the session variable that determines the order status of a customer's order will be set to 
        *		"cancelled". This session variable will be used to prompt the user on the final page of the application after they are directed
        *		to it.
        *	PARAMETERS      :
        *		object sender            :   This is the object that triggered the event for the page to load
        *		EventArgs e              :   This is an object that contains event-specific data
        *	RETURNS			:
        *		void	                 :	 This method does not have any return value
        */
        protected void CancelOrder(object sender, EventArgs e)
        {
            Session["orderStatus"] = "cancelled";
            Response.Redirect("./Finished.aspx");
        }

        /*
        *	METHOD          : ConfirmOrder(object sender, EventArgs e)
        *	DESCRIPTION		:
        *		This method is used when a user selects the "Confirm" button on the order confirmation page of the SET Pizza Shop application. 
        *		Once this button has been clicked, the session variable that determines the order status of a customer's order will be set to 
        *		"confirmed". This session variable will be used to prompt the user on the final page of the application after they are directed
        *		to it.
        *	PARAMETERS      :
        *		object sender            :   This is the object that triggered the event for the page to load
        *		EventArgs e              :   This is an object that contains event-specific data
        *	RETURNS			:
        *		void	                 :	 This method does not have any return value
        */
        protected void ConfirmOrder(object send, EventArgs e)
        {
            Session["orderStatus"] = "confirmed";
            Response.Redirect("./Finished.aspx");
        }
    }
}