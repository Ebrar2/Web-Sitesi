using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;

namespace YazLab
{
    public class Class2
    {
        UrunlerEntities2 db = new UrunlerEntities2();


        public void skksk()
        {
            string marka = "Lenovo";
            var ara = db.tbl_markalar.Where(x => x.MarkaAd.Contains(marka)).ToList();
            if (ara != null)
            {

                int markaId = Convert.ToInt32(ara[0]);
                Console.WriteLine("kkkkkkkkkkkkkkkkkkk");
                Console.WriteLine(markaId);
                Console.Read();
            }

        }
        static public void Main(String[] args)
        {

            Console.WriteLine("Main Method");
            new Class2().skksk();
        }
    }
    }