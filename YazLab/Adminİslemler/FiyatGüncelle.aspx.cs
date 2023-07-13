using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YazLab.Adminİslemler
{
    public partial class FiyatGüncelle : System.Web.UI.Page
    {
        UrunlerEntities2 db=new UrunlerEntities2();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {


            try
            {
                        int ürünId = Convert.ToInt32(TextBox1.Text);
                        decimal yeniFiyat=Convert.ToDecimal(TextBox2.Text);
                        if (yeniFiyat<0)
                              Label3.Text = "Fiyat  Hatalı";
                        else
                        {
                            var x = db.tbl_urunler.Find(ürünId);
                            if(x==null)
                    {
                        Label4 .Text= "Ürün Id Bulunamadı";
                    }
                           else
                    {
                            x.Fiyat = yeniFiyat;
                            db.SaveChanges();
                        Label3.Text = "Ürün Fiyatı Güncellendi";
                    }


                        }
            }
           
            catch
            {

                Label3.Text = "Yanlış Giriş Yaptınız";
                new FiyatGüncelle();

            }
            





        }
    }
}