using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace _1_AspNetYemekTarifiSitesi
{

    public partial class Yemekler : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();

        string islem = "";
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
           
            

            // PANELLERİ SAYFA YÜKLENDİĞİ ZAMAN GÖRÜNÜR HALİNİ PASİF YAP
            Panel2.Visible = false;
            Panel4.Visible = false;


            // KATEGORİ LİSTELEİRi ÇEKME ve if ile yazacağımız şart bize doğru bir günceleme işlemi sağlyacaktır
            if (Page.IsPostBack == false)
            {
                id = Request.QueryString["yemekid"];
                islem = Request.QueryString["islem"];


                SqlCommand komut2 = new SqlCommand("select * from tbl_Kategoriler", bgl.baglanti());
                SqlDataReader dr2 = komut2.ExecuteReader();
                DropDownList1.DataTextField = "kategoriAd";    // bu bize drop downun içerisine kategori adlarını getirdi
                DropDownList1.DataValueField = "kategoriid";   // bu ise bize kategorinin arka planda çalışacak olan değeri
                DropDownList1.DataSource = dr2;
                DropDownList1.DataBind();


            }

            // Yemek Listesi

            SqlCommand komut = new SqlCommand("select * from tbl_Yemekler", bgl.baglanti());
            SqlDataReader dr = komut.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();

            if(islem == "sil")
            {
                SqlCommand komutsil = new SqlCommand("delete from tbl_Yemekler where yemekid=@p1",bgl.baglanti());
                komutsil.Parameters.AddWithValue("@p1", id);
                komutsil.ExecuteNonQuery();
                bgl.baglanti().Close();

                
            }

           



        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // BUTONA BASTIĞIMIZDA PANEL 2 NİN AÇILMASI
            Panel2.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            // BUTONA BASTIĞIMIZDA PANEL 2 NİN KAPANMASI
            Panel2.Visible = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            // BUTONA BASTIĞIMIZDA PANEL 4 NİN AÇILMASI
            Panel4.Visible = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            // BUTONA BASTIĞIMIZDA PANEL 4 NİN KAPANMASI
            Panel4.Visible = false;
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            // yemek ekleme
            SqlCommand komut = new SqlCommand("insert into tbl_Yemekler (yemekAd,yemekMalzeme,yemekTarif,kategoriid) values(@p1,@p2,@p3,@p4)", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut.Parameters.AddWithValue("@p3", TextBox3.Text);
            komut.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();


            // kategori sayısını arttırma

            SqlCommand komut2 = new SqlCommand("update tbl_Kategoriler set kategoriAdet=kategoriAdet+1 where kategoriid=@p1", bgl.baglanti());
            komut2.Parameters.AddWithValue("@p1", DropDownList1.SelectedValue);
            komut2.ExecuteNonQuery();
            bgl.baglanti().Close();


            

        }
    }
}