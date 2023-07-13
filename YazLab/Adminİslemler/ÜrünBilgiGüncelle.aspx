<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ÜrünBilgiGüncelle.aspx.cs" Inherits="YazLab.ÜrünBilgiGüncelle" %>

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
            font-size: x-large;
        }
        .auto-style2 {
            font-size: medium;
            margin-left: 21px;
        }
        .auto-style3 {
            height: 469px;
        }
        .auto-style4 {
            margin-left: 48px;
            margin-top: 64px;
        }
        .auto-style5 {
            height: 20px;
        }
        .auto-style6 {
            height: 20px;
            width: 11px;
        }
        .auto-style7 {
            font-size: medium;
        }
        .auto-style8 {
            margin-left: 31;
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
 
          
 
          <strong>
          <asp:Label ID="Label1" runat="server" CssClass="auto-style1" Text="Ürün Id Giriniz:"></asp:Label>
          </strong>
          <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style2" Height="35px" Width="548px"></asp:TextBox>
          <asp:Button ID="Button1" runat="server" Height="35px" Text="OK" Width="166px" OnClick="Button1_Click" />
 
          <strong>
              <br />
          <asp:Label ID="Label2" runat="server" CssClass="auto-style7" Text=""></asp:Label>
          </strong>
 
          <div class="auto-style3">

              <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CssClass="auto-style4" DataSourceID="SqlDataSource1" Height="173px" OnSelectedIndexChanged="GridView2_SelectedIndexChanged1" Width="663px">
                  <Columns>
                      <asp:BoundField DataField="isletimSistemi" HeaderText="isletimSistemi" SortExpression="isletimSistemi" />
                      <asp:BoundField DataField="islemciTip" HeaderText="islemciTip" SortExpression="islemciTip" />
                      <asp:BoundField DataField="islemciNesli" HeaderText="islemciNesli" SortExpression="islemciNesli" />
                      <asp:BoundField DataField="ram" HeaderText="ram" SortExpression="ram" />
                      <asp:BoundField DataField="diskTur" HeaderText="diskTur" SortExpression="diskTur" />
                      <asp:BoundField DataField="ekranBoyut" HeaderText="ekranBoyut" SortExpression="ekranBoyut" />
                      <asp:BoundField DataField="diskBoyut" HeaderText="diskBoyut" SortExpression="diskBoyut" />
                  </Columns>
              </asp:GridView>
              <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:UrunlerConnectionString9 %>" SelectCommand="SELECT [isletimSistemi], [islemciTip], [islemciNesli], [ram], [diskTur], [ekranBoyut], [diskBoyut] FROM [tbl_urunAciklama] WHERE ([UrunId] = @UrunId)">
                  <SelectParameters>
                      <asp:FormParameter FormField="TextBox1" Name="UrunId" Type="Int32" />
                  </SelectParameters>
              </asp:SqlDataSource>
              <br />
              <br />
              <table class="nav-justified">
                  <tr>
                      <td class="auto-style5">İ<strong>İSLETİM SİSTEMİ</strong></td>
                      <td class="auto-style5"><strong>
                          <asp:TextBox ID="TextBox3" runat="server" Width="260px" CssClass="auto-style7"></asp:TextBox>
                          </strong>
                          <asp:Button ID="Button2" runat="server" OnClick="Button2_Click1" Text="KAYDET" />
                      </td>
                      <td class="auto-style5">
                          &nbsp;</td>
                      <td class="auto-style5">&nbsp;</td>
                      <td class="auto-style6">&nbsp;</td>
                      <td class="auto-style5">&nbsp;</td>
                      <td class="auto-style5">&nbsp;</td>
                  </tr>
                  <tr>
                      <td class="auto-style5">İ<strong>SLEMCİ TİPİ</strong></td>
                      <td class="auto-style5">
                          <asp:TextBox ID="TextBox4" runat="server" Width="260px" CssClass="auto-style7"></asp:TextBox>
                          <asp:Button ID="Button3" runat="server" Text="KAYDET" OnClick="Button3_Click" Width="82px" />
                      </td>
                      <td class="auto-style5">
                          &nbsp;</td>
                      <td class="auto-style5">
                          &nbsp;</td>
                      <td class="auto-style5">
                          &nbsp;</td>
                      <td class="auto-style5">
                          &nbsp;</td>
                      <td class="auto-style5">
                          &nbsp;</td>
                  </tr>
                  <tr>
                      <td class="auto-style5">
                          İ<strong>ŞLEMCİ NESLİ</strong></td>
                      <td class="auto-style5">
                          <asp:TextBox ID="TextBox5" runat="server" Width="260px" CssClass="auto-style7"></asp:TextBox>
                          <asp:Button ID="Button4" runat="server" Text="KAYDET" OnClick="Button4_Click" />
                      </td>
                      <td class="auto-style5">
                          &nbsp;</td>
                      <td class="auto-style5">
                          &nbsp;</td>
                      <td class="auto-style5">
                          &nbsp;</td>
                      <td class="auto-style5">
                          &nbsp;</td>
                      <td class="auto-style5">
                          &nbsp;</td>
                  </tr>
                  <tr>
                      <td class="auto-style5">
                          <strong>RAM</strong></td>
                      <td class="auto-style5">
                          <asp:TextBox ID="TextBox6" runat="server" Width="260px" CssClass="auto-style7"></asp:TextBox>
                          <asp:Button ID="Button5" runat="server" Text="KAYDET" OnClick="Button5_Click" />
                      </td>
                      <td class="auto-style5">
                          &nbsp;</td>
                      <td class="auto-style5">
                          &nbsp;</td>
                      <td class="auto-style5">
                          &nbsp;</td>
                      <td class="auto-style5">
                          &nbsp;</td>
                      <td class="auto-style5">
                          &nbsp;</td>
                  </tr>
                  <tr>
                      <td class="auto-style5">
                          <strong>DİSK TÜRÜ</strong></td>
                      <td class="auto-style5">
                          <asp:TextBox ID="TextBox7" runat="server" Width="260px" CssClass="auto-style7"></asp:TextBox>
                          <asp:Button ID="Button6" runat="server" Text="KAYDET" OnClick="Button6_Click" />
                      </td>
                      <td class="auto-style5">
                          &nbsp;</td>
                      <td class="auto-style5">
                          &nbsp;</td>
                      <td class="auto-style5">
                          &nbsp;</td>
                      <td class="auto-style5">
                          &nbsp;</td>
                      <td class="auto-style5">
                          &nbsp;</td>
                  </tr>
                  <tr>
                      <td class="auto-style5">
                          <strong>EKRAN BOYUTU</strong></td>
                      <td class="auto-style5">
                          <asp:TextBox ID="TextBox8" runat="server" Width="260px" CssClass="auto-style8"></asp:TextBox>
                          <asp:Button ID="Button7" runat="server" Text="KAYDET" OnClick="Button7_Click" />
                      </td>
                      <td class="auto-style5">
                          &nbsp;</td>
                      <td class="auto-style5">
                          &nbsp;</td>
                      <td class="auto-style5">
                          &nbsp;</td>
                      <td class="auto-style5">
                          &nbsp;</td>
                      <td class="auto-style5">
                          &nbsp;</td>
                  </tr>
                  <tr>
                      <td class="auto-style5">
                          <strong>DİSK BOYUTU</strong></td>
                      <td class="auto-style5">
                          <asp:TextBox ID="TextBox9" runat="server" Width="260px" CssClass="auto-style7"></asp:TextBox>
                          <asp:Button ID="Button8" runat="server" Text="KAYDET" OnClick="Button8_Click" style="height: 26px" />
                      </td>
                      <td class="auto-style5">
                          &nbsp;</td>
                      <td class="auto-style5">
                          &nbsp;</td>
                      <td class="auto-style5">
                          &nbsp;</td>
                      <td class="auto-style5">
                          &nbsp;</td>
                      <td class="auto-style5">
                          &nbsp;</td>
                  </tr>
              </table>

          </div>
 
      </form>
    </body>
</html>
