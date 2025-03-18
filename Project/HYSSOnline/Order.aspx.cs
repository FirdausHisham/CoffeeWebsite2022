using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class HYSSCafe_Order : System.Web.UI.Page
{
    

    protected void Page_Load(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        Panel2.Visible = false;

        btnCheckout.Enabled = false;
        panelMain.Visible = false;
        btnSubmit.Enabled = false;


    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            
            panelMain.Visible = true;

        }
        else
        {
            
            panelMain.Visible = false;


        }



    }


    protected void btnClear_Click(object sender, EventArgs e)
    {
        txtName.Text = "";
        txtPhoneNumber.Text = "";
        txtEmail.Text = "";
        txtRetype.Text = "";
        lblValid.Text = "";
        
    }

    protected void btnCheckout_Click(object sender, EventArgs e)
    {
        Response.Redirect("Cart.aspx?Name=" + txtName.Text
            + "&PhoneNumber=" + txtPhoneNumber.Text
            + "&Email=" + txtEmail.Text
            + "&Total=" + lblTotal.Text);

       
    }

    //Remove Cart----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    protected void Button3_Click(object sender, EventArgs e)
    {
        lblTotal.Text = "0";
        lblTotal0.Text = "";
        lblTotal1.Text = "";
        lblTotal2.Text = "";
        panelMain.Visible = true;
        btnCheckout.Enabled = false;


        //Clear controls
        cblEspresso.ClearSelection();
        cblCaffeLatte.ClearSelection();
        cblCaffeMocha.ClearSelection();
        cblEspresso.ClearSelection();
        cblCaffeMacchiato.ClearSelection();
        cblCaffeAmericano.ClearSelection();
        cblFlatWhite.ClearSelection();
        cblCappuccino.ClearSelection();
        cblWhiteChocolateMocha.ClearSelection();
        cblVanillaLatte.ClearSelection();
        cblEarlGreyTea.ClearSelection();
        cblHojichaTeaLatte.ClearSelection();
        cblEnglishBreakfastTeaLatte.ClearSelection();


    }

    //ESPRESSO----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    protected void btnAddToCart8_Click(object sender, EventArgs e)
    {
        double espresso = 2;
        string quantity = "";
        string PServe = "";
        string size = "";
        double temptotal=0;

        btnCheckout.Enabled = true;
        panelMain.Visible = true;


        double GrandTotal = 0; 

        //Preferred serve
        if (rblEspresso.SelectedIndex == 0)
        {
            PServe = "Iced";
        }
        else if (rblEspresso.SelectedIndex == 1)
        {
            PServe = "Hot";
        }
        //toppings3
        string cblselect ="";
        for (int i = 0; i < cblEspresso.Items.Count; i++)
        {
            if (cblEspresso.Items[i].Selected)
            {
                if (cblselect == "")
                {
                    cblselect = cblEspresso.Items[i].Text;
                    espresso = espresso + 1;
                }
                else
                {
                    cblselect += "," + cblEspresso.Items[i].Text;
                    espresso = espresso + 1;
                }
                lblTotal1.Text = "Toppings:"+ cblselect;
                
            }
            else if (cblselect == "")
            {
                lblTotal1.Text = "";
            }
        }

            //Size(Switch)
            switch (lbEspresso.SelectedIndex)
        {
            case 0:
                if (lbEspresso.SelectedIndex == 0)
                {
                    espresso = espresso + 0;
                    size = "S";
                }
                break;
            case 1:
        if (lbEspresso.SelectedIndex == 1)
                {
                    espresso = espresso + 1.0;
                    size = "M";
                }
                break;
            case 2:
        if (lbEspresso.SelectedIndex == 2)
                {
                    espresso = espresso + 1.5;
                    size = "L";
                }
                break;
        }

        //quantity
        if (ddlEspresso.SelectedIndex == 0)
        {
            
            espresso = espresso + 0;
            quantity = "1";
        }
        else if (ddlEspresso.SelectedIndex == 1)
        {
            espresso = espresso * 2;
            quantity = "2";
        }
        else if (ddlEspresso.SelectedIndex == 2)
        {
            espresso = espresso * 3;
            quantity = "3";
        }
        else if (ddlEspresso.SelectedIndex == 3)
        {
            espresso = espresso * 4;
            quantity = "4";
        }
        else 
        {
            espresso = espresso * 5;
            quantity = "5";
        }

        //Total
        lblTotal0.Text = "Item added to cart!" + " <br/>"  + "Item:Espresso"  + " Quantity:" + quantity +  " Preferred serve:" + PServe + " Size:" + size;      
        lblTotal2.Text = "Total:" + " $" + String.Format("{0:0.00}", espresso) + ""; //3sf;

        lblTotal.Text = Convert.ToString(lblTotal.Text);
        //Grand total 
        GrandTotal = GrandTotal + espresso;
        temptotal = Convert.ToDouble(lblTotal.Text) + GrandTotal;
        lblTotal.Text = Convert.ToString(String.Format("{0:0.00}", temptotal));


        //set Controls to default
        cblEspresso.ClearSelection();
        ddlEspresso.SelectedIndex = 0;
        lbEspresso.SelectedIndex = 0;
    }

    //CAFFE LATTE----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    protected void btnCaffeLatte_Click(object sender, EventArgs e)
    {
        double CaffeLatte = 3;
        string quantity = "";
        string PServe = "";
        string size = "";
        double GrandTotal = 0;
        double temptotal = 0;

        btnCheckout.Enabled = true;
        panelMain.Visible = true;




        //Preferred serve
        if (rblCaffeLatte.SelectedIndex == 0)
        {
            PServe = "Iced";
        }
        else if (rblCaffeLatte.SelectedIndex == 1)
        {
            PServe = "Hot";
        }
        //toppings3
        string cblselect = "";
        for (int i = 0; i < cblCaffeLatte.Items.Count; i++)
        {
            if (cblCaffeLatte.Items[i].Selected)
            {
                if (cblselect == "")
                {
                    cblselect = cblCaffeLatte.Items[i].Text;
                    CaffeLatte = CaffeLatte + 1;
                }
                else
                {
                    cblselect += "," + cblCaffeLatte.Items[i].Text;
                    CaffeLatte = CaffeLatte + 1;
                }
                lblTotal1.Text = "Toppings:" + cblselect;

            }
            else if (cblselect == "")
            {
                lblTotal1.Text = "";
            }
        }

        //Size(Switch)
        switch (lbCaffeLatte.SelectedIndex)
        {
            case 0:
                if (lbCaffeLatte.SelectedIndex == 0)
                {
                    CaffeLatte = CaffeLatte + 0;
                    size = "S";
                }
                break;
            case 1:
                if (lbCaffeLatte.SelectedIndex == 1)
                {
                    CaffeLatte = CaffeLatte + 1.0;
                    size = "M";
                }
                break;
            case 2:
                if (lbCaffeLatte.SelectedIndex == 2)
                {
                    CaffeLatte = CaffeLatte + 1.5;
                    size = "L";
                }
                break;
        }

        //Quantity
        if (ddlCaffeLatte.SelectedIndex == 0)
        {

            CaffeLatte = CaffeLatte + 0;
            quantity = "1";
        }
        else if (ddlCaffeLatte.SelectedIndex == 1)
        {
            CaffeLatte = CaffeLatte * 2;
            quantity = "2";
        }
        else if (ddlCaffeLatte.SelectedIndex == 2)
        {
            CaffeLatte = CaffeLatte * 3;
            quantity = "3";
        }
        else if (ddlCaffeLatte.SelectedIndex == 3)
        {
            CaffeLatte = CaffeLatte * 4;
            quantity = "4";
        }
        else 
        {
            CaffeLatte = CaffeLatte * 5;
            quantity = "5";
        }

        //Total
        lblTotal0.Text = "Item added to cart!" + " <br/>" + "Item:Caffe Latte" + " Quantity:" + quantity + " Preferred serve:" + PServe + " Size:" + size;
        lblTotal2.Text = "Total:" + " $" + String.Format("{0:0.00}", CaffeLatte) + ""; //3sf;

        //Grand total
        lblTotal.Text = Convert.ToString(lblTotal.Text); 
        GrandTotal = GrandTotal + CaffeLatte;
        temptotal = Convert.ToDouble(lblTotal.Text) + GrandTotal;
        lblTotal.Text = Convert.ToString(String.Format("{0:0.00}", temptotal));

        //set Controls to default
        cblCaffeLatte.ClearSelection();
        ddlCaffeLatte.SelectedIndex = 0;
        lbCaffeLatte.SelectedIndex = 0;
    }


    //Caffe Mocha----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    protected void btnCaffeMocha_Click(object sender, EventArgs e)
    {
        double CaffeMocha = 3.5;
        string quantity = "";
        string PServe = "";
        string size = "";
        double GrandTotal = 0;
        double temptotal = 0;

        btnCheckout.Enabled = true;
        panelMain.Visible = true;



        //Preferred serve
        if (rblCaffeMocha.SelectedIndex == 0)
        {
            PServe = "Iced";
        }
        else if (rblCaffeMocha.SelectedIndex == 1)
        {
            PServe = "Hot";
        }
        //toppings3
        string cblselect = "";
        for (int i = 0; i < cblCaffeMocha.Items.Count; i++)
        {
            if (cblCaffeMocha.Items[i].Selected)
            {
                if (cblselect == "")
                {
                    cblselect = cblCaffeMocha.Items[i].Text;
                    CaffeMocha = CaffeMocha + 1;
                }
                else
                {
                    cblselect += "," + cblCaffeMocha.Items[i].Text;
                    CaffeMocha = CaffeMocha + 1;
                }
                lblTotal1.Text = "Toppings:" + cblselect;

            }
            else if (cblselect == "")
            {
                lblTotal1.Text = "";
            }
        }

        //Size(Switch)
        switch (lbCaffeMocha.SelectedIndex)
        {
            case 0:
                if (lbCaffeMocha.SelectedIndex == 0)
                {
                    CaffeMocha = CaffeMocha + 0;
                    size = "S";
                }
                break;
            case 1:
                if (lbCaffeMocha.SelectedIndex == 1)
                {
                    CaffeMocha = CaffeMocha + 1.0;
                    size = "M";
                }
                break;
            case 2:
                if (lbCaffeMocha.SelectedIndex == 2)
                {
                    CaffeMocha = CaffeMocha + 1.5;
                    size = "L";
                }
                break;
        }

        //Quantity
        if (ddlCaffeMocha.SelectedIndex == 0)
        {

            CaffeMocha = CaffeMocha + 0;
            quantity = "1";
        }
        else if (ddlCaffeMocha.SelectedIndex == 1)
        {
            CaffeMocha = CaffeMocha * 2;
            quantity = "2";
        }
        else if (ddlCaffeMocha.SelectedIndex == 2)
        {
            CaffeMocha = CaffeMocha * 3;
            quantity = "3";
        }
        else if (ddlCaffeMocha.SelectedIndex == 3)
        {
            CaffeMocha = CaffeMocha * 4;
            quantity = "4";
        }
        else 
        {
            CaffeMocha = CaffeMocha * 5;
            quantity = "5";
        }

        //Total
        lblTotal0.Text = "Item added to cart!" + " <br/>" + "Item:Caffe Mocha" + " Quantity:" + quantity + " Preferred serve:" + PServe + " Size:" + size;
        lblTotal2.Text = "Total:" + " $" + String.Format("{0:0.00}", CaffeMocha) + ""; //3sf;

        //Grand total
        lblTotal.Text = Convert.ToString(lblTotal.Text); 
        GrandTotal = GrandTotal + CaffeMocha;
        temptotal = Convert.ToDouble(lblTotal.Text) + GrandTotal;
        lblTotal.Text = Convert.ToString(String.Format("{0:0.00}", temptotal));

        //set Controls to default
        cblCaffeMocha.ClearSelection();
        ddlCaffeMocha.SelectedIndex = 0;
        lbCaffeMocha.SelectedIndex = 0;
    }




    //Caffe Macchiato----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    protected void btnAddToCart2_Click(object sender, EventArgs e)
    {
        double CaffeMacchiato = 3.5;
        string quantity = "";
        string PServe = "";
        string size = "";
        double GrandTotal = 0;
        double temptotal = 0;

        btnCheckout.Enabled = true;
        panelMain.Visible = true;



        //Preferred serve
        if (rblCaffeMacchiato.SelectedIndex == 0)
        {
            PServe = "Iced";
        }
        else if (rblCaffeMacchiato.SelectedIndex == 1)
        {
            PServe = "Hot";
        }
        //toppings3
        string cblselect = "";
        for (int i = 0; i < cblCaffeMacchiato.Items.Count; i++)
        {
            if (cblCaffeMacchiato.Items[i].Selected)
            {
                if (cblselect == "")
                {
                    cblselect = cblCaffeMacchiato.Items[i].Text;
                    CaffeMacchiato = CaffeMacchiato + 1;
                }
                else
                {
                    cblselect += "," + cblCaffeMacchiato.Items[i].Text;
                    CaffeMacchiato = CaffeMacchiato + 1;
                }
                lblTotal1.Text = "Toppings:" + cblselect;

            }
            else if (cblselect == "")
            {
                lblTotal1.Text = "";
            }
        }

        //Size(Switch)
        switch (lbCaffeMacchiato.SelectedIndex)
        {
            case 0:
                if (lbCaffeMacchiato.SelectedIndex == 0)
                {
                    CaffeMacchiato = CaffeMacchiato + 0;
                    size = "S";
                }
                break;
            case 1:
                if (lbCaffeMacchiato.SelectedIndex == 1)
                {
                    CaffeMacchiato = CaffeMacchiato + 1.0;
                    size = "M";
                }
                break;
            case 2:
                if (lbCaffeMacchiato.SelectedIndex == 2)
                {
                    CaffeMacchiato = CaffeMacchiato + 1.5;
                    size = "L";
                }
                break;
        }

        //Quantity
        if (ddlCaffeMacchiato.SelectedIndex == 0)
        {

            CaffeMacchiato = CaffeMacchiato + 0;
            quantity = "1";
        }
        else if (ddlCaffeMacchiato.SelectedIndex == 1)
        {
            CaffeMacchiato = CaffeMacchiato * 2;
            quantity = "2";
        }
        else if (ddlCaffeMacchiato.SelectedIndex == 2)
        {
            CaffeMacchiato = CaffeMacchiato * 3;
            quantity = "3";
        }
        else if (ddlCaffeMacchiato.SelectedIndex == 3)
        {
            CaffeMacchiato = CaffeMacchiato * 4;
            quantity = "4";
        }
        else 
        {
            CaffeMacchiato = CaffeMacchiato * 5;
            quantity = "5";
        }

        //Total
        lblTotal0.Text = "Item added to cart!" + " <br/>" + "Item:Caffe Macchiato" + " Quantity:" + quantity + " Preferred serve:" + PServe + " Size:" + size;
        lblTotal2.Text = "Total:" + " $" + String.Format("{0:0.00}", CaffeMacchiato) + ""; //3sf;

        //Grand total 
        lblTotal.Text = Convert.ToString(lblTotal.Text);
        GrandTotal = GrandTotal + CaffeMacchiato;
        temptotal = Convert.ToDouble(lblTotal.Text) + GrandTotal;
        lblTotal.Text = Convert.ToString(String.Format("{0:0.00}", temptotal));

        //set Controls to default
        cblCaffeMacchiato.ClearSelection();
        ddlCaffeMacchiato.SelectedIndex = 0;
        lbCaffeMacchiato.SelectedIndex = 0;
    }

    //Caffe Americano----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    protected void btnCaffeAmericano_Click(object sender, EventArgs e)
    {
        double CaffeAmericano = 2.0;
        string quantity = "";
        string PServe = "";
        string size = "";
        double GrandTotal = 0;
        double temptotal = 0;

        btnCheckout.Enabled = true;
        panelMain.Visible = true;


        //Preferred serve
        if (rblCaffeAmericano.SelectedIndex == 0)
        {
            PServe = "Iced";
        }
        else if (rblCaffeAmericano.SelectedIndex == 1)
        {
            PServe = "Hot";
        }
        //toppings3
        string cblselect = "";
        for (int i = 0; i < cblCaffeAmericano.Items.Count; i++)
        {
            if (cblCaffeAmericano.Items[i].Selected)
            {
                if (cblselect == "")
                {
                    cblselect = cblCaffeAmericano.Items[i].Text;
                    CaffeAmericano = CaffeAmericano + 1;
                }
                else
                {
                    cblselect += "," + cblCaffeAmericano.Items[i].Text;
                    CaffeAmericano = CaffeAmericano + 1;
                }
                lblTotal1.Text = "Toppings:" + cblselect;

            }
            else if (cblselect == "")
            {
                lblTotal1.Text = "";
            }
        }

        //Size(Switch)
        switch (lbCaffeMacchiato.SelectedIndex)
        {
            case 0:
                if (lbCaffeAmericano.SelectedIndex == 0)
                {
                    CaffeAmericano = CaffeAmericano + 0;
                    size = "S";
                }
                break;
            case 1:
                if (lbCaffeAmericano.SelectedIndex == 1)
                {
                    CaffeAmericano = CaffeAmericano + 1.0;
                    size = "M";
                }
                break;
            case 2:
                if (lbCaffeAmericano.SelectedIndex == 2)
                {
                    CaffeAmericano = CaffeAmericano + 1.5;
                    size = "L";
                }
                break;
        }

        //Quantity
        if (ddlCaffeAmericano.SelectedIndex == 0)
        {

            CaffeAmericano = CaffeAmericano + 0;
            quantity = "1";
        }
        else if (ddlCaffeAmericano.SelectedIndex == 1)
        {
            CaffeAmericano = CaffeAmericano * 2;
            quantity = "2";
        }
        else if (ddlCaffeAmericano.SelectedIndex == 2)
        {
            CaffeAmericano = CaffeAmericano * 3;
            quantity = "3";
        }
        else if (ddlCaffeAmericano.SelectedIndex == 3)
        {
            CaffeAmericano = CaffeAmericano * 4;
            quantity = "4";
        }
        else 
        {
            CaffeAmericano = CaffeAmericano * 5;
            quantity = "5";
        }

        //Total
        lblTotal0.Text = "Item added to cart!" + " <br/>" + "Item:Caffe Americano" + " Quantity:" + quantity + " Preferred serve:" + PServe + " Size:" + size;
        lblTotal2.Text = "Total:" + " $" + String.Format("{0:0.00}", CaffeAmericano) + ""; //3sf;

        //Grand total 
        lblTotal.Text = Convert.ToString(lblTotal.Text);
        GrandTotal = GrandTotal + CaffeAmericano;
        temptotal = Convert.ToDouble(lblTotal.Text) + GrandTotal;
        lblTotal.Text = Convert.ToString(String.Format("{0:0.00}", temptotal));

        //set Controls to default
        cblCaffeAmericano.ClearSelection();
        ddlCaffeAmericano.SelectedIndex = 0;
        lbCaffeAmericano.SelectedIndex = 0;

    }

    //Flat White----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    protected void btnFlatWhite_Click(object sender, EventArgs e)
    {
        double FlatWhite = 3.0;
        string quantity = "";
        string PServe = "";
        string size = "";
        double GrandTotal = 0;
        double temptotal = 0;

        btnCheckout.Enabled = true;
        panelMain.Visible = true;



        //Preferred serve
        if (rblFlatWhite.SelectedIndex == 0)
        {
            PServe = "Iced";
        }
        else if (rblFlatWhite.SelectedIndex == 1)
        {
            PServe = "Hot";
        }
        //toppings3
        string cblselect = "";
        for (int i = 0; i < cblFlatWhite.Items.Count; i++)
        {
            if (cblFlatWhite.Items[i].Selected)
            {
                if (cblselect == "")
                {
                    cblselect = cblFlatWhite.Items[i].Text;
                    FlatWhite = FlatWhite + 1;
                }
                else
                {
                    cblselect += "," + cblFlatWhite.Items[i].Text;
                    FlatWhite = FlatWhite + 1;
                }
                lblTotal1.Text = "Toppings:" + cblselect;

            }
            else if (cblselect == "")
            {
                lblTotal1.Text = "";
            }
        }

        //Size(Switch)
        switch (lbCaffeMacchiato.SelectedIndex)
        {
            case 0:
                if (lbFlatWhite.SelectedIndex == 0)
                {
                    FlatWhite = FlatWhite + 0;
                    size = "S";
                }
                break;
            case 1:
                if (lbFlatWhite.SelectedIndex == 1)
                {
                    FlatWhite = FlatWhite + 1.0;
                    size = "M";
                }
                break;
            case 2:
                if (lbFlatWhite.SelectedIndex == 2)
                {
                    FlatWhite = FlatWhite + 1.5;
                    size = "L";
                }
                break;
        }

        //Quantity
        if (ddlFlatWhite.SelectedIndex == 0)
        {

            FlatWhite = FlatWhite + 0;
            quantity = "1";
        }
        else if (ddlFlatWhite.SelectedIndex == 1)
        {
            FlatWhite = FlatWhite * 2;
            quantity = "2";
        }
        else if (ddlFlatWhite.SelectedIndex == 2)
        {
            FlatWhite = FlatWhite * 3;
            quantity = "3";
        }
        else if (ddlFlatWhite.SelectedIndex == 3)
        {
            FlatWhite = FlatWhite * 4;
            quantity = "4";
        }
        else 
        {
            FlatWhite = FlatWhite * 5;
            quantity = "5";
        }

        //Total
        lblTotal0.Text = "Item added to cart!" + " <br/>" + "Item:Flat White" + " Quantity:" + quantity + " Preferred serve:" + PServe + " Size:" + size;
        lblTotal2.Text = "Total:" + " $" + String.Format("{0:0.00}", FlatWhite) + ""; //3sf;

        //Grand total 
        lblTotal.Text = Convert.ToString(lblTotal.Text);
        GrandTotal = GrandTotal + FlatWhite;
        temptotal = Convert.ToDouble(lblTotal.Text) + GrandTotal;
        lblTotal.Text = Convert.ToString(String.Format("{0:0.00}", temptotal));

        //set Controls to default
        cblFlatWhite.ClearSelection();
        ddlFlatWhite.SelectedIndex = 0;
        lbFlatWhite.SelectedIndex = 0;
    }

    //Cappuccino----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    protected void btnCappuccino_Click(object sender, EventArgs e)
    {
        double Cappuccino = 2.5;
        string quantity = "";
        string PServe = "";
        string size = "";
        double GrandTotal = 0;
        double temptotal = 0;

        btnCheckout.Enabled = true;
        panelMain.Visible = true;



        //Preferred serve
        if (rblCappuccino.SelectedIndex == 0)
        {
            PServe = "Iced";
        }
        else if (rblCappuccino.SelectedIndex == 1)
        {
            PServe = "Hot";
        }
        //toppings3
        string cblselect = "";
        for (int i = 0; i < cblCappuccino.Items.Count; i++)
        {
            if (cblCappuccino.Items[i].Selected)
            {
                if (cblselect == "")
                {
                    cblselect = cblCappuccino.Items[i].Text;
                    Cappuccino = Cappuccino + 1;
                }
                else
                {
                    cblselect += "," + cblCappuccino.Items[i].Text;
                    Cappuccino = Cappuccino + 1;
                }
                lblTotal1.Text = "Toppings:" + cblselect;

            }
            else if (cblselect == "")
            {
                lblTotal1.Text = "";
            }
        }

        //Size(Switch)
        switch (lbCappuccino.SelectedIndex)
        {
            case 0:
                if (lbCappuccino.SelectedIndex == 0)
                {
                    Cappuccino = Cappuccino + 0;
                    size = "S";
                }
                break;
            case 1:
                if (lbCappuccino.SelectedIndex == 1)
                {
                    Cappuccino = Cappuccino + 1.0;
                    size = "M";
                }
                break;
            case 2:
                if (lbCappuccino.SelectedIndex == 2)
                {
                    Cappuccino = Cappuccino + 1.5;
                    size = "L";
                }
                break;
        }

        //Quantity
        if (ddlCappuccino.SelectedIndex == 0)
        {

            Cappuccino = Cappuccino + 0;
            quantity = "1";
        }
        else if (ddlCappuccino.SelectedIndex == 1)
        {
            Cappuccino = Cappuccino * 2;
            quantity = "2";
        }
        else if (ddlCappuccino.SelectedIndex == 2)
        {
            Cappuccino = Cappuccino * 3;
            quantity = "3";
        }
        else if (ddlCappuccino.SelectedIndex == 3)
        {
            Cappuccino = Cappuccino * 4;
            quantity = "4";
        }
        else 
        {
            Cappuccino = Cappuccino * 5;
            quantity = "5";
        }

        //Total
        lblTotal0.Text = "Item added to cart!" + " <br/>" + "Item:Cappuccino" + " Quantity:" + quantity + " Preferred serve:" + PServe + " Size:" + size;
        lblTotal2.Text = "Total:" + " $" + String.Format("{0:0.00}", Cappuccino) + ""; //3sf;

        //Grand total 
        lblTotal.Text = Convert.ToString(lblTotal.Text);
        GrandTotal = GrandTotal + Cappuccino;
        temptotal = Convert.ToDouble(lblTotal.Text) + GrandTotal;
        lblTotal.Text = Convert.ToString(String.Format("{0:0.00}", temptotal));

        //set Controls to default
        cblCappuccino.ClearSelection();
        ddlCappuccino.SelectedIndex = 0;
        lbCappuccino.SelectedIndex = 0;
    }

    //White Chocolate Mocha----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    protected void btnWhiteChocolateMocha_Click(object sender, EventArgs e)
    {
        double WhiteChocolateMocha = 4.5;
        string quantity = "";
        string PServe = "";
        string size = "";
        double GrandTotal = 0;
        double temptotal = 0;

        btnCheckout.Enabled = true;
        panelMain.Visible = true;



        //Preferred serve
        if (rblWhiteChocolateMocha.SelectedIndex == 0)
        {
            PServe = "Iced";
        }
        else if (rblWhiteChocolateMocha.SelectedIndex == 1)
        {
            PServe = "Hot";
        }
        //toppings3
        string cblselect = "";
        for (int i = 0; i < cblWhiteChocolateMocha.Items.Count; i++)
        {
            if (cblWhiteChocolateMocha.Items[i].Selected)
            {
                if (cblselect == "")
                {
                    cblselect = cblWhiteChocolateMocha.Items[i].Text;
                    WhiteChocolateMocha = WhiteChocolateMocha + 1;
                }
                else
                {
                    cblselect += "," + cblWhiteChocolateMocha.Items[i].Text;
                    WhiteChocolateMocha = WhiteChocolateMocha + 1;
                }
                lblTotal1.Text = "Toppings:" + cblselect;

            }
            else if (cblselect == "")
            {
                lblTotal1.Text = "";
            }
        }

        //Size(Switch)
        switch (lbWhiteChocolateMocha.SelectedIndex)
        {
            case 0:
                if (lbWhiteChocolateMocha.SelectedIndex == 0)
                {
                    WhiteChocolateMocha = WhiteChocolateMocha + 0;
                    size = "S";
                }
                break;
            case 1:
                if (lbWhiteChocolateMocha.SelectedIndex == 1)
                {
                    WhiteChocolateMocha = WhiteChocolateMocha + 1.0;
                    size = "M";
                }
                break;
            case 2:
                if (lbWhiteChocolateMocha.SelectedIndex == 2)
                {
                    WhiteChocolateMocha = WhiteChocolateMocha + 1.5;
                    size = "L";
                }
                break;
        }

        //Quantity
        if (ddlWhiteChocolateMocha.SelectedIndex == 0)
        {

            WhiteChocolateMocha = WhiteChocolateMocha + 0;
            quantity = "1";
        }
        else if (ddlWhiteChocolateMocha.SelectedIndex == 1)
        {
            WhiteChocolateMocha = WhiteChocolateMocha * 2;
            quantity = "2";
        }
        else if (ddlWhiteChocolateMocha.SelectedIndex == 2)
        {
            WhiteChocolateMocha = WhiteChocolateMocha * 3;
            quantity = "3";
        }
        else if (ddlWhiteChocolateMocha.SelectedIndex == 3)
        {
            WhiteChocolateMocha = WhiteChocolateMocha * 4;
            quantity = "4";
        }
        else 
        {
            WhiteChocolateMocha = WhiteChocolateMocha * 5;
            quantity = "5";
        }

        //Total
        lblTotal0.Text = "Item added to cart!" + " <br/>" + "Item:White Chocolate Mocha" + " Quantity:" + quantity + " Preferred serve:" + PServe + " Size:" + size;
        lblTotal2.Text = "Total:" + " $" + String.Format("{0:0.00}", WhiteChocolateMocha) + ""; //3sf;

        //Grand total 
        lblTotal.Text = Convert.ToString(lblTotal.Text);
        GrandTotal = GrandTotal + WhiteChocolateMocha;
        temptotal = Convert.ToDouble(lblTotal.Text) + GrandTotal;
        lblTotal.Text = Convert.ToString(String.Format("{0:0.00}", temptotal));

        //set Controls to default
        cblWhiteChocolateMocha.ClearSelection();
        ddlWhiteChocolateMocha.SelectedIndex = 0;
        lbWhiteChocolateMocha.SelectedIndex = 0;
    }

    //Vanilla Latte----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    protected void btnVanillaLatte_Click(object sender, EventArgs e)
    {
        double VanillaLatte = 3.5;
        string quantity = "";
        string PServe = "";
        string size = "";
        double GrandTotal = 0;
        double temptotal = 0;

        btnCheckout.Enabled = true;
        panelMain.Visible = true;


        //Preferred serve
        if (rblVanillaLatte.SelectedIndex == 0)
        {
            PServe = "Iced";
        }
        else if (rblVanillaLatte.SelectedIndex == 1)
        {
            PServe = "Hot";
        }
        //toppings3
        string cblselect = "";
        for (int i = 0; i < cblVanillaLatte.Items.Count; i++)
        {
            if (cblVanillaLatte.Items[i].Selected)
            {
                if (cblselect == "")
                {
                    cblselect = cblVanillaLatte.Items[i].Text;
                    VanillaLatte = VanillaLatte + 1;
                }
                else
                {
                    cblselect += "," + cblVanillaLatte.Items[i].Text;
                    VanillaLatte = VanillaLatte + 1;
                }
                lblTotal1.Text = "Toppings:" + cblselect;

            }
            else if (cblselect == "")
            {
                lblTotal1.Text = "";
            }
        }

        //Size(Switch)
        switch (lbVanillaLatte.SelectedIndex)
        {
            case 0:
                if (lbVanillaLatte.SelectedIndex == 0)
                {
                    VanillaLatte = VanillaLatte + 0;
                    size = "S";
                }
                break;
            case 1:
                if (lbVanillaLatte.SelectedIndex == 1)
                {
                    VanillaLatte = VanillaLatte + 1.0;
                    size = "M";
                }
                break;
            case 2:
                if (lbVanillaLatte.SelectedIndex == 2)
                {
                    VanillaLatte = VanillaLatte + 1.5;
                    size = "L";
                }
                break;
        }

        //Quantity
        if (ddlVanillaLatte.SelectedIndex == 0)
        {

            VanillaLatte = VanillaLatte + 0;
            quantity = "1";
        }
        else if (ddlVanillaLatte.SelectedIndex == 1)
        {
            VanillaLatte = VanillaLatte * 2;
            quantity = "2";
        }
        else if (ddlVanillaLatte.SelectedIndex == 2)
        {
            VanillaLatte = VanillaLatte * 3;
            quantity = "3";
        }
        else if (ddlVanillaLatte.SelectedIndex == 3)
        {
            VanillaLatte = VanillaLatte * 4;
            quantity = "4";
        }
        else 
        {
            VanillaLatte = VanillaLatte * 5;
            quantity = "5";
        }

        //Total
        lblTotal0.Text = "Item added to cart!" + " <br/>" + "Item:Vanilla Latte" + " Quantity:" + quantity + " Preferred serve:" + PServe + " Size:" + size;
        lblTotal2.Text = "Total:" + " $" + String.Format("{0:0.00}", VanillaLatte) + ""; //3sf;

        //Grand total 
        lblTotal.Text = Convert.ToString(lblTotal.Text);      
        GrandTotal = GrandTotal + VanillaLatte;
        temptotal = Convert.ToDouble(lblTotal.Text) + GrandTotal;
        lblTotal.Text = Convert.ToString(String.Format("{0:0.00}", temptotal));

        //set Controls to default
        cblVanillaLatte.ClearSelection();
        ddlVanillaLatte.SelectedIndex = 0;
        lbVanillaLatte.SelectedIndex = 0;
    }



    protected void Button4_Click(object sender, EventArgs e)
    {
        if (ddlPanel.SelectedIndex==0)
        {
            Panel1.Visible = true;
            Panel2.Visible = false;
        }
        else if (ddlPanel.SelectedIndex==1)
        {
            Panel2.Visible = true;
            Panel1.Visible = false;
        }

        panelMain.Visible = true;


        //To use label as variable in order to disable the btnCheckout. if grand total is <= 0, button will disabled
        string GTotal = "";
        GTotal = lblTotal.Text;

        if (Convert.ToDouble(GTotal) <= 0 )
        {
            btnCheckout.Enabled = false;
        }
        else
        {
            btnCheckout.Enabled = true;
        }

        


        


    }

    //Earl Grey Tea---------------------------------------------------------------------------------------------------------------------------------------------------------------------
    protected void btnEarlGreyTea_Click(object sender, EventArgs e)
    {
        double EarlGreyTea = 2;
        string quantity = "";
        string PServe = "";
        string size = "";
        double GrandTotal = 0;
        double temptotal = 0;

        btnCheckout.Enabled = true;
        panelMain.Visible = true;



        //Preferred serve
        if (rblEarlGreyTea.SelectedIndex == 0)
        {
            PServe = "Iced";
        }
        else if (rblEarlGreyTea.SelectedIndex == 1)
        {
            PServe = "Hot";
        }
        //toppings3
        string cblselect = "";
        for (int i = 0; i < cblEarlGreyTea.Items.Count; i++)
        {
            if (cblEarlGreyTea.Items[i].Selected)
            {
                if (cblselect == "")
                {
                    cblselect = cblEarlGreyTea.Items[i].Text;
                    EarlGreyTea = EarlGreyTea + 1;
                }
                else
                {
                    cblselect += "," + cblEarlGreyTea.Items[i].Text;
                    EarlGreyTea = EarlGreyTea + 1;
                }
                lblTotal1.Text = "Toppings:" + cblselect;

            }
            else if (cblselect == "")
            {
                lblTotal1.Text = "";
            }
        }

        //Size(Switch)
        switch (lbEarlGreyTea.SelectedIndex)
        {
            case 0:
                if (lbEarlGreyTea.SelectedIndex == 0)
                {
                    EarlGreyTea = EarlGreyTea + 0;
                    size = "S";
                }
                break;
            case 1:
                if (lbEarlGreyTea.SelectedIndex == 1)
                {
                    EarlGreyTea = EarlGreyTea + 1.0;
                    size = "M";
                }
                break;
            case 2:
                if (lbEarlGreyTea.SelectedIndex == 2)
                {
                    EarlGreyTea = EarlGreyTea + 1.5;
                    size = "L";
                }
                break;
        }

        //Quantity
        if (ddlEarlGreyTea.SelectedIndex == 0)
        {

            EarlGreyTea = EarlGreyTea + 0;
            quantity = "1";
        }
        else if (ddlEarlGreyTea.SelectedIndex == 1)
        {
            EarlGreyTea = EarlGreyTea * 2;
            quantity = "2";
        }
        else if (ddlEarlGreyTea.SelectedIndex == 2)
        {
            EarlGreyTea = EarlGreyTea * 3;
            quantity = "3";
        }
        else if (ddlEarlGreyTea.SelectedIndex == 3)
        {
            EarlGreyTea = EarlGreyTea * 4;
            quantity = "4";
        }
        else
        {
            EarlGreyTea = EarlGreyTea * 5;
            quantity = "5";
        }

        //Total
        lblTotal0.Text = "Item added to cart!" + " <br/>" + "Item:Earl Grey Tea " + " Quantity:" + quantity + " Preferred serve:" + PServe + " Size:" + size;
        lblTotal2.Text = "Total:" + " $" + String.Format("{0:0.00}", EarlGreyTea) + ""; //3sf;

        //Grand total 
        lblTotal.Text = Convert.ToString(lblTotal.Text);
        GrandTotal = GrandTotal + EarlGreyTea;
        temptotal = Convert.ToDouble(lblTotal.Text) + GrandTotal;
        lblTotal.Text = Convert.ToString(String.Format("{0:0.00}", temptotal));

        //set Controls to default
        cblEarlGreyTea.ClearSelection();
        ddlEarlGreyTea.SelectedIndex = 0;
        lbEarlGreyTea.SelectedIndex = 0;

        //stay panel
        Panel2.Visible = true;
        Panel1.Visible = false;
    }


    //Hojicha Tea Latte---------------------------------------------------------------------------------------------------------------------------------------------------------------------
    protected void btnHojichaTeaLatte_Click(object sender, EventArgs e)
    {
        double HojichaTeaLatte = 2.5;
        string quantity = "";
        string PServe = "";
        string size = "";
        double GrandTotal = 0;
        double temptotal = 0;

        btnCheckout.Enabled = true;
        panelMain.Visible = true;



        //Preferred serve
        if (rblHojichaTeaLatte.SelectedIndex == 0)
        {
            PServe = "Iced";
        }
        else if (rblHojichaTeaLatte.SelectedIndex == 1)
        {
            PServe = "Hot";
        }
        //toppings3
        string cblselect = "";
        for (int i = 0; i < cblHojichaTeaLatte.Items.Count; i++)
        {
            if (cblHojichaTeaLatte.Items[i].Selected)
            {
                if (cblselect == "")
                {
                    cblselect = cblHojichaTeaLatte.Items[i].Text;
                    HojichaTeaLatte = HojichaTeaLatte + 1;
                }
                else
                {
                    cblselect += "," + cblHojichaTeaLatte.Items[i].Text;
                    HojichaTeaLatte = HojichaTeaLatte + 1;
                }
                lblTotal1.Text = "Toppings:" + cblselect;

            }
            else if (cblselect == "")
            {
                lblTotal1.Text = "";
            }
        }

        //Size(Switch)
        switch (lbHojichaTeaLatte.SelectedIndex)
        {
            case 0:
                if (lbHojichaTeaLatte.SelectedIndex == 0)
                {
                    HojichaTeaLatte = HojichaTeaLatte + 0;
                    size = "S";
                }
                break;
            case 1:
                if (lbHojichaTeaLatte.SelectedIndex == 1)
                {
                    HojichaTeaLatte = HojichaTeaLatte + 1.0;
                    size = "M";
                }
                break;
            case 2:
                if (lbHojichaTeaLatte.SelectedIndex == 2)
                {
                    HojichaTeaLatte = HojichaTeaLatte + 1.5;
                    size = "L";
                }
                break;
        }

        //Quantity
        if (ddlHojichaTeaLatte.SelectedIndex == 0)
        {

            HojichaTeaLatte = HojichaTeaLatte + 0;
            quantity = "1";
        }
        else if (ddlHojichaTeaLatte.SelectedIndex == 1)
        {
            HojichaTeaLatte = HojichaTeaLatte * 2;
            quantity = "2";
        }
        else if (ddlHojichaTeaLatte.SelectedIndex == 2)
        {
            HojichaTeaLatte = HojichaTeaLatte * 3;
            quantity = "3";
        }
        else if (ddlHojichaTeaLatte.SelectedIndex == 3)
        {
            HojichaTeaLatte = HojichaTeaLatte * 4;
            quantity = "4";
        }
        else
        {
            HojichaTeaLatte = HojichaTeaLatte * 5;
            quantity = "5";
        }

        //Total
        lblTotal0.Text = "Item added to cart!" + " <br/>" + "Item:Hojicha Tea latte " + " Quantity:" + quantity + " Preferred serve:" + PServe + " Size:" + size;
        lblTotal2.Text = "Total:" + " $" + String.Format("{0:0.00}", HojichaTeaLatte) + ""; //3sf;

        //Grand total 
        lblTotal.Text = Convert.ToString(lblTotal.Text);
        GrandTotal = GrandTotal + HojichaTeaLatte;
        temptotal = Convert.ToDouble(lblTotal.Text) + GrandTotal;
        lblTotal.Text = Convert.ToString(String.Format("{0:0.00}", temptotal));

        //set Controls to default
        cblHojichaTeaLatte.ClearSelection();
        ddlHojichaTeaLatte.SelectedIndex = 0;
        lbHojichaTeaLatte.SelectedIndex = 0;

        //stay panel
        Panel2.Visible = true;
        Panel1.Visible = false;
    }


    //English Breakfast Tea Latte---------------------------------------------------------------------------------------------------------------------------------------------------------------------
    protected void EnglishBreakfastTeaLatte_Click(object sender, EventArgs e)
    {
        double EnglishBreakfastTeaLatte = 3.5;
        string quantity = "";
        string PServe = "";
        string size = "";
        double GrandTotal = 0;
        double temptotal = 0;

        btnCheckout.Enabled = true;
        panelMain.Visible = true;



        //Preferred serve
        if (rblEnglishBreakfastTeaLatte.SelectedIndex == 0)
        {
            PServe = "Iced";
        }
        else if (rblEnglishBreakfastTeaLatte.SelectedIndex == 1)
        {
            PServe = "Hot";
        }
        //toppings3
        string cblselect = "";
        for (int i = 0; i < cblEnglishBreakfastTeaLatte.Items.Count; i++)
        {
            if (cblEnglishBreakfastTeaLatte.Items[i].Selected)
            {
                if (cblselect == "")
                {
                    cblselect = cblEnglishBreakfastTeaLatte.Items[i].Text;
                    EnglishBreakfastTeaLatte = EnglishBreakfastTeaLatte + 1;
                }
                else
                {
                    cblselect += "," + cblEnglishBreakfastTeaLatte.Items[i].Text;
                    EnglishBreakfastTeaLatte = EnglishBreakfastTeaLatte + 1;
                }
                lblTotal1.Text = "Toppings:" + cblselect;

            }
            else if (cblselect == "")
            {
                lblTotal1.Text = "";
            }
        }

        //Size(Switch)
        switch (lbEnglishBreakfastTeaLatte.SelectedIndex)
        {
            case 0:
                if (lbEnglishBreakfastTeaLatte.SelectedIndex == 0)
                {
                    EnglishBreakfastTeaLatte = EnglishBreakfastTeaLatte + 0;
                    size = "S";
                }
                break;
            case 1:
                if (lbEnglishBreakfastTeaLatte.SelectedIndex == 1)
                {
                    EnglishBreakfastTeaLatte = EnglishBreakfastTeaLatte + 1.0;
                    size = "M";
                }
                break;
            case 2:
                if (lbEnglishBreakfastTeaLatte.SelectedIndex == 2)
                {
                    EnglishBreakfastTeaLatte = EnglishBreakfastTeaLatte + 1.5;
                    size = "L";
                }
                break;
        }

        //Quantity
        if (ddlEnglishBreakfastTeaLatte.SelectedIndex == 0)
        {

            EnglishBreakfastTeaLatte = EnglishBreakfastTeaLatte + 0;
            quantity = "1";
        }
        else if (ddlEnglishBreakfastTeaLatte.SelectedIndex == 1)
        {
            EnglishBreakfastTeaLatte = EnglishBreakfastTeaLatte * 2;
            quantity = "2";
        }
        else if (ddlEnglishBreakfastTeaLatte.SelectedIndex == 2)
        {
            EnglishBreakfastTeaLatte = EnglishBreakfastTeaLatte * 3;
            quantity = "3";
        }
        else if (ddlEnglishBreakfastTeaLatte.SelectedIndex == 3)
        {
            EnglishBreakfastTeaLatte = EnglishBreakfastTeaLatte * 4;
            quantity = "4";
        }
        else
        {
            EnglishBreakfastTeaLatte = EnglishBreakfastTeaLatte * 5;
            quantity = "5";
        }

        //Total
        lblTotal0.Text = "Item added to cart!" + " <br/>" + "Item:English Breakfast Tea Latte" + " Quantity:" + quantity + " Preferred serve:" + PServe + " Size:" + size;
        lblTotal2.Text = "Total:" + " $" + String.Format("{0:0.00}", EnglishBreakfastTeaLatte) + ""; //3sf;

        //Grand total 
        lblTotal.Text = Convert.ToString(lblTotal.Text);
        GrandTotal = GrandTotal + EnglishBreakfastTeaLatte;
        temptotal = Convert.ToDouble(lblTotal.Text) + GrandTotal;
        lblTotal.Text = Convert.ToString(String.Format("{0:0.00}", temptotal));

        //set Controls to default
        cblEnglishBreakfastTeaLatte.ClearSelection();
        ddlEnglishBreakfastTeaLatte.SelectedIndex = 0;
        lbEnglishBreakfastTeaLatte.SelectedIndex = 0;

        //stay panel
        Panel2.Visible = true;
        Panel1.Visible = false;
    }

    //Credentials
    protected void txtName_TextChanged(object sender, EventArgs e)
    {
        btnSubmit.Enabled= true;
    }

    protected void txtPhoneNumber_TextChanged(object sender, EventArgs e)
    {
        btnSubmit.Enabled = true;

    }

    protected void txtEmail_TextChanged(object sender, EventArgs e)
    {
        btnSubmit.Enabled = true;

    }

    protected void txtRetype_TextChanged(object sender, EventArgs e)
    {
        btnSubmit.Enabled = true;

    }
}


