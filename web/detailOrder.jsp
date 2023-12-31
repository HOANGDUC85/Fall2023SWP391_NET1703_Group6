    <%-- 
    Document   : order
    Created on : Oct 18, 2023, 2:10:07 AM
    Author     : HOANGDUC
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@page import="model.CageMaterial"%>
<%@page import="model.OrderDetail"%>
<%@page import="java.util.List"%>
<%@page import="model.Order"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="static/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.0.2/css/bootstrap.min.css">
        <!-- font awesome cnd link -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="static/css/orderDetail.css"/>
    </head>
    <body>
        <jsp:include page="header.jsp" />        
        <% List<Order> listOrder = (List<Order>) request.getAttribute("listOrder"); %>
        <% for (Order o : listOrder) {
        %>
        <div class="container maindetail ">
            <h3><strong>Chi tiết đơn hàng</strong> </h3>
            <p>Ngày đặt hàng: <%=o.getOrderDate()%></p>
            <div class="styles__StyledGroupSection-sc-ri73gr-0 cRRvpz">
                <div class="styles__StyledSection-sc-ri73gr-1 gQjSfs">
                    <div class="title">Thông tin người nhận</div>
                    <div class="content">
                        <p class="name">${sessionScope.LOGIN_USER.fullName}</p>
                        <p class="address"><span>Địa chỉ: </span><%=o.getAddress()%></p>
                        <p class="phone"><span>Điện thoại: </span><%=o.getPhone()%></p>
                    </div>
                </div>
                <div class="styles__StyledSection-sc-ri73gr-1 gQjSfs">
                    <div class="title">Hình thức giao hàng</div>
                    <div class="content">
                        <span> Giao Tiết Kiệm</span></p>
                        <p>Được giao bởi BirdCage Shop</p>
                        <p>Phí khác (Bao gồm phí vận chuyển): <fmt:formatNumber value="<%=o.getShipCost()%>" pattern="###,###"/> VNĐ</p>
                    </div>
                </div>

            </div>
            </br>
            </br>
        </tr>
        <% }%>
        <% List<OrderDetail> ls = (List<OrderDetail>) request.getAttribute("ls"); %>
        <table class=" Nbknf ">
            <thead>
                <tr>
                    <th>Sản phẩm</th>
                    <th>Giá</th>
                    <th>Số lượng</th>
                    <th>Giảm giá</th>
                    <th>Thành tiền</th>
                    <th>Chi tiết</th>
                </tr>
            </thead>
            <tbody>
                <% for (OrderDetail o : ls) {
                        if (o.getCageName().equals("Lồng yêu cầu")) {
                %> 
                <tr>
                    <td>
                        <div class="product-item"><img
                                src="https://png.pngtree.com/png-vector/20230822/ourmid/pngtree-outline-birdcage-flat-style-vector-icon-png-image_6843199.png"
                                alt="">
                            <div class="product-info"><a class="product-name"
                                                         href=""><%=o.getCageName()%></a>
                            </div>
                        </div>
                    </td>
                    <td class="price "><fmt:formatNumber value="<%=(o.getPrice() - 100000 * o.getQuantity()) / o.getQuantity()%>" pattern="###,###"/> VNĐ</td>
                    <td class="quantity"><%=o.getQuantity()%></td>
                    <td class="discount-amount">0 VNĐ</td>
                    <td class="raw-total"><fmt:formatNumber value="<%=o.getPrice() - 100000 * o.getQuantity()%>" pattern="###,###"/> VNĐ</td>
                </tr>

            </tbody>
            <% } else {%>
            <tbody>
                <tr>
                    <td>
                        <div class="product-item"><img
                                src="<%= o.getImageUrl()%>"
                                alt="">
                            <div class="product-info"><a class="product-name"
                                                         href=""><%=o.getCageName()%></a>
                            </div>
                        </div>
                    </td>
                    <td class="price "><fmt:formatNumber value="<%=o.getPrice()%>" pattern="###,###"/> VNĐ</td>
                    <td class="quantity"><%=o.getQuantity()%></td>
                    <td class="discount-amount">0 VNĐ</td>
                    <td class="raw-total"><fmt:formatNumber value="<%=o.getPrice() * o.getQuantity()%>" pattern="###,###"/> VNĐ</td>
                    <td><a href="ProductDetail?id=<%=o.getCageID()%>"><i class="fa-solid fa-circle-info" style="color: red;"></i></a></td>
                </tr>

            </tbody>
            <%    }
                    }%>


            <% for (Order o : listOrder) {
            %>
            <tfoot>
                <% for (OrderDetail d : ls) {
                        if (d.getCageName().equals("Lồng yêu cầu")) {
                %>
                <tr>
                    <td colspan="4"><span>Thành tiền</span></td>
                    <td><fmt:formatNumber value="<%=d.getPrice() - 100000 * d.getQuantity()%>" pattern="###,###"/> VNĐ</td>
                </tr>
                <% } else {%>
                <tr>
                    <td colspan="4"><span>Thành tiền</span></td>
                    <td><fmt:formatNumber value="<%=d.getPrice() * d.getQuantity()%>" pattern="###,###"/> VNĐ</td>
                </tr>
                <% }
                        }%>
                <tr>
                    <td colspan="4"><span>Phí khác</span></td>
                    <td><fmt:formatNumber value="<%=o.getShipCost()%>" pattern="###,###"/> VNĐ</td>
                </tr>

                <tr>
                    <td colspan="4"><span>Tổng cộng</span></td>
                    <td><span class="sum"><fmt:formatNumber value="<%=o.getTotal()%>" pattern="###,###"/> VNĐ</span></td>
                </tr>

            </tfoot>
            <% } %>
        </table></br>

    </div>
    <div class="container">
        <% for (OrderDetail o : ls) {
                if (o.getCageName().equals("Lồng yêu cầu")) {
        %>
        <% List<CageMaterial> lm = (List<CageMaterial>) request.getAttribute("lm"); %>
        <div class="mat-tab">
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th class="text-center">Tên nguyên liệu</th>
                        <th class="text-center">Số lượng</th>
                    </tr>
                </thead>
                <tbody>
                    <% for (CageMaterial cm : lm) {
                    %>
                    <tr>
                        <td class="text-center"><%=cm.getMaterialName()%></td>
                        <td class="text-center"><%=cm.getQuantity()%></td>
                    </tr>
                    <% }%>
                </tbody>
            </table>
        </div>
        <% }
            }%>
    </div>

    <jsp:include page="footer.jsp" />
</body>
</html>