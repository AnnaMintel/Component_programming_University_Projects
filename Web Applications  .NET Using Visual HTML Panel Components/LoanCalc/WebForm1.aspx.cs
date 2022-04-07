using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LoanCalc
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            try
            {
                double principal = Convert.ToDouble(Principal.Text);
                double rate = Convert.ToDouble(Rate.Text) / 100;
                double term = Convert.ToDouble(Term.Text);
                double tmp = System.Math.Pow(1 + (rate / 12), term);
                double payment = principal * (((rate / 12) * tmp) / (tmp - 1));
                Output.Text = "Monthly Payment = " + payment.ToString("c");
            }
            catch (Exception)
            {
                Output.Text = "Error";
            }
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }
    }
}