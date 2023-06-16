package com.asu.eventos;

import java.io.IOException;
import java.io.InputStream;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.asu.datos.Conexion;

@WebServlet("/IngresoPostulant")
@MultipartConfig
public class IngresoPostulant extends HttpServlet{

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        InputStream hojavida = null;
        Conexion con=new Conexion();
        PreparedStatement pr=null;

        try {
            // Obtén el archivo seleccionado desde el campo de carga de archivos
            Part filePart = request.getPart("hojavida");
            String nombreApellido = request.getParameter("nombreApellido");
        	int edad  = Integer.parseInt(request.getParameter("edad"));
        	String carrera = request.getParameter("carrera");
        	String email = request.getParameter("email");

            // Obtén el nombre del archivo
            String fileName = filePart.getSubmittedFileName();

            // Obtén el contenido del archivo como un InputStream
            hojavida = filePart.getInputStream();

            // Prepara la sentencia SQL para la inserción
            String sql = "INSERT INTO tb_postulantes (nombre_post,edad_post,carrera_post,estado_post,email_post,hojavida_post)"
            		+" VALUES(?,?,?,?,?,?);";
            pr=con.getConexion().prepareStatement(sql);

			pr.setString(1, nombreApellido);
			pr.setInt(2, edad); 
			pr.setString(3, carrera);
			pr.setString(4, "Pendiente");
			pr.setString(5, email);
			pr.setBinaryStream(6, hojavida);
            
            if(pr.executeUpdate()==1)
			{
				System.out.println("Insercion Correcta");
			}
			else
			{
				System.out.println("Insercion Incorrecta");
			}
        } catch (SQLException e) {
            e.printStackTrace();
        }
        response.sendRedirect(request.getContextPath() + "/postulante.jsp");
    }

}
