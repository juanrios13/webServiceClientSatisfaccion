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
            
     
            <form action="encuesta.jsp" method="post" style="margin:0 auto">
                
               <div class="container" style="margin-bottom: 10px; display: inline-block">
                    <label>Radicado: </label>
               </div>    
               <div class="container" style="margin-bottom: 10px; display: inline-block">     
                    <input type="number" name="radicado" id="radicado">
                </div>

                

                <div class="container" style="margin-bottom: 10px;display: inline-block">
                    <input type="submit" value="Enviar"/>   
                </div>
            </form>
        </div>       
    </body>
</html>
