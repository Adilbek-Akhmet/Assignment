<%@ page import="java.util.ArrayList" %>
<%@ page import="eCommerce.Products" %>
<%@ page import="eCommerce.Database" %>
<%@ page import="eCommerce.Smartphone" %>
<%--
  Created by IntelliJ IDEA.
  User: adilb
  Date: 20.10.2020
  Time: 23:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>My Cart</title>
</head>
<body>
<h1>He</h1>
<form action="ShoppingCart" method="post">
<input type="submit" name="submit" value="Buy">
</form>

<div class="col-lg-9 mt-3">

    <div class="row">
        <%

            for(Smartphone p: Database.basket) {
        %>
        <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
                <a href="#"><img class="card-img-top" src="<%=p.getImage()%>" alt=""></a>
                <div class="card-body">
                    <h4 class="card-title">
                        <a href="#"><%=p.getName()%></a>
                    </h4>
                    <h5>$<%=p.getPrice()%></h5>
                    <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur!</p>
                </div>
            </div>
        </div>
        <%
            }
        %>
    </div>
    <!-- /.row -->

</div>
<!-- /.col-lg-9 -->


<!-- /.row -->


<!-- /.container -->

</body>
</html>
