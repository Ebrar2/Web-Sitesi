using System;
using System.CodeDom.Compiler;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace YazLab
{
    public partial class ÜrünBilgiSayfası : System.Web.UI.Page
    {
        UrunlerEntities2 db = new UrunlerEntities2();
        protected void Page_Load(object sender, EventArgs e)
        {
            int ürünId = Convert.ToInt32((Request.QueryString["i"]));
            var ürn = (from item in db.tbl_urunler
                       join item2 in db.tbl_modeller
                       on item.ModelId equals item2.ModelId
                      where item.UrunId == ürünId
                      select new
                      {
                          UrunAd=item.UrunAd,
                          Fiyat=item.Fiyat,
                          ModelResim=item2.ModelResim,
                          ModelPuan=item2.ModelPuan
                          

                      }).First();
            Label2.Text = ürn.UrunAd;
            Label4.Text = ürn.Fiyat.ToString()+" TL";
            Image1.ImageUrl = ürn.ModelResim;
            Label5.Text = ürn.ModelPuan.ToString() + " puan";
            
            //var urunBilgi = (from item in db.tbl_urunAciklama
            //                 where item.UrunId == ürünId
            //                 select new
            //                 {
            //                     İsletimSistemi=item.isletimSistemi,
            //                     İslemciTip=item.islemciTip,
            //                     İslemciNesli=item.islemciNesli,
            //                     ram=item.ram,
            //                     DiskBoyut=item.diskBoyut,
            //                     DiskTur=item.diskTur,
            //                     EkranBoyut=item.ekranBoyut

            //                 }
            //               );

            //DataList1.DataSource = urunBilgi.ToList();
            //DataList1.DataBind();

        }


       

     
    }
}