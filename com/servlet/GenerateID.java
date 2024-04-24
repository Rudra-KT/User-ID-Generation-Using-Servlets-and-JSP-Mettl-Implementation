package com.servlet;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class GenerateID extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String pinString = request.getParameter("pin");
        int pin = Integer.parseInt(pinString);
        int number = Integer.parseInt(request.getParameter("number"));

        // Using the new method to generate the user ID
        String id = generateID(firstName, lastName, pin, number);

        request.setAttribute("id", id);
        request.getRequestDispatcher("/result.jsp").forward(request, response);
    }

    // New method for generating user ID
    public String generateID(String firstName, String lastName, int pin, int number) {
        String longerName, shorterName;
        StringBuilder userId = new StringBuilder();

        if (firstName.length() > lastName.length()) {
            longerName = firstName;
            shorterName = lastName;
        } else if (firstName.length() < lastName.length()) {
            longerName = lastName;
            shorterName = firstName;
        } else {
            if (firstName.compareTo(lastName) < 1) {
                longerName = lastName;
                shorterName = firstName;
            } else {
                longerName = firstName;
                shorterName = lastName;
            }
        }

        userId.append(shorterName.charAt(shorterName.length() - 1));
        userId.append(longerName);

        for (int i = 0; i < userId.length(); i++) {
            char c = userId.charAt(i);
            if (Character.isUpperCase(c))
                userId.setCharAt(i, Character.toLowerCase(c));
            else
                userId.setCharAt(i, Character.toUpperCase(c));
        }

        String pinString = String.valueOf(pin);
        userId.append(pinString.charAt(number - 1));
        userId.append(pinString.charAt(pinString.length() - number));

        return userId.toString();
    }
}
