
<%@ page import="eCommerce.Smartphone" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="eCommerce.Watches" %>
<%@ page import="eCommerce.Products" %>
<%@ page import="eCommerce.Database" %><%--
  Created by IntelliJ IDEA.
  User: adilb
  Date: 20.10.2020
  Time: 15:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Shop Homepage</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/shop-homepage.css" rel="stylesheet">

</head>

<body>

<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
        <a class="navbar-brand" href="myCart.jsp">My Cart</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="#">Home
                        <span class="sr-only">(current)</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="login.jsp">Log out</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<!-- Page Content -->


<form method="post" action="ShoppingCart" >
    <%
        ArrayList<Smartphone> smartphones = new ArrayList<>();
        Smartphone s1 = new Smartphone("Iphone 11", 450000, "https://object.pscloud.io/cms/cms/Photo/img_0_77_2121_0_320.webp");
        Smartphone s2 = new Smartphone("Iphone 10", 350000, "https://object.pscloud.io/cms/cms/Photo/img_0_77_1457_2_320.webp");
        Smartphone s3 = new Smartphone("Samsung s10", 300000, "https://object.pscloud.io/cms/cms/Photo/img_0_77_2426_1_320.webp");
        smartphones.add(s1);
        smartphones.add(s2);
        smartphones.add(s3);
    %>
    <div class="container">

        <div class="row">

            <div class="col-lg-3">

                <h1 class="my-4">Shop Name</h1>
                <div class="list-group">
                    <a href="#" class="list-group-item">SmartPhone</a>
                    <a href="#" class="list-group-item">Watches</a>
                </div>

            </div>
            <!-- /.col-lg-3 -->

            <div class="col-lg-9 mt-3">

                <div class="row">
                    <%
                        for(Smartphone s: smartphones) {
                    %>
                    <div class="col-lg-4 col-md-6 mb-4">
                        <div class="card h-100">
                            <a href="#"><img class="card-img-top" src="<%=s.getImage()%>" alt=""></a>
                            <div class="card-body">
                                <h4 class="card-title">
                                    <a href="#"><%=s.getName()%></a>
                                </h4>
                                <h5>$<%=s.getPrice()%></h5>
                                <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur!</p>
                            </div>
                            <div class="card-footer">
                                <input type="submit" name="add" value="Add to Cart" class="btn btn-primary btn-block" />
                            </div>
                        </div>
                    </div>
                    <%
                            if(request.getParameter("add") != null) {
                                Database.basket.add(s);
                            }

                        }
                    %>
                </div>
                <!-- /.row -->

                <div class="row">
                    <%
                        for(Smartphone s: smartphones) {
                    %>
                    <div class="col-lg-4 col-md-6 mb-4">
                        <div class="card h-100">
                            <a href="#"><img class="card-img-top" src="<%=s.getImage()%>" alt=""></a>
                            <div class="card-body">
                                <h4 class="card-title">
                                    <a href="#"><%=s.getName()%></a>
                                </h4>
                                <h5>$<%=s.getPrice()%></h5>
                                <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur!</p>
                            </div>
                            <div class="card-footer">
                                <input type="submit" name="add" value="<%=s.getName()%>" class="btn btn-primary btn-block" value="Add to Cart" />
                            </div>
                        </div>
                    </div>
                    <%
                            if(request.getParameter("add") == s.getName()) {
                                Database.basket.add(s);
                            }

                        }
                    %>
                </div>

            </div>
            <!-- /.col-lg-9 -->

        </div>
        <!-- /.row -->

    </div>
    <!-- /.container -->


</form>

<!-- Footer -->
<footer class="py-5 bg-dark">
    <div class="container">
        <p class="m-0 text-center text-white">Copyright &copy; Your Website 2020</p>
    </div>
    <!-- /.container -->
</footer>

<!-- Bootstrap core JavaScript -->

</body>

</html>

