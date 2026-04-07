<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Application de gestion</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            background-color: #f5f5f5;
        }
        h1 {
            font-size: 48px;
            margin-top: 80px;
            color: #333;
        }
        .btn {
            display: inline-block;
            width: 300px;
            padding: 20px;
            margin: 20px;
            font-size: 20px;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            text-decoration: none;
        }
        .btn-client {
            background-color: #3498db;
        }
        .btn-reservation {
            background-color: #2ecc71;
        }
    </style>
</head>
<body>
    <h1>Bienvenue dans l'application de gestion</h1>
    <br><br>
    <a href="Inscription.jsp" class="btn btn-client">Ajouter un Client</a>
    <br>
    <a href="Reservation.jsp" class="btn btn-reservation">Ajouter une Réservation</a>
</body>
</html>