using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YazLab
{
    public partial class ÜrünGetir : System.Web.UI.Page
    {
        UrunlerEntities2 db = new UrunlerEntities2();
        protected void Page_Load(object sender, EventArgs e)
        {





        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           int id = Convert.ToInt32(TextBox1.Text);

            var sorgu = db.tbl_urunler.Find(id);
           
            if(sorgu!=null)
            {
                var sorgu2 = db.tbl_modeller.Find(sorgu.ModelId);
                Label3.Text = "Puan";
                 Label2.Text =sorgu2.ModelPuan.ToString();
                Label4.Text = "MODELNO:";

                
                            
                try
                {
                    var sorgu3 = (from item in db.tbl_modeller
                                  where sorgu.ModelId == item.ModelId
                                  select item.ModelNo).ToList();
                    Label5.Text = sorgu3[0].ToString();
                }
                catch
                {

                }


             

            }
            else
            {

                Label6.Text = "Ürün Bulunamadı!!";
            }


        }
    }
}