package com.asu.eventos;

import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.asu.datos.Conexion;

@WebServlet("/descargarPDF") 
@MultipartConfig
public class EstadoPostular extends HttpServlet{
	
	public EstadoPostular() {
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Conexion con = new Conexion();
        PreparedStatement pr = null;
        InputStream hojavida = null;

        // Recibir el ID del documento PDF
        int id_pdf = Integer.parseInt(request.getParameter("id"));
        String sql_pdf = "SELECT hojavida_post FROM tb_postulantes WHERE id_post =" + id_pdf;
        ResultSet rs = null;
        rs = con.Consulta(sql_pdf);

        try {
            if (rs.next()) {
                // Obtén el contenido del archivo como un InputStream
                hojavida = rs.getBinaryStream("hojavida_post");
            }
        } catch (SQLException e) { e.printStackTrace(); }

        String ruta = "C:\\Users\\USER\\Downloads\\";
        String nombrepdf = "postulante" + id_pdf + ".pdf";
        OutputStream outputStream = new FileOutputStream(new File(ruta, nombrepdf));

        // Lee los datos del archivo PDF y escribe en el directorio de destino
        byte[] buffer = new byte[4096];
        int bytesRead;
        while ((bytesRead = hojavida.read(buffer)) != -1) {
            outputStream.write(buffer, 0, bytesRead);
        }

        // Cierra los flujos
        outputStream.close();
        hojavida.close();

        response.sendRedirect(request.getContextPath() + "/todosPostulantes.jsp");
    }

}
