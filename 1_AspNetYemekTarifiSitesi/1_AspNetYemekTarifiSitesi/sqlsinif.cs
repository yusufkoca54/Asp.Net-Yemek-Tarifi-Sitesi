using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace _1_AspNetYemekTarifiSitesi
{
    public class sqlsinif
    {
        public SqlConnection baglanti()
        {
            SqlConnection  baglan = new SqlConnection("Data Source=DESKTOP-18K9AFS;Initial Catalog=yemekTarifi;Integrated Security=True");
            baglan.Open();
            return baglan;
        }
    }
}