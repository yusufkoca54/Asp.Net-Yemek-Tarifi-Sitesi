using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace _1_AspNetYemekTarifiSitesi
{
    public partial class YorumDetay : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["yorumid"];
            if (Page.IsPostBack == false)
            {


                SqlCommand komut = new SqlCommand("select yorumAdsoyad,yorumMail,yorumIcerik,yemekAd from tbl_Yorumlar inner join tbl_Yemekler on tbl_Yorumlar.yemekid=tbl_Yemekler.yemekid where yorumid=@p1", bgl.baglanti());
                komut.Parameters.AddWithValue("@p1", id);
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    txtad.Text = dr[0].ToString();
                    txtmail.Text = dr[1].ToString();
                    txticerik.Text = dr[2].ToString();
                    txtyemek.Text = dr[3].ToString();

                }
                bgl.baglanti().Close();
            }
        }

        protected void btnonayla_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("update tbl_Yorumlar set yorumIcerik=@p1,yorumOnay=@p2 where yorumid=@p3",bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", txticerik.Text);
            komut.Parameters.AddWithValue("@p2", "True");
            komut.Parameters.AddWithValue("@p3", id);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();

        }
    }
}