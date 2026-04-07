package com.ensah.servlet;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/addRsv")
public class creerReservation extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");

        String nom = request.getParameter("nom");
        String prenom = request.getParameter("prenom");
        String telephone = request.getParameter("telephone");
        String email = request.getParameter("email");
        String type = request.getParameter("type");
        String prix = request.getParameter("prix");
        String vue = request.getParameter("vue");

        if (nom.isEmpty() || prenom.isEmpty() || telephone.isEmpty() || 
            email.isEmpty() || prix.isEmpty()) {
            request.setAttribute("erreur", "Ooops, erreur !!! Vous devez remplir tous les champs");
            request.getRequestDispatcher("Reservation.jsp").forward(request, response);
            return;
        }

        request.setAttribute("nom", nom);
        request.setAttribute("prenom", prenom);
        request.setAttribute("telephone", telephone);
        request.setAttribute("email", email);
        request.setAttribute("type", type);
        request.setAttribute("prix", prix);
        request.setAttribute("vue", vue);

        request.getRequestDispatcher("infoReservation.jsp").forward(request, response);
    }
}