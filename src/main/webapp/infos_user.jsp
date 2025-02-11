<%-- 
    Document   : infos_user
    Created on : 10 oct. 2023, 10:48:43
    Author     : bouchaib.lemaire
--%>

<%@page import="fr.devavance.metier.beans.Users"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>



<%-- Déclaration des des beans qui sont utilisés --%>

<!DOCTYPE html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Informations des utilisateurs</title>
    </head>
    
        <jsp:useBean id="User" scope="request" class="fr.devavance.metier.beans.User"/>
        
        <div class="info_user">
            <p>Username: <jsp:getProperty name="User" property="userName"/> </p>
            <p>Password: <jsp:getProperty name="User" property="password"/></p>
            <p>Profil: <jsp:getProperty name="User" property="profil"/></p>
            <p>Authentiication: <jsp:getProperty name="User" property="auth"/></p>
        </div>
        
        <jsp:useBean id="Users" scope="session" class="fr.devavance.metier.beans.Users"/>
        
        <h1>Utilisateurs</h1>
        
        <table>
            <tr>
                <th>UserName</th>
                <th>Auth</th>
            </tr>
            <% Users users = (Users)request.getAttribute("Users");%>
            <% for (int i = 0; i < 4; i++) {out.println("<tr><td>" + users.get(i).getUserName() + "</td>" + "<td>" + users.get(i).getAuth() + "</td></tr>" );} %>
           
        </table>
     
        <div class="credentials">
            
            
        </div>
        
    

