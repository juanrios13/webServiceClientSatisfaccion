<%-- 
    Created on : 10/10/2019, 01:59:00 PM
    Author     : jergf
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formulario</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
           
        <style>
            .container{
                display: grid;
                grid-template-columns: 50% 50%;
            }
            
            
        </style>
    
    
    </head>
    <body>
        <div class="banner" style="height: 160px">
            <image src="images/alc.png" style="float:left; height: 100px; width:213px "/>
            <h1 style="text-align:center ; font-style: italic ; margin-top: 30px">Formulario de satisfaccion</h1>
           
        </div>
        <div style="text-align: center">
            
            <%-- start web service invocation --%><hr/>
    <%
    try {
	formulario.Database_Service service = new formulario.Database_Service();
	formulario.Database port = service.getDatabasePort();
	 // TODO initialize WS operation arguments here
	java.lang.String radicado = request.getParameter("radicado");
	// TODO process result here
	java.util.List<java.lang.String> result = port.read(radicado);
        if(!result.isEmpty()){
            
    
    %>
        <div class="container" style="margin-bottom: 10px;">
                    <label>Radicado: </label>
                    <p id="radicado" ><%out.println(result.get(0)); %></p>
                </div>

                <div class="container" style="margin-bottom: 10px">
                    <label>Cedula: </label>
                   <p id="cedula"><%out.println(result.get(1)); %></p>
                </div>
                
                <div class="container" style="margin-bottom: 10px">
                    <label>Correo:</label>
                   <p id="correo"><%out.println(result.get(2)); %></p>
                </div>

                <div class="container" style="margin-bottom: 10px">
                    <label>Nombre completo: </label>
                    <p id="nombre"><%out.println(result.get(3)); %></p>
                </div>
            
                 <div class="container" style="margin-bottom: 10px">
                    <label>Dependencia: </label>
                     <p id="dependencia"><%out.println(result.get(4)); %></p>
                </div>
        
        <form action="CRUDJava.jsp" method="post" style="margin:0 auto">
               
            <input type="hidden" name="radicado" value="<%out.print(result.get(0));%>" />

                <div class="container" style="margin-bottom: 10px">
                    <label>Nivel de satisfacción: </label>
                    <div>
                        <input type="radio" name="lvlSatisfaccion" value="1"/><label>1</label>
                        <input type="radio" name="lvlSatisfaccion" value="2"/><label>2</label>
                        <input type="radio" name="lvlSatisfaccion" value="3"/><label>3</label>
                        <input type="radio" name="lvlSatisfaccion" value="4"/><label>4</label>
                        <input type="radio" name="lvlSatisfaccion" value="5" checked/><label>5</label>
                    </div>
                </div>

                <div class="container" style="margin-bottom: 10px">
                    <label>Utilizaria nuevamente los servicios </label>
                    <div>
                        <input type="radio" name="repServicio" value="si" checked/><label>Sí</label>
                        <input type="radio" name="repServicio" value="no"/><label>No</label>
                    </div>
                </div>

                <div class="container" style="margin-bottom: 10px;display: inline-block">
                    <input type="submit" value="Enviar"/>   
                </div>
            </form>
        </div>

        
        <%
        }else{

        out.println("No hay datos para este radicado, por favor verifique el numero");
}
        
        
    } catch (Exception ex) {
	// TODO handle custom exceptions here
    }
    %>
    <%-- end web service invocation --%><hr/>

        
        
    </body>
</html>
