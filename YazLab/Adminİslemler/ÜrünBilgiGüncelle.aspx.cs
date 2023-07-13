using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YazLab
{
    public partial class ÜrünBilgiGüncelle : System.Web.UI.Page
    {
        UrunlerEntities2 db = new UrunlerEntities2();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView2_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            string isletimS=TextBox3.Text.ToUpper().Trim();
            if (isletimS.Contains("WINDOWS") || isletimS.Contains("WIN"))
            {
                isletimS = "WINDOWS";
            }
            else if (isletimS.Contains("FREEDOS") || isletimS.Contains("DOS") || isletimS.Contains("FREE DOS") || isletimS.Contains("YOK"))
            {
                isletimS = "FREEDOS";
            }

            try
            {
                int id = Convert.ToInt32(TextBox1.Text);
                var bul = (from item in db.tbl_urunAciklama
                           where item.UrunId == id
                           select item.UrunAciklamaId).ToList();
                var x = db.tbl_urunAciklama.Find(bul[0]);
                x.isletimSistemi= isletimS;
              
                db.SaveChanges();


            }
            catch
            {

                Label2.Text = "HATA.";



            }





        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                int id = Convert.ToInt32(TextBox1.Text);
                var bul = db.tbl_urunler.Find(id);
                if(bul==null)
                {
                    Label2.Text = "Ürün Id bulunamadı";
                }
            
            }
            catch
            {
                Label2.Text = "Yanlış Giriş!!!Id alanını kotrol ediniz.";

            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {


            string islemciT = TextBox4.Text.ToUpper().Trim();
        

            try
            {
                int id = Convert.ToInt32(TextBox1.Text);
                var bul = (from item in db.tbl_urunAciklama
                           where item.UrunId == id
                           select item.UrunAciklamaId).ToList();
                var x = db.tbl_urunAciklama.Find(bul[0]);
                x.islemciTip = islemciT;


                db.SaveChanges();


            }
            catch
            {

                Label2.Text = "Ürün Id si bulunamadı.";



            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            string islemcin = TextBox5.Text.ToUpper().Trim();


            try
            {
                int id = Convert.ToInt32(TextBox1.Text);
                var bul = (from item in db.tbl_urunAciklama
                           where item.UrunId == id
                           select item.UrunAciklamaId).ToList();
                var x = db.tbl_urunAciklama.Find(bul[0]);
                x.islemciNesli = islemcin;


                db.SaveChanges();


            }
            catch
            {

                Label2.Text = "Ürün Id si bulunamadı.";



            }
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            string ram = TextBox6.Text.ToUpper().Trim();


            try
            {
                int id = Convert.ToInt32(TextBox1.Text);
                var bul = (from item in db.tbl_urunAciklama
                           where item.UrunId == id
                           select item.UrunAciklamaId).ToList();
                var x = db.tbl_urunAciklama.Find(bul[0]);
                x.ram = ram;


                db.SaveChanges();


            }
            catch
            {

                Label2.Text = "Ürün Id si bulunamadı.";



            }
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            string diskT = TextBox7.Text.ToUpper().Trim();


            try
            {
                int id = Convert.ToInt32(TextBox1.Text);
                var bul = (from item in db.tbl_urunAciklama
                           where item.UrunId == id
                           select item.UrunAciklamaId).ToList();
                var x = db.tbl_urunAciklama.Find(bul[0]);
                x.islemciTip = diskT;


                db.SaveChanges();


            }
            catch
            {

                Label2.Text = "Ürün Id si bulunamadı.";



            }
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            string ekranB = TextBox8.Text.ToUpper().Trim();


            try
            {
                int id = Convert.ToInt32(TextBox1.Text);
                var bul = (from item in db.tbl_urunAciklama
                           where item.UrunId == id
                           select item.UrunAciklamaId).ToList();
                var x = db.tbl_urunAciklama.Find(bul[0]);
                x.ekranBoyut = ekranB;


                db.SaveChanges();


            }
            catch
            {

                Label2.Text = "Ürün Id si bulunamadı.";



            }
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            string diskB = TextBox9.Text.ToUpper().Trim();


            try
            {
                int id = Convert.ToInt32(TextBox1.Text);
                var bul = (from item in db.tbl_urunAciklama
                           where item.UrunId == id
                           select item.UrunAciklamaId).ToList();
                var x = db.tbl_urunAciklama.Find(bul[0]);
                x.diskBoyut = diskB;


                db.SaveChanges();


            }
            catch
            {

                Label2.Text = "Ürün Id si bulunamadı.";



            }
        }

        protected void Button10_Click(object sender, EventArgs e)
        {
            
        }
    }
}