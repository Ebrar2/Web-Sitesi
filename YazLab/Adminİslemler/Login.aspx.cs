using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YazLab
{
    public partial class Login : System.Web.UI.Page
    {
        UrunlerEntities2 db = new UrunlerEntities2();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
                string adminAd = TextBox1.Text;
                string adminSifre = TextBox2.Text;


                var sorgu = db.tbl_admin.Where(x => x.AdminName == adminAd && x.AdminSifre == adminSifre).ToList();
                if (sorgu.Count!=0)
            {
                    Response.Redirect("AdminHome.aspx");
                }
                else
                {
                    Label1.Text = "Kullanıcı Bulunamadı";
                }


        }
    }
}