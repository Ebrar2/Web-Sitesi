<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ÜrünGetir.aspx.cs" Inherits="YazLab.ÜrünGetir" %>

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
            font-size: xx-large;
        }
        .auto-style2 {
            height: 690px;
            margin-bottom: 292px;
            margin-left: 40px;
        }
        .auto-style4 {
            margin-right: 133px;
        }
        .auto-style5 {
            margin-left: 0px;
        }
        .auto-style7 {
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
            <div class="auto-style2" >
               <h1 class="auto-style1"><strong>ÜRÜN GETİR</strong></h1><br />
                
                <br />
                <strong>

          <asp:Label ID="Label1" runat="server" Text="Ürün Id Giriniz:" CssClass="auto-style5" style="font-size: large"></asp:Label>
                </strong>
          <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style4" Width="409px" style="font-size: large"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" Text="Getir" Height="29px" Width="102px" OnClick="Button1_Click" CssClass="auto-style5" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:Label ID="Label6" runat="server"></asp:Label>

             
             
                         <br /><br />
             
                
             <div>             
                
             
             
                <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Height="242px" Width="958px" AutoGenerateColumns="False" DataKeyNames="UrunId" DataSourceID="SqlDataSource1">
                   
                    
                    <Columns>
          <asp:BoundField DataField="UrunId" HeaderText="UrunId" InsertVisible="False" ReadOnly="True" SortExpression="UrunId" />
          <asp:BoundField DataField="UrunAd" HeaderText="UrunAd" SortExpression="UrunAd" />
          <asp:BoundField DataField="ModelId" HeaderText="ModelId" SortExpression="ModelId" />
                        <asp:BoundField DataField="Fiyat" HeaderText="Fiyat" SortExpression="Fiyat" />
                        <asp:BoundField DataField="EklenmeTarih" HeaderText="EklenmeTarih" SortExpression="EklenmeTarih" />
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

             
             
                         <strong>
                 <asp:Label ID="Label3" runat="server" CssClass="auto-style7"></asp:Label>
                 </strong>
                 <asp:Label ID="Label2" runat="server"></asp:Label>

             
             
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

             
             
                         <strong>
                 <asp:Label ID="Label4" runat="server" CssClass="auto-style7"></asp:Label>
                 </strong>
                 <asp:Label ID="Label5" runat="server"></asp:Label>

             
             
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

             
             
                         </div>
       <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" CssClass="auto-style4" DataKeyNames="UrunAciklamaId" DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="Horizontal" Height="221px" Width="963px">
                    <Columns>
                        <asp:BoundField DataField="UrunAciklamaId" HeaderText="UrunAciklamaId" InsertVisible="False" ReadOnly="True" SortExpression="UrunAciklamaId" />
                        <asp:BoundField DataField="UrunId" HeaderText="UrunId" SortExpression="UrunId" />
                        <asp:BoundField DataField="UrunMarkaId" HeaderText="UrunMarkaId" SortExpression="UrunMarkaId" />
                        <asp:BoundField DataField="isletimSistemi" HeaderText="isletimSistemi" SortExpression="isletimSistemi" />
                        <asp:BoundField DataField="islemciTip" HeaderText="islemciTip" SortExpression="islemciTip" />
                        <asp:BoundField DataField="islemciNesli" HeaderText="islemciNesli" SortExpression="islemciNesli" />
                        <asp:BoundField DataField="ram" HeaderText="ram" SortExpression="ram" />
                        <asp:BoundField DataField="diskBoyut" HeaderText="diskBoyut" SortExpression="diskBoyut" />
                        <asp:BoundField DataField="diskTur" HeaderText="diskTur" SortExpression="diskTur" />
                        <asp:BoundField DataField="ekranBoyut" HeaderText="ekranBoyut" SortExpression="ekranBoyut" />
                        <asp:BoundField DataField="siteId" HeaderText="siteId" SortExpression="siteId" />
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
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:UrunlerConnectionString6 %>" SelectCommand="SELECT * FROM [tbl_urunAciklama] WHERE ([UrunId] = @UrunId)">
                    <SelectParameters>
                        <asp:FormParameter FormField="TextBox1" Name="UrunId" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>

                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:UrunlerConnectionString5 %>" SelectCommand="SELECT * FROM [tbl_urunler] WHERE ([UrunId] = @UrunId)">
                    <SelectParameters>
                        <asp:FormParameter FormField="TextBox1" Name="UrunId" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>





       
        </div>


       
      </form>
</body>
</html>
