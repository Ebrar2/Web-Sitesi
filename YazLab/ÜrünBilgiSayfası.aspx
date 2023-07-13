<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ÜrünBilgiSayfası.aspx.cs" Inherits="YazLab.ÜrünBilgiSayfası" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>Ürünler | E-Ticaret</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <link href="/Eshopper/css/bootstrap.min.css" rel="stylesheet" />
    <link href="/Eshopper/css/font-awesome.min.css" rel="stylesheet" />
    <link href="/Eshopper/css/prettyPhoto.css" rel="stylesheet" />
    <link href="/Eshopper/css/price-range.css" rel="stylesheet" />
    <link href="/Eshopper/css/animate.css" rel="stylesheet" />
	<link href="/Eshopper/css/main.css" rel="stylesheet" />
	<link href="/Eshopper/css/responsive.css" rel="stylesheet" />
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->       
    <link rel="shortcut icon" href="/Eshopper/images/ico/favicon.ico" />
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="/Eshopper/images/ico/apple-touch-icon-144-precomposed.png" />
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="/Eshopper/images/ico/apple-touch-icon-114-precomposed.png" />
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="/Eshopper/images/ico/apple-touch-icon-72-precomposed.png" />
    <link rel="apple-touch-icon-precomposed" href="/Eshopper/images/ico/apple-touch-icon-57-precomposed.png" />
    
     <style type="text/css">
         .auto-style1 {
             height: 797px;
         }
         .auto-style2 {
             float: left;
             height: 6px;
         }
         .auto-style3 {
             width: 450px;
         }
         .auto-style4 {
             font-size: x-large;
             margin-left: 213px;
         }
         .auto-style6 {
             font-size: small;
         }
         .auto-style7 {
             height: 291px;
         }
         .auto-style8 {
             margin-left: 55px;
             margin-top: 0px;
         }
         .auto-style9 {
             width: 100%;
             height: 512px;
             margin-top: 0px;
         }
         .auto-style10 {
             width: 6px;
         }
         .auto-style11 {
             width: 6px;
             height: 57px;
         }
         .auto-style12 {
             height: 57px;
         }
         .auto-style13 {
             margin-left: 40px;
         }
         .auto-style14 {
             border-style: none;
             border-color: inherit;
             border-width: 0;
             background: #FE980F;
             border-radius: 0;
             color: #FFFFFF;
             font-family: 'Roboto', sans-serif;
             font-size: 15px;
             margin-bottom: 10px;
             margin-left: 125px;
         }
         .auto-style15 {
             width: 6px;
             height: 205px;
         }
         .auto-style16 {
             height: 205px;
         }
     </style>
</head>
<body style="height: 1067px; left: 0px; top: 0px;">
    <form id="form1" runat="server">
        <header id="header"><!--header-->
		<div class="header_top"><!--header_top-->
			<div class="container">
				<div class="row">
					<div class="col-sm-6">
						<div class="contactinfo">
							<ul class="nav nav-pills">
								<li><a href="#"><i class="fa fa-phone"></i> +2 95 01 88 821</a></li>
								<li><a href="#"><i class="fa fa-envelope"></i> info@domain.com</a></li>
							</ul>
						</div>
					</div>
					<div class="col-sm-6">
						<div class="social-icons pull-right">
							<ul class="nav navbar-nav">
								<li><a href="#"><i class="fa fa-facebook"></i></a></li>
								<li><a href="#"><i class="fa fa-twitter"></i></a></li>
								<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
								<li><a href="#"><i class="fa fa-dribbble"></i></a></li>
								<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div><!--/header_top-->
		
		<div class="header-middle"><!--header-middle-->
			<div class="container">
				<div class="row">
					<div class="col-sm-4">
						<div class="logo pull-left">
							<a href="Default.aspx"><img src="/Eshopper/images/home/logo.png" alt="" /></a>
						</div>
					</div>
					<div class="col-sm-8">
						<div class="shop-menu pull-right">
							<ul class="nav navbar-nav">
								<li><a href="/Adminİslemler/Login.aspx"><i class="fa fa-lock"></i> Admin Login</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div><!--/header-middle-->
	
		<div class="header-bottom"><!--header-bottom-->
			<div class="container">
				<div class="row">
					<div class="col-sm-9">
						<div class="auto-style2">
						</div>
						<div class="mainmenu pull-left">
							<ul class="nav navbar-nav collapse navbar-collapse">
								<li><a href="Default.aspx" class="active">Home</a></li>
			
								
							</ul>
						</div>
					</div>
					
				</div>
			</div>
		</div><!--/header-bottom-->
	</header><!--/header-->
	<div class="cart">
        
	</div>
	
        <div class="auto-style1">
		
&nbsp;<table class="nav-justified">
                    <tr>
                        <td class="auto-style3">
                            <asp:Label ID="Label3" runat="server"></asp:Label>
                        </td>
                        <td>
                            <strong>
                        &nbsp;<asp:Label ID="Label2" runat="server" CssClass="auto-style5" style="font-size: xx-large"></asp:Label>
                            </strong>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">
                            <asp:Image ID="Image1" runat="server" Height="654px" Width="590px" CssClass="auto-style8" />
                        </td>
                        <td>
                            <table class="auto-style9">
                                <tr>
                                    <td class="auto-style10">&nbsp;</td>
                                    <td>
                            <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label4" runat="server" CssClass="auto-style4" BorderStyle="None" Font-Bold="True" Font-Italic="False" Font-Overline="False" Font-Underline="False" Width="190px"></asp:Label>
                            </strong>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style11"></td>
                                    <td class="auto-style12"><strong>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                            <asp:Label ID="Label5" runat="server" CssClass="auto-style6" BorderStyle="Solid" Font-Bold="True" Font-Italic="False"></asp:Label>
                            </strong></td>
                                </tr>
                                <tr>
                                    <td class="auto-style10">&nbsp;</td>
                                    <td class="auto-style13">
                                        &nbsp;<asp:Button ID="Button1" runat="server" CssClass="auto-style14" Height="36px" Text="Sepete Ekle" Width="392px" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style15"></td>
                                    <td class="auto-style16">
                                        <br />
                                        <br />
                                        <br />
                                        <br />
                                        <br />
                                        <br />
                                        <br />
                                        <br />
                                        <br />
                                        <br />
                                        <br />
                                        <br />
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style10">&nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
           
            <div class="auto-style7">
                

               <table class="table">
                    <% 
                        YazLab.UrunlerEntities2 db = new YazLab.UrunlerEntities2();
                        int ürünId = Convert.ToInt32((Request.QueryString["i"]));
                        var urunH = (from item in db.tbl_urunAciklama
                                     where item.UrunId == ürünId
                                     select new
                                     {
                                         İsletimSistemi = item.isletimSistemi,
                                         İslemciTip = item.islemciTip,
                                         İslemciNesli = item.islemciNesli,
                                         ram = item.ram,
                                         DiskBoyut = item.diskBoyut,
                                         DiskTur = item.diskTur,
                                         EkranBoyut = item.ekranBoyut

                                     }
                                   ).First();


%>
                      <thead>
                        <tr>
                          <th scope="col">#</th>
                          <th scope="col">İşletim Sistemi</th>
                          <th scope="col">İşlemci Tipi</th>
                          <th scope="col">İşlemci Nesli</th>
                          <th scope="col">Ram</th>
                          <th scope="col">Disk Boyutu</th>
                          <th scope="col">Disk Türü</th>
                          <th scope="col">Ekran Boyut</th>


                         
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <th scope="row">1</th>
                         <td><% =urunH.İsletimSistemi.ToString()%></td>
                          <td><% =urunH.İslemciTip.ToString()%></td>
                             <td><%  = urunH.İslemciNesli.ToString()%></td>
                             <td><%  = urunH.ram.ToString()%></td>
                             <td><%  = urunH.DiskBoyut.ToString()%></td>
                             <td><%  = urunH.DiskTur.ToString()%></td>
                             <td><%  = urunH.EkranBoyut.ToString()%></td>

                        </tr>
                
                       


            
                      
                          
                      </tbody>
                    </table>

            </div>
           <%--   
            <asp:Table>

            <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                <SelectedItemStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
              
                <HeaderTemplate>
                 

                </HeaderTemplate>


                <ItemTemplate>
                  <label><%#Eval("İsletimSistemi")%></label><br />
                  <label><%#Eval("İslemciTip") %></label><br />
                  <label><%#Eval("İslemciNesli") %></label><br />
                  <label><%#Eval("ram") %></label><br />
                  <label><%#Eval("DiskBoyut") %></label><br />
                  <label><%#Eval("DiskTur") %></label><br />
                  <label><%#Eval("EkranBoyut") %></label><br />
                </ItemTemplate>



            </asp:DataList>
                    </asp:Table>--%>

      
        </div>






	   <script src="/Eshopper/js/jquery.js"></script>
	<script src="/Eshopper/js/bootstrap.min.js"></script>
	<script src="/Eshopper/js/jquery.scrollUp.min.js"></script>
	<script src="/Eshopper/js/price-range.js"></script>
    <script src="/Eshopper/js/jquery.prettyPhoto.js"></script>
    <script src="~/Eshopper/js/main.js"></script>
            </form>

</body>
</html>
