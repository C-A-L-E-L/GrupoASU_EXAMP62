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

import com.asu.datos.*;

@WebServlet("/actualizarImagen")
@MultipartConfig
public class ActualizarImagen extends HttpServlet{

	public ActualizarImagen() {
		// TODO Auto-generated constructor stub
	}
	
	// INGRESAR SOLO IMAGEN
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        InputStream inputStream = null;
        Conexion con=new Conexion();
        PreparedStatement pr=null;
        System.out.println("llegue");
        try {
            // Obtén el archivo seleccionado desde el campo de carga de archivos
            Part filePart = request.getPart("input");
            int id = Integer.parseInt(request.getParameter("cod"));
            String des = request.getParameter("descripcion");
        	String lugar = request.getParameter("lugar");
        	String fecha = request.getParameter("fecha");
        	
        	 System.out.println(id+des+lugar+fecha);
        	 
        	// Obtén el nombre del archivo
             String fileName = filePart.getSubmittedFileName();

            // Obtén el contenido del archivo como un InputStream
            inputStream = filePart.getInputStream();
            System.out.println("QWE"+inputStream);
            // Prepara la sentencia SQL para la inserción
            String sql="update tb_evento set descripcion_evento=?, lugar_evento=?, fecha_evento=?, foto_evento=? where id_evento=?;";
            
            // Lee el contenido de la imagen en un arreglo de bytes
            byte[] imageBytes = inputStream.readAllBytes();
            pr=con.getConexion().prepareStatement(sql);
            pr.setString(1, des);
            pr.setString(2, lugar);
            pr.setString(3, fecha);
            pr.setBytes(4, imageBytes);
            pr.setInt(5, id);
            System.out.println(imageBytes);
            System.out.println("ASD"+inputStream);
            if(pr.executeUpdate()==1)
			{
				System.out.println("Insercion Correcta");
			}
			else
			{
				System.out.println("Insercion Incorrecta");
			}
            System.out.println(imageBytes);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        
        response.sendRedirect(request.getContextPath() + "/modificarEvento.jsp");
    }
	
	/*
	 * public boolean ModificarEvento() { boolean agregado = false; Conexion con =
	 * new Conexion(); String sql = "update tb_evento set descripcion_evento='" +
	 * des + "', " + "lugar_evento='" + lugar + "', fecha_evento='"+ fecha +
	 * "' where id_evento= " + cod + ""; try { con.Ejecutar(sql); agregado = true; }
	 * catch(Exception e) { agregado = false; } return agregado; }
	 */

}
