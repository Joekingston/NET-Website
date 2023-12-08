<%-- 
FILE		    : Menu.aspx
PROJECT			: PROG 2001 - Final Exam Practical Component
PROGRAMMERS		: Joey Kingston, Cody Glanville
FIRST VERSION   : December 03, 2023
DESCRIPTION		:
	This file is used in order to hold the logic for creating the menu users will interact with to customize their
    pizza at the SET Pizza Shop. The HTML elements used regard to separate components that are used to create the 
    pizza visual that is displayed to the user.
--%>

<%@ Page Title="Menu" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="Final.Menu" %>

<asp:Content ID="Menu" ContentPlaceHolderID="MainContent" runat="server">
    <div class="content">
        <div class="Menu">
            <h2>Pizza Menu</h2>
            <h3>Ciao, <%= Session["userName"] %>!</h3>
            <p>At the SET Pizza Shop, you can only order one (1) large pizza with sauce and cheese.</p>
            <div>
                <h3>Choose Toppings:</h3>
                <!--Container allows for inline text boxes-->
                <div class="checkbox-container">
                    <div>
                        <input type="checkbox" id="Pepperoni" />
                        <label for="Pepperoni">Pepperoni</label>
                    </div>

                    <div>
                        <input type="checkbox" id="Mushrooms" />
                        <label for="Mushrooms">Mushrooms</label>
                    </div>

                    <div>
                        <input type="checkbox" id="Olives" />
                        <label for="Olives">Green Olives</label>
                    </div>

                    <div>
                        <input type="checkbox" id="Peppers" />
                        <label for="Peppers">Green Peppers</label>
                    </div>

                    <div>
                        <input type="checkbox" id="DoubleCheese" />
                        <label for="DoubleCheese">Double Cheese</label>
                    </div>
                </div>
                <div id="totalPrice2">Total Price: $<span id="totalPrice" >10.00</span></div>
                <div id="btnMakeIt" ><asp:Button ID="btn" runat="server" Text="Make It!"
                   PostBackUrl="Confirmation.aspx" /></div>

            </div>
        </div>
<!--
* TITLE : PizzaBuilder
* AUTHOR : Miguel Maldonado
* DATE : Jul 21, 2017
* VERSION : 1.0
* AVAILABIILTY : https://codepen.io/saas/pen/BgKvmL
* CHANGES : Fixed formatting of green-peppers (no longer super extend the page) -- Fixed formatting of sauces and crust
    -- Added Olives, Double Cheese, Colours to crust
-->
        <br />
        <p id="livePreview" class="blinking">LIVE PREVIEW</p>
        <br />
        <div id="pizza">
            <section class="green-pepper one"></section>
            <section class="green-pepper two"></section>
            <section class="green-pepper three"></section>
            <section class="green-pepper four"></section>
            <section class="green-pepper five"></section>
            <section class="green-pepper six"></section>
            <section class="green-pepper seven"></section>
            <section class="green-pepper eight"></section>
            <section class="green-pepper nine"></section>
            <section class="green-pepper ten"></section>
            <section class="green-pepper eleven"></section>
            <section class="green-pepper twelve"></section>
            <section class="green-pepper thirteen"></section>
            <section class="green-pepper fourteen"></section>
            <section class="green-pepper fifteen"></section>
            <section class="green-pepper sixteen"></section>
            <section class="green-pepper seventeen"></section>
            <section class="green-pepper eightteen"></section>
            <section class="green-pepper nineteen"></section>
            <section class="green-pepper twenty"></section>
            <section class="green-pepper twenty-one"></section>

            <section class="mushroom one">
                <div class="cap"></div>
                <div class="stem"></div>
            </section>

            <section class="mushroom two">
                <div class="cap"></div>
                <div class="stem"></div>
            </section>

            <section class="mushroom three">
                <div class="cap"></div>
                <div class="stem"></div>
            </section>

            <section class="mushroom four">
                <div class="cap"></div>
                <div class="stem"></div>
            </section>

            <section class="mushroom five">
                <div class="cap"></div>
                <div class="stem"></div>
            </section>

            <section class="mushroom six">
                <div class="cap"></div>
                <div class="stem"></div>
            </section>

            <section class="mushroom seven">
                <div class="cap"></div>
                <div class="stem"></div>
            </section>

            <section class="mushroom eight">
                <div class="cap"></div>
                <div class="stem"></div>
            </section>

            <section class="mushroom nine">
                <div class="cap"></div>
                <div class="stem"></div>
            </section>

            <section class="mushroom ten">
                <div class="cap"></div>
                <div class="stem"></div>
            </section>

            <section class="mushroom eleven">
                <div class="cap"></div>
                <div class="stem"></div>
            </section>

            <section class="mushroom twelve">
                <div class="cap"></div>
                <div class="stem"></div>
            </section>

            <section class="mushroom thirteen">
                <div class="cap"></div>
                <div class="stem"></div>
            </section>

            <section class="mushroom fourteen">
                <div class="cap"></div>
                <div class="stem"></div>
            </section>

            <section class="mushroom fifteen">
                <div class="cap"></div>
                <div class="stem"></div>
            </section>

            <section class="mushroom sixteen">
                <div class="cap"></div>
                <div class="stem"></div>
            </section>

            <section class="mushroom seventeen">
                <div class="cap"></div>
                <div class="stem"></div>
            </section>

            <section class="mushroom eighteen">
                <div class="cap"></div>
                <div class="stem"></div>
            </section>

            <section class="mushroom nineteen">
                <div class="cap"></div>
                <div class="stem"></div>
            </section>

            <section class="mushroom twenty">
                <div class="cap"></div>
                <div class="stem"></div>
            </section>

            <section class="mushroom twenty-one">
                <div class="cap"></div>
                <div class="stem"></div>
            </section>

            <section class="mushroom twenty-two">
                <div class="cap"></div>
                <div class="stem"></div>
            </section>

            <section class="mushroom twenty-three">
                <div class="cap"></div>
                <div class="stem"></div>
            </section>

            <section class="mushroom twenty-four">
                <div class="cap"></div>
                <div class="stem"></div>
            </section>

            <section class="mushroom twenty-five">
                <div class="cap"></div>
                <div class="stem"></div>
            </section>

            <section class="mushroom twenty-six">
                <div class="cap"></div>
                <div class="stem"></div>
            </section>

            <section class="mushroom twenty-seven">
                <div class="cap"></div>
                <div class="stem"></div>
            </section>

            <section class="mushroom twenty-eight">
                <div class="cap"></div>
                <div class="stem"></div>
            </section>

            <section class="mushroom twenty-nine">
                <div class="cap"></div>
                <div class="stem"></div>
            </section>

            <section class="mushroom thirty">
                <div class="cap"></div>
                <div class="stem"></div>
            </section>

            <section class="mushroom thirty-one">
                <div class="cap"></div>
                <div class="stem"></div>
            </section>

            <section class="mushroom thirty-two">
                <div class="cap"></div>
                <div class="stem"></div>
            </section>
            <!-- NEW -->
            <section class="olive one">1</section>
            <section class="olive two">2</section>
            <section class="olive three">3</section>
            <section class="olive four">4</section>
            <section class="olive five">5</section>
            <section class="olive six">6</section>
            <section class="olive seven">7</section>
            <section class="olive eight">8</section>
            <section class="olive nine">9</section>
            <section class="olive ten">10</section>
            <section class="olive eleven">11</section>
            <section class="olive twelve">12</section>
            <section class="olive thirteen">13</section>
            <section class="olive fourteen">14</section>
            <section class="olive fifteen">15</section>
            <section class="olive sixteen">16</section>
            <section class="olive seventeen">17</section>
            <section class="olive eightteen">18</section>
            <section class="olive nineteen">19</section>
            <section class="olive twenty">20</section>
            <section class="olive twenty-one">21</section>


            <section class="pep one">1</section>
            <section class="pep two">2</section>
            <section class="pep three">3</section>
            <section class="pep four">4</section>
            <section class="pep five">5</section>
            <section class="pep six">6</section>
            <section class="pep seven">7</section>
            <section class="pep eight">8</section>
            <section class="pep nine">9</section>
            <section class="pep ten">10</section>
            <section class="pep eleven">11</section>
            <section class="pep twelve">12</section>
            <section class="pep thirteen">13</section>
            <section class="pep fourteen">14</section>
            <section class="pep fifteen">15</section>
            <section class="pep sixteen">16</section>
            <section class="pep seventeen">17</section>
            <section class="pep eightteen">18</section>
            <section class="pep nineteen">19</section>
            <section class="pep twenty">20</section>
            <section class="pep twenty-one">21</section>
            <section class="pep twenty-two">22</section>
            <section class="pep twenty-three">23</section>
            <section class="pep twenty-four">24</section>
            <section class="pep twenty-five">25</section>
            <section class="pep twenty-six">26</section>
            <section class="pep twenty-seven">27</section>
            <section class="pep twenty-eight">28</section>
            <section class="pep twenty-nine">29</section>
            <section class="pep thirty">30</section>
            <section class="pep thirty-one">31</section>
            <section class="pep thirty-three">33</section>
            <section class="crust">
                            <!-- NEW -->
                <section class="cheese"></section>
                <section class="cheeseDoubled"></section>
            </section>
        </div>
    </div>
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<script>

    // Name    : Start
    // Purpose : Initialize the UI elements and set their initial states.
    // Inputs  : None
    // Returns : void
    $(function Start() {
        $('.pep').toggle(false);
        $('.mushroom').toggle(false);
        $('.green-pepper').toggle(false);
        $('.cheeseDoubled').toggle(false);
        $('.olive').toggle(false);
        //Needed for the blinking of live preview
        setInterval(function () {
            $('#livePreview').toggleClass('blinking');
        }, 1000);
    });
    // Name    : DynamicPrice
    // Purpose : Gets the checkbox information and send it to the server in JSON this will allow the server to get the price.
    // Checks what items have been toggled, and toggles them on/off for the live preview. 
    // Inputs  : None
    // Returns : void
    $(document).on("change", ":checkbox", function DynamicPrice() {
        var toppings = {
            Pepperoni: $("#Pepperoni").prop("checked"),
            Mushrooms: $("#Mushrooms").prop("checked"),
            'Green Olives': $("#Olives").prop("checked"),
            'Green Peppers': $("#Peppers").prop("checked"),
            'Double Cheese': $("#DoubleCheese").prop("checked")
        };
        if (toppings.Pepperoni) {

            $('.pep').toggle(true);
        } else {
            $('.pep').toggle(false);
        }
 
        if (toppings.Mushrooms) {
            $('.mushroom').toggle(true);
        } else {
            $('.mushroom').toggle(false);
        }
        if (toppings['Green Olives']) {
            $('.olive').toggle(true);
        } else {
            $('.olive').toggle(false);
        }
        if (toppings['Green Peppers']) {
            $('.green-pepper').toggle(true);
        } else {
            $('.green-pepper').toggle(false);
        }
        if (toppings['Double Cheese']) {
            $('.cheeseDoubled').toggle(true);
        } else {
            $('.cheeseDoubled').toggle(false);
        } 
        var jsonString = JSON.stringify(toppings);
        console.log(jsonString);

        $.ajax({
            url: "Menu.aspx",
            type: "POST",
            contentType: "application/json",
            data: jsonString,
            success: function (response) {
                var jObj = JSON.parse(response);
                var totalPrice = jObj.TotalPrice;
                $('#totalPrice').html(totalPrice.toFixed(2));
                console.log(response);
            },
            error: function (error) {
                console.log(error);
            }
        });
    });
    function randomlyCheckBoxes() {
        $('.cheeseDoubled').toggle(false);
        $('.green-pepper').toggle(false);
        $('.olive').toggle(false);
        $('.mushroom').toggle(false);
        $('.pep').toggle(false);
        var checkboxIds = ["Pepperoni", "Mushrooms", "Olives", "Peppers", "DoubleCheese"];
        var checkboxesToCheck = Math.floor(Math.random() * checkboxIds.length) + 1;
        checkboxIds = checkboxIds.sort(() => Math.random() - 0.5);

        for (var i = 0; i < checkboxesToCheck; i++) {
            var checkboxId = checkboxIds[i];
            document.getElementById(checkboxId).checked = true;
        }
        DynamicPrice();
    }
    function submitOrder() {
        Response.Redirect("Confirmation.aspx");
        }
</script>
</asp:Content>

