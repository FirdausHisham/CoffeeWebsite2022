using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class HYSSOnline_Cart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblCheckout1.Text = Request.QueryString["name"];
        lblCheckout2.Text = Request.QueryString["PhoneNumber"];
        lblCheckout3.Text = Request.QueryString["email"];
        lblCheckout4.Text = Request.QueryString["total"];
        lblCheckout5.Text = Request.QueryString["name"];
        lblCheckout6.Text = Request.QueryString["PhoneNumber"];
        lblCheckout7.Text = Request.QueryString["email"];

        ImageButton2.Visible = false;


        
        btnPay.Enabled = false;


    }

    protected void btnPay_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            lblTQ.Text = "Thank you " + lblCheckout5.Text + " for ordering our products! We will message you to your phone number(" + lblCheckout6.Text + ") for delivery status and send an e-receipt to your email (" + lblCheckout7.Text + "). Have a nice day!";
            ImageButton2.Visible = true;
        }
        else
        {
            lblTQ.Text = "There is an error with your details ";
            ImageButton2.Visible = false;
        }

        
        

    }

    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (RadioButtonList1.SelectedIndex==0)
        {
            Panel1.Visible = true;
            txtCardNumber.Text = "";
            txtExpiry.Text = "";
            txtCVV.Text = "";
            txtName.Text = "";
            
        }
        else if (RadioButtonList1.SelectedIndex == 1)
        {
            Panel1.Visible = true;
            txtCardNumber.Text = "";
            txtExpiry.Text = "";
            txtCVV.Text = "";
            txtName.Text = "";
            
        }
        else
        {
            Panel1.Visible = true;
            txtCardNumber.Text = "";
            txtExpiry.Text = "";
            txtCVV.Text = "";
            txtName.Text = "";
            
        }
    }

    protected void txtCardNumber_TextChanged(object sender, EventArgs e)
    {
        
        btnPay.Enabled = true;
    }

    protected void txtExpiry_TextChanged(object sender, EventArgs e)
    {
        
        btnPay.Enabled = true;
    }

    protected void txtCVV_TextChanged(object sender, EventArgs e)
    {
        
        btnPay.Enabled = true;
    }

    protected void txtName_TextChanged(object sender, EventArgs e)
    {
        
        btnPay.Enabled = true;
    }

    protected void txtAddress_TextChanged(object sender, EventArgs e)
    {
       
        btnPay.Enabled = true;
    }

    protected void txtPostalCode_TextChanged(object sender, EventArgs e)
    {
        
        btnPay.Enabled = true;
    }
}