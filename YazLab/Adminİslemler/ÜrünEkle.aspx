<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ÜrünEkle.aspx.cs" Inherits="YazLab.ÜrünEkle" %>

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
            height: 81px;
        }
        .auto-style3 {
            width: 378px;
            font-size: large;
        }
        .auto-style5 {
            margin-left: 0;
            font-size: medium;
        }
        .auto-style6 {
            font-size: medium;
        }
        .auto-style8 {
            margin-top: 0;
            font-size: large;
            margin-left: 551px;
        }
        .auto-style9 {
            font-size: large;
        }
    </style>
    </head>
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
        <div class="auto-style1">
       
           <h1 ><strong>ÜRÜN             EKLE</strong></h1>

               <table class="nav-justified">
                   <tr>
                       <td class="auto-style3">Ürün Ad:</td>
                       <td>&nbsp;<asp:TextBox ID="TextBox1" runat="server" Width="665px" CssClass="auto-style5"></asp:TextBox>
                       </td>
                   </tr>
                   <tr>
                       <td class="auto-style3">Fiyat:</td>
                       <td>&nbsp;<asp:TextBox ID="TextBox2" runat="server" Width="668px" CssClass="auto-style6"></asp:TextBox>

                       </td>
                   </tr>
                   <tr>
                       <td class="auto-style3">Marka</td>
                       <td>&nbsp;<asp:TextBox ID="TextBox3" runat="server" Width="668px" CssClass="auto-style6"></asp:TextBox>

                       </td>
                   </tr>
                   <tr>
                       <td class="auto-style3">Model Numarası:</td>
                       <td>&nbsp;<asp:TextBox ID="TextBox4" runat="server" Width="668px" CssClass="auto-style6"></asp:TextBox>

                       </td>
                   </tr>
                   <tr>
                       <td class="auto-style3">İşletim Sistemi:</td>
                       <td>&nbsp;<asp:TextBox ID="TextBox5" runat="server" Width="668px" CssClass="auto-style6"></asp:TextBox>

                       </td>
                   </tr>
                   <tr>
                       <td class="auto-style3">İşlemci Tipi:</td>
                       <td>&nbsp;<asp:TextBox ID="TextBox6" runat="server" Width="668px" CssClass="auto-style6"></asp:TextBox>

                       </td>
                   </tr>
                   <tr>
                       <td class="auto-style3">İslemci Nesli:</td>
                       <td>&nbsp;<asp:TextBox ID="TextBox7" runat="server" Width="668px" CssClass="auto-style6"></asp:TextBox>

                       </td>
                   </tr>
                   <tr>
                       <td class="auto-style3">Ram:</td>
                       <td>&nbsp;<asp:TextBox ID="TextBox8" runat="server" Width="668px" CssClass="auto-style6"></asp:TextBox>

                       </td>
                   </tr>
                   <tr>
                       <td class="auto-style3">Disk Boyut:</td>
                       <td>&nbsp;<asp:TextBox ID="TextBox9" runat="server" Width="668px" CssClass="auto-style6"></asp:TextBox>

                       </td>
                   </tr>
                   <tr>
                       <td class="auto-style3">Disk Türü:</td>
                       <td>&nbsp;<asp:TextBox ID="TextBox10" runat="server" Width="668px" CssClass="auto-style6"></asp:TextBox>

                       </td>
                   </tr>
                   <tr>
                       <td class="auto-style3">EkranBoyut:</td>
                       <td>&nbsp;<asp:TextBox ID="TextBox11" runat="server" Width="668px" CssClass="auto-style6"></asp:TextBox>

                       </td>
                   </tr>
                   <tr>
                       <td class="auto-style3">Ürün Resim Url:</td>
                       <td>&nbsp;<asp:TextBox ID="TextBox12" runat="server" Width="668px" CssClass="auto-style6"></asp:TextBox>

                       </td>
                   </tr>
               </table>
               <br />
               <asp:Button ID="Button1" runat="server" CssClass="auto-style8" Height="46px" Text="Ekle" Width="201px" OnClick="Button1_Click" /><br /><br />
               <asp:Label ID="Label1" runat="server" CssClass="auto-style9"></asp:Label><br />

             <asp:Label ID="Label2" runat="server" CssClass="auto-style9"></asp:Label>

        


        </div>








 
      </form>



</body>
</html>
