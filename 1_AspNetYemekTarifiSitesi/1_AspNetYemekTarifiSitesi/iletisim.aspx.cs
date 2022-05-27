using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace _1_AspNetYemekTarifiSitesi
{
    public partial class iletisim : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        sqlsinif bgl = new sqlsinif();
       public void temizle()
        {
            txtGonderen.Text = "";
            txtMail.Text = "";
            txtBaslik.Text = "";
            txtMesaj.Text = "";
            txtGonderen.Focus();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("insert into tbl_Mesajlar (mesajGonderen,mesajBaslik,mesajMail,mesajIcerik) values (@p1,@p2,@p3,@p4)",bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", txtGonderen.Text);
            komut.Parameters.AddWithValue("@p2", txtMail.Text);
            komut.Parameters.AddWithValue("@p3", txtBaslik.Text);
            komut.Parameters.AddWithValue("@p4", txtMesaj.Text);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
            temizle();
            
            

        }
    }
}