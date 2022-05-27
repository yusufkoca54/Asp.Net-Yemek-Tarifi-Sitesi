using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace _1_AspNetYemekTarifiSitesi
{
    public partial class TarifOner : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        sqlsinif bgl = new sqlsinif();
        protected void btntarifoner_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("insert into tbl_Tarifler (tarifAd,tarifMalzeme,tarifYapilis,tarifResim,tarifSahip,tarifSahipMail)  values (@t1,@t2,@t3,@t4,@t5,@t6)",bgl.baglanti());
            komut.Parameters.AddWithValue("@t1", txttarifAd.Text);
            komut.Parameters.AddWithValue("@t2", txtmalzemeler.Text);
            komut.Parameters.AddWithValue("@t3", txtyapilis.Text);
            komut.Parameters.AddWithValue("@t4", FileUpload1.FileName);
            komut.Parameters.AddWithValue("@t5", txttarifoner.Text);
            komut.Parameters.AddWithValue("@t6", txtmailadres.Text);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
            Response.Write("Tarifiniz Alınmıştır");

        }
    }
}