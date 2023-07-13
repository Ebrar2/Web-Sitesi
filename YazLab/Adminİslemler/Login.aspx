<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="YazLab.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
 <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors" />
    <meta name="generator" content="Hugo 0.104.2" />
    <title>Signin Template · Bootstrap v5.2</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/5.2/examples/sign-in/" />

    

<link href="/assets/dist/css/bootstrap.min.css" rel="stylesheet" />

    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }

      .b-example-divider {
        height: 3rem;
        background-color: rgba(0, 0, 0, .1);
        border: solid rgba(0, 0, 0, .15);
        border-width: 1px 0;
        box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em rgba(0, 0, 0, .15);
      }

      .b-example-vr {
        flex-shrink: 0;
        width: 1.5rem;
        height: 100vh;
      }

      .bi {
        vertical-align: -.125em;
        fill: currentColor;
      }

      .nav-scroller {
        position: relative;
        z-index: 2;
        height: 2.75rem;
        overflow-y: hidden;
      }

      .nav-scroller .nav {
        display: flex;
        flex-wrap: nowrap;
        padding-bottom: 1rem;
        margin-top: -1px;
        overflow-x: auto;
        text-align: center;
        white-space: nowrap;
        -webkit-overflow-scrolling: touch;
      }
    </style>

    
    <!-- Custom styles for this template -->
    <link href="/sign-in/signin.css" rel="stylesheet" />
  </head>
 <body class="text-center">
<main class="form-signin w-100 m-auto">
  <form runat="server">
		
     <a href="/Default.aspx"> HOME</a><br /><br />
    <img class="mb-4" src="/Eshopper/images/home/logo.png" alt="" width="72" height="57" />
    <h1 class="h3 mb-3 fw-normal">Lütfen Giriş Yapınız</h1>

    <div class="form-floating">
         <asp:TextBox ID="TextBox1" type="email" Cssclass="form-control" runat="server"  placeholder="name@gmail.com" ></asp:TextBox>
     
      <label for="floatingInput">Email Adresi</label>
    </div>
    <div class="form-floating">
      <asp:TextBox ID="TextBox2"   type="password"   Cssclass="form-control" runat="server"  placeholder="Şifre" ></asp:TextBox>
      <label for="floatingPassword">Şifre</label>
    </div>
    
      <asp:Button ID="Button1" runat="server" Text="Giriş" Cssclass="w-100 btn btn-lg btn-primary" style="background-color: #FF9900" OnClick="Button1_Click"/>
      <br />
      <asp:Label ID="Label1" runat="server" Text=""></asp:Label>

  </form>
</main>


    



    
    
</body>
</html>
