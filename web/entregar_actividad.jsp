<%@page import="modeloVO.ActividadEntregadaVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        <meta name="description" content="">
        <link rel="stylesheet" href="css/style.css" type="text/css" media="screen"/>
        <link rel="manifest" href="site.webmanifest">
        <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">


        <!-- CSS here -->
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
        <link rel="stylesheet" href="assets/css/slicknav.css">
        <link rel="stylesheet" href="assets/css/progressbar_barfiller.css">
        <link rel="stylesheet" href="assets/css/gijgo.css">
        <link rel="stylesheet" href="assets/css/animate.min.css">
        <link rel="stylesheet" href="assets/css/animated-headline.css">
        <link rel="stylesheet" href="assets/css/magnific-popup.css">
        <link rel="stylesheet" href="assets/css/fontawesome-all.min.css">
        <link rel="stylesheet" href="assets/css/themify-icons.css">
        <link rel="stylesheet" href="assets/css/slick.css">
        <link rel="stylesheet" href="assets/css/nice-select.css">
        <link rel="stylesheet" href="assets/css/style.css">
    </head>
    <body>
        <header>
            <!-- Header Start -->
            <div class="header-area">
                <div class="main-header ">
                    <div class="header-top d-none d-sm-block">
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-xl-12">
                                    <div class="d-flex justify-content-between flex-wrap align-items-center">
                                        <div class="header-info-left">
                                            <ul>     
                                                <li><i class="fas fa-map-marker-alt"></i> 57/A, Green Lane, NYC</li>
                                                <li><i class="fas fa-phone-alt"></i> +10 (78) 367 3692</li>
                                            </ul>
                                        </div>
                                        <div class="header-info-right">
                                            <ul class="header-social">    
                                                <li><a href="#"><i class="fab fa-facebook"></i></a></li>
                                                <li><a href="#"><i class="fab fa-twitter"></i></a></li>
                                                <li><a href="#"><i class="fab fa-linkedin-in"></i></a></li>
                                                <li> <a href="#"><i class="fab fa-instagram"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="header-bottom  header-sticky">
                        <div class="container-fluid">
                            <div class="row align-items-center">
                                <!-- Logo -->
                                <div class="col-xl-2 col-lg-2">
                                    <div class="logo">
                                        <a href="index.jsp"><img src="assets/img/logo/logo.png" alt=""></a>
                                    </div>
                                </div>
                                <div class="col-xl-10 col-lg-10">
                                    <!-- Main-menu -->
                                    <div class="main-menu f-right d-none d-lg-block">
                                        <nav> 
                                            <ul id="navigation">    
                                                <a href="estudiante.jsp"><h1>Estudiante</h1></a>
                                                <li><a href="index.html"></a></li>
                                                <li><a href="#">Actividades</a>
                                                    <ul class="submenu">
                                                        <li><a href="entregar_actividad.jsp">Entregar actividades</a></li>
                                                        <li><a href="Actividades_pendientes_estudiante.jsp">Actividades pendientes</a></li>
                                                        <li><a href="listar_actividades_entregadas.jsp">Actividades entregadas</a></li>

                                                    </ul>
                                                </li>
                                                <li><a href="#">Notas</a>
                                                    <ul class="submenu">
                                                        <li><a href="#">Ver notas</a></li>
                                                    </ul>
                                                </li>
                                                <li><a href="#">Mensajes</a>
                                                    <ul class="submenu">
                                                        <li><a href="#">Redactar mensaje</a></li>
                                                        <li><a href="#">Bandeja de entrada</a></li>
                                                        <li><a href="#">Bandeja de salida</a></li>
                                                    </ul>
                                                </li>    
                                            </ul>
                                        </nav>
                                    </div>
                                </div> 
                                <!-- Mobile Menu -->
                                <div class="col-12">
                                    <div class="mobile_menu d-block d-lg-none"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Header End -->
        </header>
        <section class="container-fluid">
            <div class="row">
                <div class="col-xl-12">
                    <div class="registrodocente">
                        <h1>Entregar actividad</h1>                                          
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-xl-4">

                </div>
                <div class="col-xl-4">

                    <div class="datospersonales">


                        <%
                            Integer dato = 0;
                            try {
                                ActividadEntregadaVO actividadentregada = (ActividadEntregadaVO) request.getAttribute("row");
                                dato = actividadentregada.getActividadentregadaid();
                            } catch (Exception ex) {
                                System.out.println(ex.getMessage());
                            }
                            boolean icono = false;
                            try {
                                icono = (Boolean) request.getAttribute("row2");
                            } catch (Exception ex) {
                                System.out.println(ex.getMessage());
                            }
                        %>

                        <form name="formpdf" action="ActividadEntregada" method="post" enctype="multipart/form-data">                                
                            <div class="">
                                <!--<table class="tbcargaractividad">-->
                                <thead>
                                    <tr>
                                        <!--<th>Nombre</th>
                                        <th>Campo</th-->
                                    </tr>
                                </thead>
                                <tfoot>
                                    <tr>
                                        <td colspan="2">
                                        </td>
                                    </tr>
                                </tfoot>

                                <!--                                            <tr>
                                                                                <td>-->
                                <label for="id">Nombre del archivo: </label><br>
                                <!--                                                </td>  
                                                                                <td>-->
                                <input type="text" name="txtname" value="<c:out value="${row.actividadentregadanombre}" />" /><br><br>
                                <!--                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td>-->
                                <label for="id">Descripcion: </label><br>
                                <!--                                                </td>  
                                                                                <td>-->
                                <input type="text" name="textdescripcion" value="<c:out value="${row.actividadentregadadescripcion}" />" /><br><br>
                                <!--                                                </td>
                                                                            </tr>-->
                                <!--                                            <tr class="alt">-->
                                <!--                                                <td>-->
                                <!--                                                    <label for="id">Seleccionar PDF: *</label>-->
                                <%
                                    if (icono) {
                                %>
                                <a href="actividadcargada?id=<%out.print(dato); %>" target="_blank"> Ver Pdf</a><br><br>
                                <%
                                    } else {
//                                                            out.print("No hay Pdf");
                                    }
                                %>
                                <!--                                                </td>  
                                                                                <td>-->
                                <input type="file" name="fichero" value="" class="btn1"/><br><br>
                                <!--                                                </td>
                                                                            </tr>
                                                                            <tr>
                                <label for="id">Estado: </label><br>
                                <!--                                                </td>  
                                                                                <td>-->
                                <input type="text" name="textestado" value="<c:out value="${row.actividadentregadaestado}" />" /><br><br>
                                <!--                                                </td>
                                                                            </tr>
                                                                                <td>-->
                                                                                   
                                <label for="id">Estudiante:</label><br>
                                <!--                                                </td>  
                                                                                <td>-->
                                <input type="text" name="textestudianteid" value="<c:out value="${row.estudianteid}" />" /><br><br>
                                <!--                                                </td>
                                                                            </tr>
                                                                            <tr>-->
                                                                                <td>
                                
                                <td colspan="2" style="text-align: center"><input type="submit" value="Enviar Archivo" name="submit" id="btn" class="btn"/></td>
                                <!--                                            </tr>-->

                                <!--</table>-->
                            </div>
                        </form>
                        <a href="Pagina1.jsp">Regresar</a>

                    </div>
                </div>
                <div class="col-xl-4">

                </div>

            </div>


        </section>
        <footer>
            <div class="footer-wrappper footer-bg">
                <!-- Footer Start-->
                <div class="footer-area footer-padding">
                    <div class="container">
                        <div class="row justify-content-between">
                            <div class="col-xl-5 col-lg-6 col-md-6 col-sm-8">
                                <div class="single-footer-caption mb-50">
                                    <div class="single-footer-caption mb-30">
                                        <!-- logo -->
                                        <div class="footer-logo mb-25">
                                            <a href="index.html"><img src="assets/img/logo/logo2_footer.png" alt=""></a>
                                        </div>
                                        <div class="footer-tittle">
                                            <div class="footer-pera">
                                                <p>Users and submit their own items. You can create different packages and by connecting with your PayPal or Stripe account charge users for registration.</p>
                                            </div>
                                        </div>
                                        <!-- social -->
                                        <div class="footer-social">
                                            <a href="#"><i class="fab fa-twitter"></i></a>
                                            <a href="https://bit.ly/sai4ull"><i class="fab fa-facebook-f"></i></a>
                                            <a href="#"><i class="fab fa-pinterest-p"></i></a>
                                            <a href="#"><i class="fab fa-linkedin-in"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-2 col-lg-3 col-md-3 col-sm-4">
                                <div class="single-footer-caption mb-50">
                                    <div class="footer-tittle">
                                        <h4>Quick Links </h4>
                                        <ul>
                                            <li><a href="#">Classes</a></li>
                                            <li><a href="#">Join with us</a></li>
                                            <li><a href="#">About</a></li>
                                            <li><a href="#">Blog</a></li>
                                            <li><a href="#">Events</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-2 col-lg-3 col-md-3 col-sm-6">
                                <div class="single-footer-caption mb-50">
                                    <div class="footer-tittle">
                                        <h4>About Us</h4>
                                        <ul>
                                            <li><a href="#">Our Team</a></li>
                                            <li><a href="#">Privacy Policy</a></li>
                                            <li><a href="#">Testimonial</a></li>
                                            <li><a href="#">Programing</a></li>
                                            <li><a href="#">User Stories</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- footer-bottom area -->
                <div class="footer-bottom-area">
                    <div class="container">
                        <div class="footer-border">
                            <div class="row d-flex align-items-center">
                                <div class="col-xl-12 ">
                                    <div class="footer-copy-right text-center">
                                        <p>Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart color-danger" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank" rel="nofollow noopener">Colorlib</a>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Footer End-->
            </div>
        </footer>
    </body>
</html>