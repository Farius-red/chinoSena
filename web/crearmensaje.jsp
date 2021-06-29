
<%@page import="java.util.ArrayList"%>
<%@page import="modeloDAO.MensajesDAO"%>
<%@page import="modeloVO.MensajesVO"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include  file="Componentes/head.jsp" %>
    </head>
    <body>
        <%@include file="Componentes/header.jsp" %>
        

        
  <div class="container  mt-4 d-flex justify-content-around">
      
      
    <div class="row">
        <div class="col-12">
        <div style="color: #007180;">
                        <%
                            if (request.getAttribute("mensaje") != null) {
                        %>
                        ${mensaje}
                        <%} else {%>
                        ${mensaje}
                        <%}%>
                    </div>
                    </div>
        <div class="col-md-6 col-lg-8">


            <form method="post" action="Mensajes">
                <div class="card " style=" width: 100%; height: 60%">
                    <div class="card-header bg-dark">
                        <h4 class="text-center text-bold text-white">Crear nuevo
                            mensaje
                        </h4>
                    </div>
                    <div class="card-body">
                        
                        <div class="form-group form-row">
                            <div class="col-md-6">
                            <label class="text-bold font-italic">Destino</label>
                            <input 
                                type="text"  placeholder="Escriba correo destino" class="form-control" name="receptor"
                                required />
                            </div>
                            
                             <div class="col-md-6">
                                 <label class="text-bold font-italic">Asunto</label>
                            <input 
                                type="text" class="form-control" placeholder="Escriba un asunto" name="asunto"
                                required />
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="text-bold font-italic">mensaje</label>
                            <textarea 
                                class="form-control" placeholder="Escriba su mensaje aqui" name="contenido"
                                rows="3" required></textarea>
                        </div>
                    </div>
                    <div class="card-footer align-content-center">
                        <button 
                            type="submit" class="btn btn-group-sm align-center">Crear
                            mensaje</button>
                    </div>
                </div>
            </form>





        </div>
        <div class="col-md-6 col-lg-4 mt-4">
            <table class="table table-light table-hover shadow-lg p-3 mb-5
                bg-white rounded">
                <thead class="thead-dark">
                    <tr>
                        <th scope="col">id</th>
                        <th scope="col">mensaje</th>
                         <th scope="col">destinatario</th>

                    </tr>
                </thead>
                <tbody class="">
                    <%
                                        
                                        MensajesVO mensVO = new MensajesVO();
                                        MensajesDAO mensajesDAO = new MensajesDAO();
                                        ArrayList<MensajesVO> listaMensajes = mensajesDAO.listaMensajes();
                                        for (int i = 0; i < listaMensajes.size(); i++) {
                                            mensVO = listaMensajes.get(i);
                           %>
                    <tr >
                        <th><%=mensVO.getId_mensaje()%></th>
                        <th class="font-weight-normal"><%=mensVO.getMensaje()%></th>
                        <th class="font-weight-normal"><%=mensVO.getDestinatario()%></th>
                    </tr>
                      <% }%>
                </tbody>
            </table>
        </div>
    </div>
</div>
        
        <%@include file="Componentes/footer.jsp" %>
        <%@include file="Componentes/scripts.jsp" %>
    </body>
</html>