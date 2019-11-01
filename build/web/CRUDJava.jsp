<%-- 
    Document   : CRUDJava
    Created on : 10/10/2019, 03:58:49 PM
    Author     : jergf
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Envio</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    </head>
    <body>
        
        <div class="banner" style="height: 160px">
            <image src="images/alc.png" style="float:left; height: 100px; width:213px "/>
            <h1 style="text-align:center ; font-style: italic ; margin-top: 30px">Formulario de satisfaccion</h1>
           
        </div>
        
        
           <%-- start web service invocation --%><hr/>
    <%
    try {
	formulario.Database_Service service = new formulario.Database_Service();
	formulario.Database port = service.getDatabasePort();
	 // TODO initialize WS operation arguments here
	java.lang.String documento = request.getParameter("radicado");
	java.lang.String lvlServicio = request.getParameter("lvlSatisfaccion");
	java.lang.String repServicio = request.getParameter("repServicio");
	// TODO process result here
        
	java.lang.String result = port.create(documento,lvlServicio, repServicio);
	out.println(result);
    } catch (Exception ex) {
	// TODO handle custom exceptions here
    }
    %>
    <%-- end web service invocation --%><hr/>

    </body>
</html>
