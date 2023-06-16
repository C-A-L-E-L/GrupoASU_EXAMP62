package com.asu.seguridad;

import java.io.IOException;
import java.io.InputStream;
import java.io.*;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.asu.datos.*;

@WebServlet("/imagenSV") 
@MultipartConfig
public class ImagenBBDD  extends HttpServlet{

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Conexion con = new Conexion();
		PreparedStatement pr = null;
		InputStream inputStream = null;

		try {
			int id = Integer.parseInt(request.getParameter("id"));
			String nombre = request.getParameter("texto");

			// Obtén el archivo seleccionado desde el campo de carga de archivos
			Part filePart = request.getPart("imagen");
			// Obtén el contenido del archivo como un InputStream
			inputStream = filePart.getInputStream();
			// Lee el contenido de la imagen en un arreglo de bytes
			byte[] imageBytes = inputStream.readAllBytes();

			// Prepara la sentencia SQL para la inserción
			String sql = "INSERT INTO tb_img (id_img, nombre_img, imagen) VALUES(?,?,?)";

			pr = con.getConexion().prepareStatement(sql);
			pr.setInt(1, id);
			pr.setString(2, nombre);
			pr.setBytes(3, imageBytes);
			System.out.println(pr);
			System.out.println(id);
			System.out.println(nombre);
			System.out.println(imageBytes);

			if(pr.executeUpdate() == 1)
				System.out.println("Insercion Correcta");
			else
				System.out.println("Error");

		} catch (SQLException e) {    e.printStackTrace();    }
		response.sendRedirect(request.getContextPath() + "/cargarIMG.jsp");
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Conexion con = new Conexion();
		ResultSet rs = null;
		int id = Integer.parseInt(request.getParameter("id")); // ID de la imagen que deseas mostrar

		String sql = "SELECT imagen FROM tb_img WHERE id_img = " + id;
		rs = con.Consulta(sql);

		try {
			if (rs.next()) {
				byte[] imageBytes = rs.getBytes("imagen");

				// Establece los encabezados de respuesta adecuados para la imagen
				response.setContentType("image/jpg");
				response.setContentLength(imageBytes.length);

				// Obtiene el flujo de salida de la respuesta
				OutputStream outputStream = response.getOutputStream();
				outputStream.write(imageBytes);
				outputStream.close();
			} else {
				response.sendError(HttpServletResponse.SC_NOT_FOUND);
			}

		} catch (IOException | SQLException e) {    e.printStackTrace();    }
	}
}
