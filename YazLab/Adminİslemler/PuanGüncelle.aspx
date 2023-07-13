<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PuanGüncelle.aspx.cs" Inherits="YazLab.PuanGüncelle" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <title></title>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script></head>
<body>
      <form id="form1" runat="server">

        <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">E-Ticaret</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="/Adminİslemler/AdminHome.aspx">Home</a></li>
          <li><a href="/Adminİslemler/FiyatGüncelle.aspx">Ürün Fiyat Güncelle</a></li>
          <li><a href="/Adminİslemler/ÜrünSil.aspx">Ürün Sil</a></li>
          <li><a href="/Adminİslemler/ÜrünEkle.aspx">Ürün Ekle</a></li>
          <li><a href="/Adminİslemler/PuanGüncelle.aspx">Ürün Puan Güncelle</a></li>
          <li><a href="/Adminİslemler/ÜrünBilgiGüncelle.aspx">Ürün Bilgilerini Güncelle</a></li>
          <li><a href="/Adminİslemler/ÜrünGetir.aspx">Ürün Bilgilerini Getir</a></li>
    </ul>
  
    <ul class="nav navbar-nav navbar-right">
      <li><a href="Login.aspx"><span class="glyphicon glyphicon-log-in"></span> Çıkış</a></li>
    </ul>
  </div>
</nav>
             <div class="text-left" >
               <h1 class="auto-style1"><strong>ÜRÜN PUAN GÜNCELLE</strong></h1>
                 <div class="text-center">
                     <br /><br />
                <strong>

          <asp:Label ID="Label1" runat="server" Text="Ürün Id Giriniz:" CssClass="auto-style5" style="font-size: large"></asp:Label>
                </strong>
          <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style4" Width="518px" style="font-size: large"></asp:TextBox>
                     <br />
                     <br />
                     <strong>
                  <asp:Label ID="Label2" runat="server" Text="Ürün Güncel Puan Giriniz:" CssClass="auto-style5" style="font-size: large"></asp:Label>
                     </strong>
          <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style4" Width="409px" style="font-size: large"></asp:TextBox><br /><br />
                   
                <asp:Button ID="Button2" runat="server" Text="Güncelle" Height="33px" Width="105px" OnClick="Button1_Click" /><br /><br /><br />

                       <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
                     <br />
                 </div>
                 </div>
              
      </form>
</body>
</html>
