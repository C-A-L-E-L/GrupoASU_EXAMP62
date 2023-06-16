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

@WebServlet("/actualizarEvento")
@MultipartConfig
public class ActualizarEvento extends HttpServlet {

	public ActualizarEvento() {
		// TODO Auto-generated constructor stub
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        InputStream inputStream = null;
        Conexion con=new Conexion();
        PreparedStatement pr=null;

        try {
            // Obtén el archivo seleccionado desde el campo de carga de archivos
            Part filePart = request.getPart("input");
            int id = Integer.parseInt(request.getParameter("cod"));
            
            // Obtén el nombre del archivo
            String fileName = filePart.getSubmittedFileName();

            // Obtén el contenido del archivo como un InputStream
            inputStream = filePart.getInputStream();
            
            
            
            // Lee el contenido de la imagen en un arreglo de bytes
            byte[] imageBytes = inputStream.readAllBytes();
            
            // Prepara la sentencia SQL para la inserción
            String sql = "UPDATE tb_evento SET id_evento=?,descripcion_evento=?,lugar_evento=?, fecha_evento=?, foto_evento=? WHERE id_evento=?";
            pr=con.getConexion().prepareStatement(sql);
            pr.setBytes(1, imageBytes);
            pr.setInt(2, id);

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
        
        response.sendRedirect(request.getContextPath() + "/modificarEvento.jsp");
    }

}
