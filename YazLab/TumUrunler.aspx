<%@ Page Title="" Language="C#" MasterPageFile="~/Ana.Master" AutoEventWireup="true" CodeBehind="TumUrunler.aspx.cs" Inherits="YazLab.TumUrunler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

							<asp:Repeater ID="Repeater9" runat="server" OnItemCommand="Repeater9_ItemCommand">
						<ItemTemplate>
						<div class="col-sm-4">
						
							<div class="product-image-wrapper">
								<div class="single-products">
					
									<div class="productinfo text-center" style="height:auto">
										<img src="<%# Eval("ModelResim") %>" alt="" />
										<h2><%# Eval("Fiyat") %></h2>
									    <a href="ÜrünBilgiSayfası.aspx"  ><%# Eval("UrunAd") %></a>
					                    <asp:Button ID="Button2" runat="server" CommandArgument='<%# Eval("UrunId") %>' CommandName="bilgiler" Text="İncele" />
										<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
									</div>
							
								</div>
								
							</div>
							
						</div>
					</ItemTemplate>
								</asp:Repeater>







<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
