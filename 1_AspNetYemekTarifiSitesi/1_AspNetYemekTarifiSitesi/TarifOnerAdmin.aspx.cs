using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace _1_AspNetYemekTarifiSitesi
{
    public partial class TarifOnerAdmin : System.Web.UI.Page
    {
        string id = "";
        sqlsinif bgl = new sqlsinif();
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["tarifid"];
            if (Page.IsPostBack == false)
            {


                SqlCommand komut = new SqlCommand("select * from tbl_Tarifler where tarifid=@p1", bgl.baglanti());
                komut.Parameters.AddWithValue("@p1", id);
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    txttarifad.Text = dr[1].ToString();
                    txtmalzeme.Text = dr[2].ToString();
                    txticerik.Text = dr[3].ToString();
                    txtoneren.Text = dr[5].ToString();
                    txtmail.Text = dr[6].ToString();
                }
                bgl.baglanti().Close();


                // Kategori Listesi

                SqlCommand komut2 = new SqlCommand("select * from tbl_Kategoriler", bgl.baglanti());
                SqlDataReader dr2 = komut2.ExecuteReader();
                DropDownList1.DataTextField = "kategoriAd";    // bu bize drop downun içerisine kategori adlarını getirdi
                DropDownList1.DataValueField = "kategoriid";   // bu ise bize kategorinin arka planda çalışacak olan değeri
                DropDownList1.DataSource = dr2;
                DropDownList1.DataBind();
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            // durum güncelleme
            SqlCommand komut = new SqlCommand("update tbl_Tarifler set tarifDurum=1 where tarifid=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", id);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();

            // yemeği ana sayfaya ekleme
            SqlCommand komut2 = new SqlCommand("insert into tbl_Yemekler (yemekAd,yemekMalzeme,yemekTarif,kategoriid) values(@p1,@p2,@p3,@p4)",bgl.baglanti());
            komut2.Parameters.AddWithValue("@p1", txttarifad.Text);
            komut2.Parameters.AddWithValue("@p2", txtmalzeme.Text);
            komut2.Parameters.AddWithValue("@p3", txticerik.Text);
            komut2.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            komut2.ExecuteNonQuery();
            bgl.baglanti().Close();

            // kategori sayısını arttırma
            SqlCommand komut3 = new SqlCommand("update tbl_Kategoriler set kategoriAdet=kategoriAdet+1 where kategoriid=@p1", bgl.baglanti());
            komut3.Parameters.AddWithValue("@p1", DropDownList1.SelectedValue);
            komut3.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}