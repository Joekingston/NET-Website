using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalTest
{
    public partial class Page1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void ToMenu(object sender, EventArgs e)
        {
            // Used to send the user to the next page (if their name ended up being valid through the validation)

            if (Page.IsValid) // If the page was valid from the server validation function then we can go to the next page
            {
                Response.Redirect("./Menu.aspx");
            }

            // Otherwise, the user will have to enter another name in order to pass validation
        }

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