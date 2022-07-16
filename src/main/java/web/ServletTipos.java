/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package web;

import datos.LibreriaDAO;
import entidades.Tipos;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "ServletTipos", urlPatterns = {"/ServletTipos"})
public class ServletTipos extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        processRequest(request, response);
        
    }
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        List<Tipos> tipos = new LibreriaDAO().listarTipos();
        request.setAttribute("tipos", tipos);
        
        for( Tipos listatipo :tipos) {
            System.out.println("Op 1 "+listatipo.getId());
        }
        request.getRequestDispatcher("/WEB-INF/paginas/operaciones/agregarProductos.jsp").forward(request, response);
//        response.sendRedirect("/WEB-INF/paginas/operaciones/agregarProductos.jsp");
        

//          for (int i = 0; i < tipos.size(); i++) {
//                System.out.println("Op 2 "+tipos.get(i).toString());
//            }
            
//        }
    }

}