<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Ajouter une Réservation</title>
    <style>
        body { font-family: Arial, sans-serif; text-align: center; background-color: #f5f5f5; }
        h2 { color: #333; margin-top: 30px; }
        form { display: inline-block; text-align: left; width: 400px; }
        label { font-weight: bold; font-size: 13px; }
        input, select { width: 100%; padding: 8px; margin-bottom: 15px; box-sizing: border-box; border: 1px solid #ccc; }
        .btn-submit { width: 100%; padding: 10px; background-color: #2ecc71; color: white; border: none; cursor: pointer; font-size: 16px; }
        .error { color: red; font-weight: bold; }
        .header { background-color: #2ecc71; color: white; padding: 8px; margin-bottom: 20px; }
        footer { margin-top: 20px; color: #999; font-size: 12px; }
    </style>
</head>
<body>
    <% String erreur = (String) request.getAttribute("erreur");
       if (erreur != null) { %>
        <p class="error"><%= erreur %></p>
    <% } %>

    <h2>Ajouter une réservation :</h2>
    <form action="addRsv" method="post">
        <div class="header">Espace réservation</div>
        <label>Nom</label>
        <input type="text" name="nom" />
        <label>Prénom</label>
        <input type="text" name="prenom" />
        <label>Téléphone</label>
        <input type="text" name="telephone" />
        <label>E-mail</label>
        <input type="text" name="email" />
        <label>Type</label>
        <select name="type">
            <option value="single">chambre single</option>
            <option value="double">chambre double</option>
            <option value="suite">suite</option>
        </select>
        <label>Prix</label>
        <input type="number" name="prix" step="0.1" />
        <label>Vue</label>
        <select name="vue">
            <option value="piscine">piscine</option>
            <option value="mer">mer</option>
            <option value="jardin">jardin</option>
        </select>
        <br>
        <input type="submit" class="btn-submit" value="Ajouter Réservation" />
    </form>
    <footer>Application de gestion des réservations © 2026</footer>
</body>
</html>