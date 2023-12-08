/*
* FILE				: Finished.aspx.cs
* PROJECT			: PROG 2001 - Final Exam Practical Component
* PROGRAMMERS		: Joey Kingston, Cody Glanville
* FIRST VERSION		: December 03, 2023
* DESCRIPTION		:
*	This file is used for the server-sided logic for the final web page in the SET Pizza Shop application. At the moment, their is currently
*	not code-behind that was created to be added to this file outside of the automatically generated method of Page_Load().
*/

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalTest
{
    /*
    * PUBLIC PARTIAL CLASS         : Finished
    * DESCRIPTION	               :
    *	This class acts to hold the server-sided methods for our final web page used for the SET Pizza Shop. As of right now, there are no
    *	additional methods or logic that has been added or needs to be added to this final page outside of the automatically created Page_Load() 
    *	method. 
    */
    public partial class Finished : System.Web.UI.Page
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
    }
}