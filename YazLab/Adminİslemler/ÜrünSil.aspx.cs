using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YazLab
{
    public partial class ÜrünSil : System.Web.UI.Page
    {
        UrunlerEntities2 db=new UrunlerEntities2(); 
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                int id = Convert.ToInt32(TextBox1.Text);
                var x = db.tbl_urunler.Find(id);
                if (x != null)
                {
                    int kontrol = 0,kontrol2=0;
                    var urunA = db.tbl_urunAciklama.Where(y => y.UrunId == id).FirstOrDefault();
                    var model = db.tbl_modeller.Where(a => a.ModelId == x.ModelId).FirstOrDefault();
                    var marka = db.tbl_markalar.Where(b => b.MarkaId == urunA.UrunMarkaId).FirstOrDefault();
                    var varmi = (from item in db.tbl_urunler
                                 where item.ModelId == x.ModelId
                                 select item).ToList();
                    var varmi2 = (from item in db.tbl_urunAciklama
                                  where item.UrunMarkaId == urunA.UrunMarkaId
                                  select item).ToList();

                    if (varmi.Count()<=1)
                    {
                        kontrol = 1;
                    }
                    if(varmi2.Count()<=1)
                    {
                        kontrol2=1;
                    }
                    db.tbl_urunAciklama.Remove(urunA);
                    db.SaveChanges();
                    db.tbl_urunler.Remove(x);
                    db.SaveChanges();
                    if(kontrol==1)
                    {
                        db.tbl_modeller.Remove(model);
                        db.SaveChanges();
                    }
                    if(kontrol2==1)
                    {
                        db.tbl_markalar.Remove(marka);
                         db.SaveChanges();
                    }
                    Label3.Text = "Ürün Silindi";

                }
                else

                {
                    Label3.Text = "Ürün Bulunamadı";


                }
            }

           catch
            {
                Label3.Text = "Hatalı Giriş";

            }



        }
    }
}