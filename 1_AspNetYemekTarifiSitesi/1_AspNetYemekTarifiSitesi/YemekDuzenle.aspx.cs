using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace _1_AspNetYemekTarifiSitesi
{
    public partial class YemekDuzenle : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        string id = "";
        

        protected void Page_Load(object sender, EventArgs e)
        {


            
            
                id = Request.QueryString["yemekid"];
                
            


            if (Page.IsPostBack == false)// sayfayı yeniden yükleme
            {

                // güncelleme işlemi
                SqlCommand komut = new SqlCommand("select * from tbl_Yemekler where yemekid=@p1", bgl.baglanti());
                komut.Parameters.AddWithValue("@p1", id);
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    TextBox1.Text = dr[1].ToString();
                    TextBox2.Text = dr[2].ToString();
                    TextBox3.Text = dr[3].ToString();
                }
                bgl.baglanti().Close();
                // KATEGORİ LİSTELEİRi ÇEKME ve if ile yazacağımız şart bize doğru bir günceleme işlemi sağlyacaktır
                if (Page.IsPostBack == false)
                {
                    SqlCommand komut2 = new SqlCommand("select * from tbl_Kategoriler", bgl.baglanti());
                    SqlDataReader dr2 = komut2.ExecuteReader();
                    DropDownList1.DataTextField = "kategoriAd";    // bu bize drop downun içerisine kategori adlarını getirdi
                    DropDownList1.DataValueField = "kategoriid";   // bu ise bize kategorinin arka planda çalışacak olan değeri
                    DropDownList1.DataSource = dr2;
                    DropDownList1.DataBind();


                }

                



            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            FileUpload1.SaveAs(Server.MapPath("/Banner Foto/" + FileUpload1.FileName));// resim yüklemek için dosya yolundan

            SqlCommand komut = new SqlCommand("update tbl_Yemekler set yemekAd=@p1,yemekMalzeme=@p2,yemekTarif=@p3,kategoriid=@p4,yemekResim=@p6 where yemekid=@p5", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1",TextBox1.Text);
            komut.Parameters.AddWithValue("@p2",TextBox2.Text);
            komut.Parameters.AddWithValue("@p3",TextBox3.Text);
            komut.Parameters.AddWithValue("@p4",DropDownList1.SelectedValue);
            komut.Parameters.AddWithValue("@p6", "~/Banner Foto/" + FileUpload1.FileName);
            komut.Parameters.AddWithValue("@p5",id);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            // TÜM YEMEKLEİRN DURUMUNU FALSE YAPTIK
            SqlCommand komut = new SqlCommand("update tbl_Yemekler set durum=0", bgl.baglanti());
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();

            // GÜNÜN YEMEĞİ İÇİN ID YE GÖRE DURUMUNU TRUE YAPALIM

            SqlCommand komut2 = new SqlCommand("update tbl_Yemekler set durum=1 where yemekid=@p1", bgl.baglanti());
            komut2.Parameters.AddWithValue("@p1", id);
            komut2.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}