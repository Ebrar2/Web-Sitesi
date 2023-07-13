using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YazLab
{
    public partial class PuanGüncelle : System.Web.UI.Page
    {
        UrunlerEntities2 db = new UrunlerEntities2();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                int id = Convert.ToInt32(TextBox1.Text);
                decimal x = Convert.ToDecimal(TextBox2.Text);
                if (x<0)
                {
                    Label3.Text = "Yanlış Giriş Yaptınız";

                }
                else
                {
                    var ara = db.tbl_urunler.Find(id);
                    if (ara!=null)
                    {
                        var ara2 = db.tbl_modeller.Find(ara.ModelId);
                        ara2.ModelPuan = x;
                        db.SaveChanges();
                        Label3.Text = "Ürün Puanı Güncellendi";

                    }
                    else
                    {
                        Label3.Text = "Ürün Bulunamadı";

                    }
                }
            }

            catch
            {
                Label3.Text = "Yanlış Giriş Yaptınız";

            }
        }
    }
}