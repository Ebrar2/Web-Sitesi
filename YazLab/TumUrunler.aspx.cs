using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YazLab
{
    public partial class TumUrunler : System.Web.UI.Page
    {
        UrunlerEntities2 db=new UrunlerEntities2();
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
                             UrunId = ur.UrunId

                         };

            Repeater9.DataSource = sonuc8.Distinct().ToList();
            Repeater9.DataBind();
        }
    }
}