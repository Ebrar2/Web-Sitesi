<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FiyatGüncelle.aspx.cs" Inherits="YazLab.Adminİslemler.FiyatGüncelle" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title></title>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <style type="text/css">
        .auto-style1 {
            height: 894px;
        }
        .auto-style2 {
            height: 329px;
            text-align: left;
            margin-left: 338px;
            margin-right: 574px;
            margin-top: 103px;
        }
        .auto-style3 {
            margin-left: 417px;
        }
        .auto-style4 {
            font-size: medium;
        }
        .auto-style5 {
            font-size: large;
        }
    </style>
</head>
<body>
      <form id="form1" runat="server" class="auto-style1">

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
          
           <div class="auto-style2" >
               <h1>ÜRÜN  FİYAT GÜNCELLE</h1><br /><br />
               <strong>

          <asp:Label ID="Label1" runat="server" Text="Ürün Id Giriniz:" CssClass="auto-style5"></asp:Label>
          <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style4" Width="409px"></asp:TextBox></strong><br /><br /><br />
               <strong>
          <asp:Label ID="Label2" runat="server" Text="Ürünün Yeni Fiyatını Giriniz:" CssClass="auto-style5"></asp:Label>
               </strong>
          <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style4" Width="273px"></asp:TextBox><br /><br /><br />
        <div>
          <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Güncelle" CssClass="auto-style3" Height="39px" Width="108px" BackColor="Black" /><br />

            <asp:Label ID="Label3" runat="server" Text=""></asp:Label> <br />
             <asp:Label ID="Label4" runat="server" Text=""></asp:Label> 


        </div>


                       </div>


 
      </form>
</body>
</html>
