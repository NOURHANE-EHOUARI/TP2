<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Info Client</title>
    <style>
        body { font-family: Arial, sans-serif; text-align: center; background-color: #f5f5f5; }
        h2 { color: #333; margin-top: 30px; }
        table { margin: 0 auto; border-collapse: collapse; width: 500px; }
        th { background-color: #f0f0f0; padding: 10px; border: 1px solid #ccc; }
        td { padding: 10px; border: 1px solid #ccc; }
        .success { color: green; font-weight: bold; }
        .btn-retour { 
            margin-top: 20px;
            display: inline-block;
            padding: 10px 20px;
            background-color: #3498db;
            color: white;
            text-decoration: none;
            border-radius: 5px;
        }
    </style>
</head>
<body>
    <p class="success">Client ajoutée avec succès</p>
    <h2>Affichage des données du client :</h2>
    <table>
        <tr>
            <th>Nom</th>
            <th>Prénom</th>
            <th>Téléphone</th>
            <th>E-mail</th>
        </tr>
        <tr>
            <td>${nom}</td>
            <td>${prenom}</td>
            <td>${telephone}</td>
            <td>${email}</td>
        </tr>
    </table>
    <br>
    <a href="Inscription.jsp" class="btn-retour">Retourne au formulaire d'ajout</a>
</body>
</html>