<%-- 
    Document   : pantallaLogin
    Created on : 08-oct-2016, 20:22:52
    Author     : Gerard
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="login" scope="request" class="entidad.loginBean" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formulario de Login</title>
    </head>
    <body>
        <% if (request.getParameter("nombre") == null
                    || request.getParameter("contrasena") == null) { %>
        <form method="POST" action="pantallaLogin.jsp">
            <h1>Formulario de login de usuarios</h1> <br>
            Nombre de usuario*:<input type="text" name="nombre" value="" size="26" /> <br><br>
            Clave de acceso*:<input type="password" name="contrasena" value="" size="26" /> <br><br>
            Recordar datos de acceso: <input type="checkbox" name="recordar" value="ON" /> <br><br>
            Los campos marcados con un asterisco deben rellenarse de forma obligatoria <br><br>
            <input type="submit" value="Enviar consulta" name="enviar" />
            <input type="reset" value="Restablecer" name="restablecer" />

        </form>
        <% } else {
                String usuario, pass;
                usuario = request.getParameter("nombre");
                pass = request.getParameter("contrasena");
                if (login.getUser().equals(request.getParameter("nombre"))
                    && login.getPassword().equals(request.getParameter("contrasena"))){
            %>
                <jsp:forward page="pantallaAcceso.jsp" />
                <% }else{%>
                    Error en la identificación. Inténtelo de nuevo. 
                  <meta http-equiv="Refresh" CONTENT="10;url=pantallaLogin.jsp">
<%}
        
        }%>
    </body>
</html>
