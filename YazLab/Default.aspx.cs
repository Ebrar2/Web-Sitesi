using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
using System.Data.Entity.Core.Common.CommandTrees;
using System.Drawing.Printing;
using System.Xml.Linq;
using System.Drawing;
using System.Runtime.Remoting.Messaging;
using System.Security.Cryptography;

namespace YazLab
{
    public partial class Default : System.Web.UI.Page
    {
        UrunlerEntities2 db =new UrunlerEntities2();

        protected void Page_Load(object sender, EventArgs e)
        {


            var sonuc8 = from mdl in db.tbl_modeller
                         join ur in db.tbl_urunler
                         on mdl.ModelId equals ur.ModelId
                         select new
                         {
                             ModelResim = mdl.ModelResim,
                             Fiyat = ur.Fiyat,
                             UrunAd = ur.UrunAd,
                             UrunUrl = ur.UrunUrl,
                             UrunId = ur.UrunId,
                             ModelPuan = mdl.ModelPuan

                         };

            if (!Page.IsPostBack)
            {

                Repeater1.DataSource = db.tbl_markalar.ToList();
                Repeater1.DataBind();

                var sonuc = from item in db.tbl_urunAciklama
                            select new { isletimSistemi = item.isletimSistemi };
                Repeater2.DataSource = sonuc.Distinct().ToList();
                Repeater2.DataBind();

                var sonuc2 = from item in db.tbl_urunAciklama
                             where item.islemciTip.Contains("11.Nesil") == false
                             select new { islemciTip = item.islemciTip };
                Repeater3.DataSource = sonuc2.Distinct().ToList();
                Repeater3.DataBind();
                var sonuc3 = from item in db.tbl_urunAciklama
                             where item.islemciNesli.Contains("i5") == false
                             select new { islemciNesil = item.islemciNesli };
                Repeater4.DataSource = sonuc3.Distinct().ToList();
                Repeater4.DataBind();

                var sonuc4 = from item in db.tbl_urunAciklama
                             where item.ram.Contains("8GB") == false
                             select new { ram = item.ram };
                Repeater5.DataSource = sonuc4.Distinct().ToList();
                Repeater5.DataBind();

                var sonuc5 = from item in db.tbl_urunAciklama
                             where item.diskBoyut.Contains("512GB") == false
                             select new { diskB = item.diskBoyut };
                Repeater6.DataSource = sonuc5.Distinct().ToList();
                Repeater6.DataBind();

                var sonuc6 = from item in db.tbl_urunAciklama
                             select new { diskT = item.diskTur };
                Repeater7.DataSource = sonuc6.Distinct().ToList();
                Repeater7.DataBind();

                var sonuc7 = from item in db.tbl_urunAciklama
                             select new { ekranB = item.ekranBoyut };
                Repeater8.DataSource = sonuc7.Distinct().ToList();
                Repeater8.DataBind();


                Repeater9.DataSource = sonuc8.Distinct().ToList();
                Repeater9.DataBind();

            }
            //int kontrol = Convert.ToInt32((Request.QueryString["i"]));



            

            //var mdl = db.MODELLER().ToList();

            //var sonuc9 = from ur in db.tbl_urunler
            //             join ur2 in db.tbl_urunler
            //             on ur.ModelId equals ur2.ModelId
            //             join ur3 in db.tbl_urunler
            //             on ur.ModelId equals ur3.ModelId
            //             where ur.UrunId!=ur2.UrunId  &&   ur.UrunId!=ur3.UrunId 
            //             select new
            //             {
            //                 ModelResim= db.tbl_modeller.Select(x => new { ModelResim = x.ModelResim, ModelId = x.ModelId }).Where(x => x.ModelId ==ur.ModelId),
            //                 Fiyat = ur.Fiyat,
            //                 Fiyat2 = ur2.Fiyat,
            //                 Fiyat3=ur3.Fiyat,
            //                 UrunAd = ur.UrunAd,
            //                 UrunUrl = ur.UrunUrl,
            //                 UrunUrl2=ur2.UrunUrl,
            //                 UrunUrl3=ur3.UrunUrl


            //           };

            //          ////  Repeater10.DataSource = sonuc9.ToList();
            // Repeater10.DataBind();

            //< div class="col-sm-4">
            //	<div class="product-image-wrapper">
            //		<div class="single-products">
            //				<div class="productinfo text-center">
            //                                     <asp:Repeater ID = "Repeater3" runat="server">
            //					   <ItemTemplate>
            //						   	<img src = "<%#Eval("ModelResim") %>" alt="" />
            //							<h2><%#Eval("Fiyat") %></h2>
            //							<a href = "<%#Eval("UrunUrl") %>"><%#Eval("UrunAd") %></a>

            //							<a href = "#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Sepete Ekle</a>
            //					   </ItemTemplate>
            //                                     </asp:Repeater>

            //				</div>
            //		</div>
            //	</div>
            //</div>
            //      var query = from md in db.tbl_modeller
            //                  join ur in db.tbl_urunler on md.ModelId equals ur.ModelId
            //                  select new
            //                  {
            //                      UrunUrl = ur.UrunUrl,
            //                      ModelResim = md.ModelResim,
            //                      Fiyat = ur.Fiyat,
            //                      UrunAd=ur.UrunAd,


            //                  };

            //      Repeater3.DataSource=query.ToList();
            //      Repeater3.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            //int i = 2;
            //Response.Redirect("Default.aspx?i=" + i);

            var sonuc8 = from mdl in db.tbl_modeller
                         join ur in db.tbl_urunler
                         on mdl.ModelId equals ur.ModelId
                         select new
                         {
                             ModelResim = mdl.ModelResim,
                             Fiyat = ur.Fiyat + " TL",
                             UrunAd = ur.UrunAd,
                             UrunUrl = ur.UrunUrl,
                             UrunId = ur.UrunId,
                             ModelPuan = mdl.ModelPuan

                         };

            string ara = TextBox1.Text.Replace(" ", "").ToUpper();
                Repeater9.DataSource = sonuc8.Where(x => x.UrunAd.Replace(" ","").Contains(ara)).ToList();
                Repeater9.DataBind();
            

          
        }

        //protected void Repeater9_ItemCommand(object source, RepeaterCommandEventArgs e)
        //{

        //    if (e.CommandName.ToString() == "bilgiler")
        //    {
        //        int i = Convert.ToInt32(e.CommandArgument);

        //        Response.Redirect("ÜrünBilgiSayfası?i="+i);




        //    }




        //}


        protected void Repeater9_ItemCommand1(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName.ToString() == "göster")
            {

                int i = Convert.ToInt32(e.CommandArgument);
                
                Response.Redirect("ÜrünBilgiSayfası.aspx?i=" + i);

            }
        }

        protected void Button3_Click2(object sender, EventArgs e)
        {

            //int i = 3;
            //Response.Redirect("Default.aspx?i=" + i);

            var sonuc8 = from mdl in db.tbl_modeller
                         join ur in db.tbl_urunler
                         on mdl.ModelId equals ur.ModelId
                         select new
                         {
                             ModelResim = mdl.ModelResim,
                             Fiyat = ur.Fiyat,
                             UrunAd = ur.UrunAd,
                             UrunUrl = ur.UrunUrl,
                             UrunId = ur.UrunId,
                             ModelPuan = mdl.ModelPuan

                         };
            Repeater9.DataSource = sonuc8.OrderByDescending(x => x.Fiyat).ToList();
                Repeater9.DataBind();
            

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            //{
            //    int i = 4;
            //    Response.Redirect("Default.aspx?i=" + i);

            var sonuc8 = from mdl in db.tbl_modeller
                         join ur in db.tbl_urunler
                         on mdl.ModelId equals ur.ModelId
                         select new
                         {
                             ModelResim = mdl.ModelResim,
                             Fiyat = ur.Fiyat,
                             UrunAd = ur.UrunAd,
                             UrunUrl = ur.UrunUrl,
                             UrunId = ur.UrunId,
                             ModelPuan = mdl.ModelPuan

                         };
            Repeater9.DataSource = sonuc8.OrderBy(x => x.Fiyat).ToList();
                Repeater9.DataBind();
          

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            //int i = 5;
            //Response.Redirect("Default.aspx?i=" + i);

            var sonuc8 = from mdl in db.tbl_modeller
                         join ur in db.tbl_urunler
                         on mdl.ModelId equals ur.ModelId
                         select new
                         {
                             ModelResim = mdl.ModelResim,
                             Fiyat = ur.Fiyat,
                             UrunAd = ur.UrunAd,
                             UrunUrl = ur.UrunUrl,
                             UrunId = ur.UrunId,
                             ModelPuan = mdl.ModelPuan

                         };
            Repeater9.DataSource = sonuc8.OrderByDescending(x => x.ModelPuan).ToList();
            Repeater9.DataBind();
        
      

    }

        protected void Button6_Click(object sender, EventArgs e)
        {
            //int i = 6;
            //Response.Redirect("Default.aspx?i=" + i);

            var sonuc8 = from mdl in db.tbl_modeller
                         join ur in db.tbl_urunler
                         on mdl.ModelId equals ur.ModelId
                         select new
                         {
                             ModelResim = mdl.ModelResim,
                             Fiyat = ur.Fiyat ,
                             UrunAd = ur.UrunAd,
                             UrunUrl = ur.UrunUrl,
                             UrunId = ur.UrunId,
                             ModelPuan = mdl.ModelPuan

                         };
            Repeater9.DataSource = sonuc8.OrderBy(x => x.ModelPuan).ToList();
            Repeater9.DataBind();

        

    }

        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

          
        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {



        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            int kont = 0;
            var dene= from mdl in db.tbl_modeller
                      join ur in db.tbl_urunler
                      on mdl.ModelId equals ur.ModelId
                      join ack in db.tbl_urunAciklama
                      on  ur.UrunId  equals ack.UrunId
                      select new
                      {
                          ModelResim = mdl.ModelResim,
                          Fiyat = ur.Fiyat,
                          UrunAd = ur.UrunAd,
                          UrunUrl = ur.UrunUrl,
                          UrunId = ur.UrunId,
                          ModelPuan = mdl.ModelPuan,
                          islemciTip=  ack.islemciTip,
                          isletimS=  ack.isletimSistemi,
                          islemciN=  ack.islemciNesli,
                          MarkaId=mdl.MarkaId,
                          diskB=  ack.diskBoyut,
                            diskT=  ack.diskTur,
                            ekranB=  ack.ekranBoyut,
                            ram=ack.ram


                      };
            var ilk  = from mdl in db.tbl_modeller
                                 join ur in db.tbl_urunler
                                 on mdl.ModelId equals ur.ModelId
                                 join ack in db.tbl_urunAciklama
                                 on ur.UrunId equals ack.UrunId
                                 select new
                                 {
                                     ModelResim = mdl.ModelResim,
                                     Fiyat = ur.Fiyat,
                                     UrunAd = ur.UrunAd,
                                     UrunUrl = ur.UrunUrl,
                                     UrunId = ur.UrunId,
                                     ModelPuan = mdl.ModelPuan,
                                     islemciTip = ack.islemciTip,
                                     isletimS = ack.isletimSistemi,
                                     islemciN = ack.islemciNesli,
                                     MarkaId = mdl.MarkaId,
                                     diskB = ack.diskBoyut,
                                     diskT = ack.diskTur,
                                     ekranB = ack.ekranBoyut,
                                     ram = ack.ram


                                 };
            for (int i = 0; i < Repeater1.Items.Count; i++)
            {
                CheckBox sec = (CheckBox)Repeater1.Items[i].FindControl("CheckBox1");
                if (sec.Checked)
                { 
                    
                    
                    var bul = (from item in db.tbl_markalar
                               where item.MarkaAd == sec.Text
                               select item.MarkaId).First();

                    if (kont == 0)
                    {
                        dene = ilk.Where(x => x.MarkaId == bul).Distinct();
                        kont = 1;
                    }
                    else
                        dene = dene.Union(ilk.Where(x => x.MarkaId == bul)).Distinct();



                }

            }
            ilk = dene;
            int kontic = 0;
            for (int i = 0; i < Repeater2.Items.Count; i++)
            {
                CheckBox sec = (CheckBox)Repeater2.Items[i].FindControl("CheckBox2");
                if (sec.Checked)
                {
                    if (kont == 0)
                    {
                        dene = ilk.Where(x => x.isletimS.Replace(" ", "").Contains(sec.Text.Replace(" ", ""))).Distinct();
                        kont = 1;
                    }
                    else
                    {
                        if (kontic == 0)
                        {
                            dene = ilk.Where(x => x.isletimS.Replace(" ", "").Contains(sec.Text.Replace(" ", ""))).Distinct();
                            kontic = 1;
                        }
                        else
                        {
                            dene = dene.Union(ilk.Where(x => x.isletimS.Replace(" ", "").Contains(sec.Text.Replace(" ", "")))).Distinct();

                        }

                    }

                }
            }
            ilk = dene;
            kontic = 0;
            for (int i = 0; i < Repeater3.Items.Count; i++)
            {
                CheckBox sec = (CheckBox)Repeater3.Items[i].FindControl("CheckBox3");
                if (sec.Checked)
                {
                    if (kont == 0)
                    {
                        dene = ilk.Where(x => x.islemciTip.Replace(" ", "").Contains(sec.Text.Replace(" ", ""))).Distinct();
                        kont = 1;
                    }
                    else

                    {
                        if(kontic == 0)
                        {
                            dene = ilk.Where(x => x.islemciTip.Replace(" ", "").Contains(sec.Text.Replace(" ", ""))).Distinct();
                            kontic = 1;

                        }
                        else

                        {
                            dene = dene.Union(ilk.Where(x => x.islemciTip.Replace(" ", "").Contains(sec.Text.Replace(" ", "")))).Distinct();

                        }

                    }


                    }
            }
            ilk = dene;
            kontic = 0;
            for (int i = 0; i < Repeater4.Items.Count; i++)
            {
                CheckBox sec = (CheckBox)Repeater4.Items[i].FindControl("CheckBox4");
                if (sec.Checked)
                {
                    if (kont == 0)
                    {
                        dene = dene.Where(x => x.islemciN.Replace(" ", "").Contains(sec.Text.Replace(" ", ""))).Distinct();
                        kont = 1;
                    }
                    else
                    {
                        if(kontic==0)
                        {
                            dene = ilk.Where(x => x.islemciN.Replace(" ", "").Contains(sec.Text.Replace(" ", ""))).Distinct();
                            kontic = 1;

                        }
                        else
                              dene = dene.Union(ilk.Where(x => x.islemciN.Replace(" ", "").Contains(sec.Text.Replace(" ", "")))).Distinct();
                    }



                }
            }
            ilk = dene;
            kontic = 0;
            for (int i = 0; i < Repeater5.Items.Count; i++)
            {
                CheckBox sec = (CheckBox)Repeater5.Items[i].FindControl("CheckBox5");
                if (sec.Checked)
                {
                    if (kont == 0)
                    {
                        dene = ilk.Where(x => x.ram.Replace(" ", "").Contains(sec.Text.Replace(" ", ""))).Distinct();
                        kont = 1;
                    }
                    else
                    {
                        if(kontic==0)
                        {
                            dene = ilk.Where(x => x.ram.Replace(" ", "").Contains(sec.Text.Replace(" ", ""))).Distinct();
                            kontic=1;

                        }
                        else
                           dene = dene.Union(ilk.Where(x => x.ram.Replace(" ", "").Contains(sec.Text.Replace(" ", "")))).Distinct();
                    }

                }
            }
            ilk = dene;
            kontic = 0;
            for (int i = 0; i < Repeater6.Items.Count; i++)
            {
                CheckBox sec = (CheckBox)Repeater6.Items[i].FindControl("CheckBox6");
                if (sec.Checked)
                {
                    if (kont == 0)
                    {
                        dene = ilk.Where(x => x.diskB.Replace(" ", "").Contains(sec.Text.Replace(" ", ""))).Distinct();
                        kont = 1;
                    }
                    else
                    {
                        if(kontic==0)
                        {
                            dene = ilk.Where(x => x.diskT.Replace(" ", "").Contains(sec.Text.Replace(" ", ""))).Distinct();
                            kontic = 1;
                        }
                        else
                           dene = dene.Union(ilk.Where(x => x.diskT.Replace(" ", "").Contains(sec.Text.Replace(" ", "")))).Distinct();

                    }
                }
            }
            ilk = dene;
            kontic = 0;
            for (int i = 0; i < Repeater7.Items.Count; i++)
            {
                CheckBox sec = (CheckBox)Repeater7.Items[i].FindControl("CheckBox7");
                if (sec.Checked)
                {
                    if (kont == 0)
                    {
                        dene = ilk.Where(x => x.ekranB.Replace(" ", "").Contains(sec.Text.Replace(" ", ""))).Distinct();
                        kont = 1;
                    }
                    else
                    {
                        if(kontic==0)
                        {
                            dene = ilk.Where(x => x.ekranB.Replace(" ", "").Contains(sec.Text.Replace(" ", ""))).Distinct();
                            kontic=1;

                        }
                        else
                            dene = dene.Union(ilk.Where(x => x.ekranB.Replace(" ", "").Contains(sec.Text.Replace(" ", "")))).Distinct();

                    }

                }
            }
            ilk = dene;
            kontic = 0;
            if(CheckBox10.Checked)
            {
              
                dene = ilk.Where(x => x.Fiyat < 10000).Distinct();
                kontic=1;
              
            }
            if (CheckBox11.Checked)
            {
                if (kontic == 0)
                {
                    dene = ilk.Where(x =>(x.Fiyat) > 10000 && (x.Fiyat) <20000).Distinct();
                    kontic = 1;
                }
                else
                {
                    dene = dene.Union(ilk.Where(x =>(x.Fiyat) > 10000 && (x.Fiyat) < 20000)).Distinct();
                }

            }
            if (CheckBox12.Checked)
            {
                if (kontic == 0)
                {
                    dene = ilk.Where(x => (x.Fiyat) > 20000 && (x.Fiyat) < 30000).Distinct();
                    kontic= 1;
                }
                else
                {
                    dene = dene.Union(ilk.Where(x => (x.Fiyat) < 30000 && (x.Fiyat) > 20000)).Distinct();
                }
            }
            if (CheckBox13.Checked)
            {
                if (kontic== 0)
                {
                    dene = ilk.Where(x => (x.Fiyat) >30000 && x.Fiyat< 40000).Distinct();
                    kontic= 1;
                }
                else
                {
                    dene = dene.Union(ilk.Where(x =>x.Fiyat<40000 && (x.Fiyat) >30000)).Distinct();
                }
            }
            ilk = dene;
            kontic = 0;
            if (CheckBox9.Checked)
            {

                dene = ilk.Where(x => x.ModelPuan < 3).Distinct();
                kontic = 1;

            }
            if (CheckBox14.Checked)
            {
                if (kontic == 0)
                {
                    dene = ilk.Where(x => (x.ModelPuan) >=3  && (x.ModelPuan) < 4).Distinct();
                    kontic = 1;
                }
                else
                {
                    dene = dene.Union(ilk.Where(x => x.ModelPuan >= 3 && (x.ModelPuan) < 4)).Distinct();
                }

            }
            if (CheckBox15.Checked)
            {
                if (kontic == 0)
                {
                    dene = ilk.Where(x => x.ModelPuan >= 4 && (x.ModelPuan) <=5).Distinct();
                    kontic = 1;
                }
                else
                {
                    dene = dene.Union(ilk.Where(x => x.ModelPuan >= 4 && (x.ModelPuan) <= 5)).Distinct();
                }
            }
            Repeater9.DataSource = dene.ToList();
            Repeater9.DataBind();


                }
    }
}