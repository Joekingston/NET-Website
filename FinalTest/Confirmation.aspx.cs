using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Final
{
    public partial class Confirmation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CancelOrder(object sender, EventArgs e)
        {
            Session["orderStatus"] = "Cancelled";
            Response.Redirect("./Finished.aspx");
        }

        protected void ConfirmOrder(object send, EventArgs e)
        {
            Session["orderStatus"] = "Confirmed";
            Response.Redirect("./Finished.aspx");
        }
    }
}