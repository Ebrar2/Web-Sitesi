<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminHome.aspx.cs" Inherits="YazLab.AdminHome" %>

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
             font-size: medium;
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
  <div class="container">
  <h2>ÜRÜNLER<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="auto-style1" DataKeyNames="UrunId" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Height="203px" Width="552px">
      <Columns>
          <asp:BoundField DataField="UrunId" HeaderText="UrunId" InsertVisible="False" ReadOnly="True" SortExpression="UrunId" />
          <asp:BoundField DataField="UrunAd" HeaderText="UrunAd" SortExpression="UrunAd" />
          <asp:BoundField DataField="ModelId" HeaderText="ModelId" SortExpression="ModelId" />
          <asp:BoundField DataField="Fiyat" HeaderText="Fiyat" SortExpression="Fiyat" />
      </Columns>
      <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
      <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
      <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
      <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
      <SortedAscendingCellStyle BackColor="#F7F7F7" />
      <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
      <SortedDescendingCellStyle BackColor="#E5E5E5" />
      <SortedDescendingHeaderStyle BackColor="#242121" />
      </asp:GridView>
      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:UrunlerConnectionString4 %>" SelectCommand="SELECT [UrunId], [UrunAd], [ModelId], [Fiyat] FROM [tbl_urunler]"></asp:SqlDataSource>
      </h2>
      <p>&nbsp;</p>
 
</div>

      </form>
</body>
</html>
