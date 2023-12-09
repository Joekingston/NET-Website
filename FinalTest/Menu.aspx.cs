/*
* FILE				: Menu.aspx.cs
* PROJECT			: PROG 2001 - Final Exam Practical
* PROGRAMMERS		: Joey Carson (ID: 8213035, Lab Section: 6), Cody Glanville (ID: 8864645, Lab Section: 3)
* FIRST VERSION		: December 3, 2023
* DESCRIPTION		:
*	This file contains the server-sided logic for the webpage used for selecting pizza toppings in the SET Pizza Shop website.
*	The methods utilized relate to the updating the cost for the users pizza and also the
*/

using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System;
using System.IO;
using System.Web.Services;


namespace Final
{
    /*
    * PUBLIC PARTIAL CLASS          : Menu
    * DESCRIPTION	                :
    *	This class acts to hold the server-side methods used for the Menu page that allows the user to customize their own pizza. As such,
    *	methods will be used pertianing to the transfer of data regarding the separate toppings that can be added to the users customized
    *	pizza. 
    */
    public partial class Menu : System.Web.UI.Page
    {
        /*
        *	METHOD          : Page_Load(object sender, EventArgs e)
        *	DESCRIPTION		:
        *		This method is automatically called upon and acts as an event handler in the page lifecycle. This method ultimately acts to
        *		perform tasks when a webpage isloaded. In this particular case, JSON is utilized in helping with the transfer of data for 
        *		updating the user's pizza they will customize. 
        *	PARAMETERS      :
        *		object sender            :   This is the object that triggered the event for the page to load
        *		EventArgs e              :   This is an object that contains event-specific data
        *	RETURNS			:
        *		void	                 :	 This method does not have any return value
        */
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.HttpMethod == "POST")
            {
                using (StreamReader reader = new StreamReader(Request.InputStream))
                {
                    string jsonString = reader.ReadToEnd();
                    JObject toppingsData = JObject.Parse(jsonString);

                    Session["ToppingsData"] = toppingsData;

                    bool pepperoniSelected = toppingsData.GetValue("Pepperoni", StringComparison.OrdinalIgnoreCase)?.Value<bool>() ?? false;
                    bool mushroomsSelected = toppingsData.GetValue("Mushrooms", StringComparison.OrdinalIgnoreCase)?.Value<bool>() ?? false;
                    bool olivesSelected = toppingsData.GetValue("Green Olives", StringComparison.OrdinalIgnoreCase)?.Value<bool>() ?? false;
                    bool peppersSelected = toppingsData.GetValue("Green Peppers", StringComparison.OrdinalIgnoreCase)?.Value<bool>() ?? false;
                    bool doubleCheeseSelected = toppingsData.GetValue("Double Cheese", StringComparison.OrdinalIgnoreCase)?.Value<bool>() ?? false;

                    HandleToppings(pepperoniSelected, mushroomsSelected, olivesSelected, peppersSelected, doubleCheeseSelected);
                }
            }
        }

        /*
        *	METHOD          : Log(string message)
        *	DESCRIPTION		:
        *		This method was used particularly for our debugging purposes. As such, it add to a log file we had created
        *		while testing methods in the assignment and the output of the webpage.
        *	PARAMETERS      :
        *		string message           :   This is the message that we would log in our debugging
        *	RETURNS			:
        *		void	                 :	 This method does not have any return value
        */
        private void Log(string message)
        {
            try
            {
                string rootPath = Server.MapPath("log.txt");
                string logFilePath = Path.Combine(rootPath, "");
                using (StreamWriter sw = File.AppendText(rootPath))
                {
                    sw.WriteLine($"{DateTime.Now} - {message}");
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Error logging: {ex.Message}");
            }
        }

        /*
        *	METHOD          : HandleToppings(bool pepperoni, bool mushrooms, bool olives, bool peppers, bool doubleCheese)
        *	DESCRIPTION		:
        *		This method is used to update the total price of a pizza depending on if the user has selected certain toppings that
        *		are to be included in their order. As such, the method will be utilized alongside an AJAX call on the client-side of 
        *		the page that will help in updating this valuse. Each bool indicated if a topping has been selected or not. 
        *	PARAMETERS      :
        *		bool pepperoni      :   Used regarding the users selection of adding pepporoni to the pizza
        *		bool mushrooms      :   Used regarding the users selection of adding mushrooms to the pizza
        *		bool olives         :   Used regarding the users selection of adding olives to the pizza
        *		bool peppers        :   Used regarding the users selection of adding peppers to the pizza
        *		booldoubleCheese    :   Used regarding the users selection of adding double cheese to the pizza
        *	RETURNS			:
        *		void	            :	This method does not have any return value
        */
        [WebMethod]
        private void HandleToppings(bool pepperoni, bool mushrooms, bool olives, bool peppers, bool doubleCheese)
        {
            decimal basePrice = 10.00m;

            decimal mushroomsCost = mushrooms ? 1.00m : 0.00m;
            decimal olivesCost = olives ? 1.00m : 0.00m;
            decimal peppersCost = peppers ? 1.00m : 0.00m;
            decimal pepperoniCost = pepperoni ? 1.50m : 0.00m;
            decimal doubleCheeseCost = doubleCheese ? 2.25m : 0.00m;

            decimal totalPrice = basePrice + mushroomsCost + olivesCost + peppersCost + pepperoniCost + doubleCheeseCost;
            Session["TotalPrice"] = totalPrice;
            var responseData = new
            {
                TotalPrice = totalPrice,
            };
            string json = JsonConvert.SerializeObject(responseData);
            Response.Write(json);
            Response.End(); 

            return;
        }
    }
}
