using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Drawing.Printing;
using System.Linq;
using System.Linq.Expressions;
using System.Reflection.Emit;
using System.Security.Cryptography.Xml;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using YazLab;
using YazLab.DataSet1TableAdapters;

namespace YazLab
{
    public partial class ÜrünEkle : System.Web.UI.Page
    {
        UrunlerEntities2 db = new UrunlerEntities2();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                string ürünAd = TextBox1.Text;
                decimal fiyat = Convert.ToDecimal(TextBox2.Text);
                string marka = TextBox3.Text;
                marka = marka.Trim().ToUpper();
                string modelNo = TextBox4.Text.Trim().ToUpper();
                string isletimS = TextBox5.Text.Trim().ToUpper();
                if (isletimS.Contains("WINDOWS") || isletimS.Contains("WIN"))
                {
                    isletimS = "WINDOWS";
                }
                else if (isletimS.Contains("FREEDOS") || isletimS.Contains("DOS") || isletimS.Contains("FREE DOS") || isletimS.Contains("YOK"))
                {
                    isletimS = "FREEDOS";
                }

                string islemciN = TextBox7.Text.Trim().ToUpper();
                string islemciT = TextBox6.Text.Trim().ToUpper();
                string ram = TextBox8.Text.Trim().ToUpper();
                string diskB = TextBox9.Text.Trim().ToUpper();
                string diskT = TextBox10.Text.Trim().ToUpper();
                string ekranB = TextBox11.Text.Trim().ToUpper();
                string urunResim = TextBox12.Text;
                var ara = (from item in db.tbl_markalar
                           where item.MarkaAd.Contains(marka) == true
                           select item.MarkaId).ToList();
                int markaId = 0, modelId = 0, urunId = 0, kontrol = 0;
                if (ara.Count()!=0)
                {
                    markaId = ara[0];
                    kontrol = kontrol + 1;
                }
                else
                {
                    tbl_markalar mrk = new tbl_markalar();
                    mrk.MarkaAd = marka;
                    db.tbl_markalar.Add(mrk);
                    db.SaveChanges();
                    markaId = db.tbl_markalar.Max(x => x.MarkaId);


                }

                var ara2 = (from item in db.tbl_modeller
                            where item.ModelNo.Contains(modelNo)
                            select item.ModelId).ToList();

                if(ara2.Count()==0)
                {
                        tbl_modeller mdl = new tbl_modeller();
                        mdl.ModelNo = modelNo; ;
                        mdl.MarkaId = markaId;
                        mdl.ModelResim = urunResim;
                        mdl.ModelPuan = 0;
                        db.tbl_modeller.Add(mdl);
                        db.SaveChanges();
                        modelId = db.tbl_modeller.Max(x => x.ModelId);

                }
                else 
                {
                    modelId = ara2[0];
                    kontrol = kontrol + 1;

                }
           

                var ara3 = (from item in db.tbl_urunAciklama
                            where item.UrunMarkaId == markaId && item.ram.Contains(ram) == true && item.diskTur.Contains(diskT) && item.ekranBoyut.Contains(ekranB) && item.diskBoyut.Contains(diskB) && item.islemciNesli.Contains(islemciN) && item.islemciTip.Contains(islemciT) && item.isletimSistemi.Contains(isletimS)
                            select item
                         ).ToList();
                if (ara3.Count()!=0 && kontrol == 2)
                {

                    Label1.Text = "Böyle bir ürün bulunmaktadır .Bilgilerini güncellemek için ÜRÜN GÜNCELLE sayfasına gidiniz";
                }
                else
                {

                    tbl_urunler urun = new tbl_urunler();
                    urun.UrunAd = ürünAd;
                    urun.Fiyat = fiyat;
                    urun.EklenmeTarih = DateTime.Now;
                    urun.ModelId = modelId;
                    db.tbl_urunler.Add(urun);
                    db.SaveChanges();
                    urunId = db.tbl_urunler.Max(x => x.UrunId);



                    tbl_urunAciklama urunA = new tbl_urunAciklama();
                    urunA.diskTur = diskT;
                    urunA.diskBoyut = diskB;
                    urunA.ekranBoyut = ekranB;
                    urunA.UrunMarkaId = markaId;
                    urunA.islemciNesli = islemciN;
                    urunA.islemciTip = islemciT;
                    urunA.UrunId = urunId;
                    urunA.UrunMarkaId = markaId;
                    urunA.isletimSistemi = isletimS;
                    urunA.ram = ram;
                    db.tbl_urunAciklama.Add(urunA);
                    db.SaveChanges();
                    Label1.Text = "Ürün Eklendi";


                }



            }

            catch
            {
                Label1.Text = "Bilgilerinizi Kontrol Ediniz Hatalı Alan/Alanlar Var!!!";


            }
        }
    }

}




