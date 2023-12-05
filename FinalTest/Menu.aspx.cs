using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System;

using System.IO;

using System.Web.Services;


namespace Final
{
    public partial class Menu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Log("Page_Load");
            if (Request.HttpMethod == "POST")
            {
                using (StreamReader reader = new StreamReader(Request.InputStream))
                {
                    string jsonString = reader.ReadToEnd();
                    JObject toppingsData = JObject.Parse(jsonString);

                    Session["ToppingsData"] = toppingsData;

                    bool pepperoniSelected = toppingsData.GetValue("Pepperoni", StringComparison.OrdinalIgnoreCase)?.Value<bool>() ?? false;
                    bool mushroomsSelected = toppingsData.GetValue("Mushrooms", StringComparison.OrdinalIgnoreCase)?.Value<bool>() ?? false;
                    bool olivesSelected = toppingsData.GetValue("Olives", StringComparison.OrdinalIgnoreCase)?.Value<bool>() ?? false;
                    bool peppersSelected = toppingsData.GetValue("Peppers", StringComparison.OrdinalIgnoreCase)?.Value<bool>() ?? false;
                    bool doubleCheeseSelected = toppingsData.GetValue("DoubleCheese", StringComparison.OrdinalIgnoreCase)?.Value<bool>() ?? false;

                    HandleToppings(pepperoniSelected, mushroomsSelected, olivesSelected, peppersSelected, doubleCheeseSelected);


                }
            }
        }

        //Used for debugging
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
