<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" EnableEventValidation="false" Inherits="YazLab.Default" %>

<!DOCTYPE html>
<html lang="tr">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Home | E-Ticaret</title>
    <link href="/Eshopper/css/bootstrap.min.css" rel="stylesheet">
    <link href="/Eshopper/css/font-awesome.min.css" rel="stylesheet">
    <link href="/Eshopper/css/prettyPhoto.css" rel="stylesheet">
    <link href="/Eshopper/css/price-range.css" rel="stylesheet">
    <link href="/Eshopper/css/animate.css" rel="stylesheet">
	<link href="/Eshopper/css/main.css" rel="stylesheet">
	<link href="/Eshopper/css/responsive.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->       
    <link rel="shortcut icon" href="images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="/Eshopper/images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="/Eshopper/images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="/Eshopper/images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="/Eshopper/images/ico/apple-touch-icon-57-precomposed.png">
    <style type="text/css">
        .auto-style1 {
            border-style: none;
            border-color: inherit;
            border-width: 0;
            background: #FE980F;
            border-radius: 0;
            color: #FFFFFF;
            font-family: 'Roboto', sans-serif;
            font-size: 15px;
            margin-bottom: 10px;
            margin-left: 31px;
        }
    </style>
    </head><!--/head-->

<body>
	<form runat="server">

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
						<div class="navbar-header">
							<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
								<span class="sr-only">Toggle navigation</span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</button>
						</div>
						<div class="mainmenu pull-left">
							<ul class="nav navbar-nav collapse navbar-collapse">
								<li><a href="Default.aspx" class="active">Home</a></li>
			
								
							</ul>
						</div>
					</div>
					<div class="col-sm-3">
						<div class="search_box pull-right">
						     <asp:TextBox ID="TextBox1" runat="server" placeholder="Ara" CssClass="col-xs-offset-0" ></asp:TextBox>
                             
						</div>
						<asp:Button ID="Button1" runat="server" Text="Ara" CssClass="search_box" Height="30px" Width="70px" margin-lef="50px" OnClick="Button1_Click"  />
			</div>
				</div>
			</div>
		</div><!--/header-bottom-->
	</header><!--/header-->
	
	<section id="slider"><!--slider-->
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<div id="slider-carousel" class="carousel slide" data-ride="carousel">
						<ol class="carousel-indicators">
							<li data-target="#slider-carousel" data-slide-to="0" class="active"></li>
							<li data-target="#slider-carousel" data-slide-to="1"></li>
							<li data-target="#slider-carousel" data-slide-to="2"></li>
						</ol>
						
						<div class="carousel-inner">
							<div class="item active">
								<div class="col-sm-6">
									<h1><span>E</span>-TİCARET</h1>
								</div>
								<div class="col-sm-6">
									<img src="/Eshopper/images/home/laptop1.jpg" class="girl img-responsive" alt="" />
								</div>
							</div>
							<div class="item">
								<div class="col-sm-6">
									<h1><span>E</span>-TİCARET</h1>
								</div>
								<div class="col-sm-6">
									<img src="/Eshopper/images/home/laptop2.jpg" class="girl img-responsive" alt="" />
								</div>
							</div>
							
							<div class="item">
								<div class="col-sm-6">
									<h1><span>E</span>TİCARET</h1>
								</div>
								<div class="col-sm-6">
									<img src="/Eshopper/images/home/laptop3.jpg" class="girl img-responsive" alt="" />
								</div>
							</div>
							
						</div>
						
						<a href="#slider-carousel" class="left control-carousel hidden-xs" data-slide="prev">
							<i class="fa fa-angle-left"></i>
						</a>
						<a href="#slider-carousel" class="right control-carousel hidden-xs" data-slide="next">
							<i class="fa fa-angle-right"></i>
						</a>
					</div>
					
				</div>
			</div>
		</div>
	</section><!--/slider-->
	
	<section>
		<div class="container">
			<div class="row">
				<div class="col-sm-3">
					<div class="left-sidebar">
						<h2>Filtrele</h2>
					<div class="panel-group category-products" id="accordian"><!--category-productsr-->
								<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a data-toggle="collapse" data-parent="#accordian" href="#markaAd">
											<span class="badge pull-right"><i class="fa fa-plus"></i></span>
											Markalar
										</a>
									</h4>
								</div>

						
								<div id="markaAd" class="panel-collapse collapse">
									<div class="panel-body">
									<asp:Repeater ID="Repeater1" runat="server">

										<ItemTemplate>
											<div class="form-check" id="checkbox1">
												<asp:CheckBox ID="CheckBox1" Text='<%#Eval("MarkaAd") %>' runat="server" CssClass="form-check-input"  />
												</div>
										</ItemTemplate>
									</asp:Repeater>
									</div>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a data-toggle="collapse" data-parent="#accordian" href="#işletimSistemi">
											<span class="badge pull-right"><i class="fa fa-plus"></i></span>
											İşletim Sistemi
										</a>
									</h4>
								</div>
							</div>
						<div id="işletimSistemi" class="panel-collapse collapse">
									<div class="panel-body">
									<asp:Repeater ID="Repeater2" runat="server">

										<ItemTemplate>
											<div class="form-check">
												<asp:CheckBox ID="CheckBox2" Text='<%#Eval("isletimSistemi") %>' runat="server" CssClass="form-check-input"  />

												</div>
										</ItemTemplate>
									</asp:Repeater>
									</div>
								</div>
					
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a data-toggle="collapse" data-parent="#accordian" href="#işlemciTip">
											<span class="badge pull-right"><i class="fa fa-plus"></i></span>
											İşlemci Tipi
										</a>
									</h4>
								</div>
							</div>
						<div id="işlemciTip" class="panel-collapse collapse">
									<div class="panel-body">
									<asp:Repeater ID="Repeater3" runat="server">

										<ItemTemplate>
											<div class="form-check">
												<asp:CheckBox ID="CheckBox3"  runat="server" CssClass="form-check-input" Text='<%#Eval("islemciTip") %>' />
<%--												  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">--%>
												 <%-- <label class="form-check-label" for="flexCheckDefault">
												  </label>--%>
												</div>
										</ItemTemplate>
									</asp:Repeater>
									</div>
								</div>
					
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a data-toggle="collapse" data-parent="#accordian" href="#işlemciNesil">
											<span class="badge pull-right"><i class="fa fa-plus"></i></span>
											İşlemci Nesli
										</a>
									</h4>
								</div>
							</div>
						<div id="işlemciNesil" class="panel-collapse collapse">
									<div class="panel-body">
									<asp:Repeater ID="Repeater4" runat="server">

										<ItemTemplate>
											<div class="form-check">
													<asp:CheckBox ID="CheckBox4"  runat="server" CssClass="form-check-input" Text='<%#Eval("islemciNesil") %>' AutoPostBack="true"  />
<%--												  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">--%>
												 <%-- <label class="form-check-label" for="flexCheckDefault"><%#Eval("islemciNesil") %>
												  </label>--%>
												</div>
										</ItemTemplate>
									</asp:Repeater>
									</div>
								</div>
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a data-toggle="collapse" data-parent="#accordian" href="#ram">
											<span class="badge pull-right"><i class="fa fa-plus"></i></span>
											Ram
										</a>
									</h4>
								</div>
							</div>
						<div id="ram" class="panel-collapse collapse">
									<div class="panel-body">
									<asp:Repeater ID="Repeater5" runat="server">

										<ItemTemplate>
											<div class="form-check">
												<asp:CheckBox ID="CheckBox5"  runat="server" CssClass="form-check-input" Text='<%#Eval("ram") %>'  />
<%--												  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">--%>
												 <%-- <label class="form-check-label" for="flexCheckDefault"><%#Eval("ram") %>
												  </label>--%>
												</div>
										</ItemTemplate>
									</asp:Repeater>
									</div>
								</div>
								<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a data-toggle="collapse" data-parent="#accordian" href="#diskB">
											<span class="badge pull-right"><i class="fa fa-plus"></i></span>
											Disk Boyutu
										</a>
									</h4>
								</div>
							</div>
						<div id="diskB" class="panel-collapse collapse">
									<div class="panel-body">
									<asp:Repeater ID="Repeater6" runat="server">

										<ItemTemplate>
											<div class="form-check">
												<asp:CheckBox ID="CheckBox6"  runat="server" CssClass="form-check-input" Text='<%#Eval("diskB") %>' />
<%--												  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">--%>
												 <%-- <label class="form-check-label" for="flexCheckDefault"><%#Eval("diskB") %>
												  </label>--%>
												</div>
										</ItemTemplate>
									</asp:Repeater>
									</div>
								</div>
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a data-toggle="collapse" data-parent="#accordian" href="#diskT">
											<span class="badge pull-right"><i class="fa fa-plus"></i></span>
											Disk Tür
										</a>
									</h4>
								</div>
							</div>
						<div id="diskT" class="panel-collapse collapse">
									<div class="panel-body">
									<asp:Repeater ID="Repeater7" runat="server">

										<ItemTemplate>
											<div class="form-check">
													<asp:CheckBox ID="CheckBox7"  runat="server" CssClass="form-check-input"  Text='<%#Eval("diskT") %>' />
<%--												  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">--%>
									<%--			  <label class="form-check-label" for="flexCheckDefault"><%#Eval("diskT") %>
												  </label>--%>
												</div>
										</ItemTemplate>
									</asp:Repeater>
									</div>
								</div>
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a data-toggle="collapse" data-parent="#accordian" href="#ekranB">
											<span class="badge pull-right"><i class="fa fa-plus"></i></span>
											Ekran Boyutu
										</a>
									</h4>
								</div>
							</div>
						<div id="ekranB" class="panel-collapse collapse">
									<div class="panel-body">
									<asp:Repeater ID="Repeater8" runat="server">

										<ItemTemplate>
											<div class="form-check">
                                                 <asp:CheckBox ID="CheckBox8"  runat="server" CssClass="form-check-input"  Text='<%#Eval("ekranB") %>'/>
<%--												  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">--%>
<%--												  <label class="form-check-label" for="flexCheckDefault"><%#Eval("ekranB") %>--%>
												  </label>
												</div>
										</ItemTemplate>
									</asp:Repeater>
									</div>
								</div>
						<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
									<a data-toggle="collapse" data-parent="#accordian" href="#puan">
											<span class="badge pull-right"><i class="fa fa-plus"></i></span>
											Puan
										</a>
										</h4>
								</div>
							</div>
						<div id="puan" class="panel-collapse collapse">
									<div class="panel-body">
										
										<asp:CheckBox ID="CheckBox9" runat="server"  Text="0-3"/>
										<asp:CheckBox ID="CheckBox14" runat="server" Text="3-4" />
										<asp:CheckBox ID="CheckBox15" runat="server"  Text="4-5"/>
									</div>
								</div>
						
						<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
									<a data-toggle="collapse" data-parent="#accordian" href="#fiyat">
											<span class="badge pull-right"><i class="fa fa-plus"></i></span>
											Fiyat
										</a>
										</h4>
								</div>
							</div><br />
						<div id="fiyat" class="panel-collapse collapse">
									<div class="panel-body">
							           	<asp:CheckBox ID="CheckBox10" runat="server"  Text="0-10 000 TL"/><br />
										<asp:CheckBox ID="CheckBox11" runat="server" Text="10 000-20 000TL" /><br />
										<asp:CheckBox ID="CheckBox12" runat="server" Text="20 000 -30 000TL" /><br />
                                        <asp:CheckBox ID="CheckBox13" runat="server" Text="30 000 -40 000TL" /><br />


									</div>
								</div>

                                       <asp:Button ID="Button2" runat="server" Text="Uygula"  CssClass="auto-style1" Width="65px" OnClick="Button2_Click"/>
						</div>
						
						
						<!--/category-products-->
					
						
						<div class="price-range"><!--price-range-->
							<h2>Price Range</h2>
							<div class="well text-center">
								 <input type="text" class="span2" value="" data-slider-min="0" data-slider-max="600" data-slider-step="5" data-slider-value="[250,450]" id="sl2" ><br />
								 <b class="pull-left"> 0</b> <b class="pull-right">100000</b>
							</div>
						</div><!--/price-range-->
						
					</div>
				</div>
				
				<div class="col-sm-9 padding-right">
					<div class="features_items"><!--features_items-->
						<h2 class="title text-center">ÜRÜNLER</h2>
						<div>
				            <asp:Button ID="Button3"  Cssclass="cart"  runat="server" Text="En Yüksek Fiyat" OnClick="Button3_Click2" />
							<asp:Button ID="Button4"  Cssclass="cart"  runat="server" Text="En Düşük Fiyat" OnClick="Button4_Click" />
							<asp:Button ID="Button5"  Cssclass="cart"  runat="server" Text="En Yüksek Puan" OnClick="Button5_Click" />
							<asp:Button ID="Button6"  Cssclass="cart"   runat="server" Text="En Düşük Puan" OnClick="Button6_Click" />
				</div>
							
						
						<%--	<asp:Repeater ID="Repeater10" runat="server">
						<ItemTemplate>
						<div class="col-sm-4">
						
							<div class="product-image-wrapper">
								<div class="single-products">
					
									<div class="productinfo text-center" style="height=auto">
										<img src="<%# Eval("ModelResim") %>" alt="" />
										<a href="<%# Eval("UrunUrl") %>">	<%# Eval("UrunAd") %> </a>
										<h2><%# Eval("Fiyat") %></h2>
						            	<a href="<%# Eval("UrunUrl2") %>">	<%# Eval("UrunAd") %></a>
										<h2><%# Eval("Fiyat2") %></h2>
										<a href="<%# Eval("UrunUrl3") %>">	<%# Eval("UrunAd") %></a>
										<h2><%# Eval("Fiyat3") %></h2>
										<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
									</div>
							
								</div>
								
							</div>
							
						</div>
					</ItemTemplate>
								</asp:Repeater>
						--%>
									<%
                                        YazLab.UrunlerEntities2 db = new YazLab.UrunlerEntities2();
                                        var yuksekF=from mdl in db.tbl_modeller
                                                   join ur in db.tbl_urunler
                                                   on mdl.ModelId equals ur.ModelId
                                                   select new
                                                   {
                                                       ModelResim=mdl.ModelResim,
                                                       Fiyat=ur.Fiyat,
                                                       UrunAd=ur.UrunAd,
                                                       UrunUrl=ur.UrunUrl,
                                                       UrunId=ur.UrunId

                                                   };
                                        yuksekF = yuksekF.OrderBy(x => x.Fiyat);



									%>
							<asp:Repeater ID="Repeater9" runat="server"  ClientIdMode = "AutoId" OnItemCommand="Repeater9_ItemCommand1">
						<ItemTemplate>
						<div class="col-sm-4">
						
							<div class="product-image-wrapper">
								<div class="single-products">
					
									<div class="productinfo text-center" style="height:auto">
										<img src="<%# Eval("ModelResim") %>" alt="" />
									 	<h2><%# Eval("Fiyat")+"TL" %></h2>
										<h4><%#Eval("ModelPuan") %></h4>
                                        <a >  <%# Eval("UrunAd") %></a><br />
										<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a><br />
					<asp:LinkButton ID="LinkButton1" runat="server" CssClass="cart" Width="60px" Height="30px" CommandArgument='<%# Eval("UrunId") %>'  CommandName="göster" >İncele</asp:LinkButton>

									</div>
								</div>
								
							</div>
							
						</div>
					</ItemTemplate>
								</asp:Repeater>
						
					</div><!--features_items-->
					</div>

			</div>
		</div>
	</section>
	
	<footer id="footer"><!--Footer-->
		<div class="footer-top">
			<div class="container">
				<div class="row">
					<div class="col-sm-2">
						<div class="companyinfo">
						</div>
					</div>
					<div class="col-sm-7">
						<div class="col-sm-3">
							<div class="video-gallery text-center">
								
								>
							</div>
						</div>
						
						<div class="col-sm-3">
							<div class="video-gallery text-center">
								
							</div>
						</div>
						
						<div class="col-sm-3">
							<div class="video-gallery text-center">
								
								
							</div>
						</div>
						
						<div class="col-sm-3">
							<div class="video-gallery text-center">
								
								
							</div>
						</div>
					</div>
					<div class="col-sm-3">
						<div class="address">
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<div class="footer-widget">
			<div class="container">
				<div class="row">
					<div class="col-sm-2">
						<div class="single-widget">
							<ul class="nav nav-pills nav-stacked">
							
							</ul>
						</div>
					</div>
					<div class="col-sm-2">
						<div class="single-widget">
							<ul class="nav nav-pills nav-stacked">
								
							</ul>
						</div>
					</div>
					<div class="col-sm-2">
						<div class="single-widget">
							<ul class="nav nav-pills nav-stacked">
								</ul>
						</div>
					</div>
					<div class="col-sm-2">
						<div class="single-widget">
							<ul class="nav nav-pills nav-stacked">
								
							</ul>
						</div>
					</div>
					<div class="col-sm-3 col-sm-offset-1">
						<div class="single-widget">
							
							
						</div>
					</div>
					
				</div>
			</div>
		</div>
		
		<div class="footer-bottom">
			<div class="container">
				<div class="row">
					<p class="pull-left">Copyright © 2013 E-SHOPPER Inc. All rights reserved.</p>
					<p class="pull-right">Designed by <span><a target="_blank" href="http://www.themeum.com">Themeum</a></span></p>
				</div>
			</div>
		</div>
	
	</footer><!--/Footer-->
	

  
    <script src="/Eshopper/js/jquery.js"></script>
	<script src="/Eshopper/js/bootstrap.min.js"></script>
	<script src="/Eshopper/js/jquery.scrollUp.min.js"></script>
	<script src="/Eshopper/js/price-range.js"></script>
    <script src="/Eshopper/js/jquery.prettyPhoto.js"></script>
    <script src="~/Eshopper/js/main.js"></script>
					</form>

</body>
</html>