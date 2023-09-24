<%-- 
    Document   : detail
    Created on : Sep 22, 2023, 10:26:55 PM
    Author     : HOANGDUC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="">
        <link rel="stylesheet" href="../../bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css"/>
        <!-- font awesome cnd link -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
        <!-- css link -->
        <link rel="stylesheet" href="../../static/css/detail.css">
        <title>Document</title>
    </head>
    <body>
        <!-- start header -->

        <div class="content">
            <!-- Sử dụng thẻ jsp:include để bao gồm header và footer -->
            <jsp:include page="../../general/jsp/header.jsp" />
            <!-- end header -->
            <div class="container bootdey">
<div class="col-md-12">
<section class="panel">
      <div class="panel-body">
          <div class="col-md-6">
              <div class="pro-img-details">
                  <img src="" alt="">
              </div>
          </div>
          <div class="col-md-6">
              <div class="product_meta">
                  <strong><span class="tagged_as">tên sản phẩm</span></strong
              </div>
              <div class="product_meta">
                  <span class="posted_in"> <strong>Chất liệu:</strong>   <a rel="tag" href="#"></a>.</span>
                  <span class="tagged_as"><strong>Kích thước</strong> <a rel="tag" href="#"</a>.</span>
              </div>
              <div class="m-bot15"> <strong>Price : </strong> <span class="amount-old">$544</span>  <span class="pro-price"> $300.00</span></div>
              <div class="form-group">
                  <label>Quantity</label>
                  <input type="quantiy" placeholder="1" class="form-control quantity">
              </div>
              <p>
                  <button class="btn btn-round btn-danger" type="button"><i class="fa fa-shopping-cart"></i> </button>
              </p>
          </div>
      </div>
  </section>
  </div>
  </div>
            <jsp:include page="../../general/jsp/footer.jsp" />

    </body>
</html>
