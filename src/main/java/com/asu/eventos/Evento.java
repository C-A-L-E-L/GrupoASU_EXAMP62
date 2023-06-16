package com.asu.eventos;

import java.io.File;
import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import java.io.*;
import java.io.FileOutputStream;

import com.asu.datos.*;

public class Evento {

	public String consultarTodo() throws IOException {
		String sql = "SELECT * FROM tb_evento ORDER BY id_evento";
		Conexion con = new Conexion();
		String tabla = "<table border=5 style='background-color: white;'>"
				+ "<tr>"
				+ "<th>ID</th>"
				+ "<th>EVENTO</th>"
				+ "<th>DESCRIPCION</th>"
				+ "<th>LUGAR</th>"
				+ "<th>FECHA</th>"
				+ "<th>FOTO</th>"
				+ "</tr>";
		ResultSet rs = null;
		rs = con.Consulta(sql);
		
		String result="";
		File ruta = new File("C:\\Users\\USER\\Downloads"); 
		//File ruta = new File("C:\\Program Files\\Apache Software Foundation\\Tomcat 9.0\\webapps\\site03_EPP\\src\\main\\webapp\\temporales"); 
		File tempFile;
		FileOutputStream fos;
		int cont=0;
		
		try {
			while (rs.next()) {
				tempFile = new File(ruta+"\\imgEvento"+cont+".jpg");
				fos = new FileOutputStream(tempFile);
				byte[] foto = rs.getBytes("foto_evento");
				fos.write(foto); 
				fos.close();
				result="<img src='temporales/imgEvento"+cont+".jpg' alt='Imagen' width='150px' height='auto'>";
				cont++;
				//System.out.println(tempFile.getAbsolutePath());
				
				tabla += "<tr>"
						+ "<td>" + rs.getInt(1) + "</td>" 
						+ "<td>" + rs.getString(2) + "</td>" 
						+ "<td>" + rs.getString(3) + "</td>" 
						+ "<td>" + rs.getString(4) + "</td>" 
						+ "<td>" + rs.getString(5) + "</td>"
						+ "<td>" + result + "</td>"
						+ "</tr>";
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.print(e.getMessage());
		}
		tabla += "</table>";
		return tabla;
	}
	
	public String consultarTodoEdicion() throws IOException {
		String sql = "SELECT * FROM tb_evento ORDER BY id_evento";
		Conexion con = new Conexion();
		String tabla = "<table border=5 style='background-color: white;'>"
				+ "<tr>"
				+ "<th>ID</th>"
				+ "<th>EVENTO</th>"
				+ "<th>DESCRIPCION</th>"
				+ "<th>LUGAR</th>"
				+ "<th>FECHA</th>"
				+ "<th>FOTO</th>"
				+ "</tr>";
		ResultSet rs = null;
		rs = con.Consulta(sql);
		
		String result="";
		File ruta = new File("C:\\Program Files\\Apache Software Foundation\\Tomcat 9.0\\webapps\\site03_EPP\\src\\main\\webapp\\temporales");
		File tempFile;
		FileOutputStream fos;
		int cont=0;
		
		try {
			while (rs.next()) {
				tempFile = new File(ruta+"\\imgEvento"+cont+".jpg");
				fos = new FileOutputStream(tempFile);
				byte[] foto = rs.getBytes("foto_evento");
				fos.write(foto); 
				fos.close();
				result="<img src='temporales/imgEvento"+cont+".jpg' alt='Imagen' width='150px' height='auto'>";
				cont++;
				//System.out.println(result);
				
				tabla += "<tr>"
						+ "<td>" + rs.getInt(1) + "</td>" 
						+ "<td>" + rs.getString(2) + "</td>" 
						+ "<td>" + rs.getString(3) + "</td>" 
						+ "<td>" + rs.getString(4) + "</td>" 
						+ "<td>" + rs.getString(5) + "</td>"
						+ "<td>" + result + "</td>"
						+ "</td>"
						+ "<td> <a href=buscarEvento.jsp?cod=" + rs.getInt(1) + "><pre style=\"text-align: center\">Modificar</pre></a></td>"
						+ "<td> <a href= eliminarEvento.jsp?cod=" + rs.getInt(1) + " \"><pre style=\"text-align: center\">Eliminar</pre></a></td>"
						+ "</tr>";
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.print(e.getMessage());
		}
		tabla += "</table>";
		return tabla;
	}
	
	private int id;
	private String nombre,descripcion,lugar,fecha;
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
	
	public String getLugar() {
		return lugar;
	}

	public void setLugar(String lugar) {
		this.lugar = lugar;
	}

	public String getFecha() {
		return fecha;
	}

	public void setFecha(String fecha) {
		this.fecha = fecha;
	}
	
	public void ConsultarEditarEvento(int cod) {
		Conexion con = new Conexion();
		ResultSet rs = null;
		String sql = "select id_evento, nombre_evento, descripcion_evento, lugar_evento, fecha_evento "
				+ "from tb_evento where id_evento='" + cod +"'";
		try {
			rs = con.Consulta(sql);
			while (rs.next()) {
				setId(rs.getInt(1));
				setNombre(rs.getString(2));
				setDescripcion(rs.getString(3));
				setLugar(rs.getString(4));
				setFecha(rs.getString(5));
			}
		} catch(Exception e) { }
	}
	
	public boolean ModificarEvento(int cod, String des, String lugar, String fecha) {
		boolean agregado = false;
		Conexion con = new Conexion();
		String sql = "update tb_evento set descripcion_evento='" + des + "', "
				+ "lugar_evento='" + lugar + "', fecha_evento='"+ fecha + "' where id_evento= " + cod + "";
		try {
			con.Ejecutar(sql);
			agregado = true;
		} catch(Exception e) {
			agregado = false;
		}
		return agregado;
	}
	
	public String mostrarModificarFoto() throws IOException {
		String sql = "SELECT * FROM tb_evento ORDER BY id_evento";
		Conexion con = new Conexion();
		String tabla = "<table border=5 style='background-color: white;'>"
				+ "<tr>"
				+ "<th>IMAGEN</th>"
				+ "</tr>";
		ResultSet rs = null;
		rs = con.Consulta(sql);
		
		String result="";
		File ruta = new File("C:\\Program Files\\Apache Software Foundation\\Tomcat 9.0\\webapps\\site03_EPP\\src\\main\\webapp\\temporales"); 
		File tempFile;
		FileOutputStream fos;
		int cont=0;
		
		try {
			while (rs.next()) {
				tempFile = new File(ruta+"\\imgEvento"+cont+".jpg");
				fos = new FileOutputStream(tempFile);
				byte[] foto = rs.getBytes("foto_evento");
				fos.write(foto); 
				fos.close();
				result="<img src='temporales/imgEvento"+cont+".jpg' alt='Imagen' width='150px' height='auto'>";
				cont++;
				//System.out.println(tempFile.getAbsolutePath());
				
				tabla += "<tr>"
						+ "<td>" + result + "</td>"
						+ "</tr>";
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.print(e.getMessage());
		}
		tabla += "</table>";
		return tabla;
	}
	
	
	public boolean EliminarEvento (int cod) {
		boolean f = false;
		Conexion con = new Conexion();
		String sql = "delete from tb_evento where id_evento="+ cod;

		try {
			con.Ejecutar(sql);
			f = true;

		} catch (Exception e) {
			f = false;

		}

		return f;
	}

	

	/*public byte[] foto() throws IOException { 
		File file = new
		File("C:\\Program Files\\Apache Software Foundation\\Tomcat 9.0\\webapps\\site03_EPP\\src\\main\\webapp\\img\\img3.png"); 
		FileInputStream fis = new FileInputStream(file); 
		byte[] imageData = new byte[(int) file.length()]; fis.read(imageData); fis.close();
		return imageData;
	}

	public String mostrarFoto() throws IOException { 
		String result=""; 
		Conexion con=new Conexion(); 
		PreparedStatement pr=null; 
		String sql="SELECT foto_evento FROM tb_evento;";
		ResultSet rs=null; rs=con.Consulta(sql);
		File ruta = new File("C:\\Program Files\\Apache Software Foundation\\Tomcat 9.0\\webapps\\site03_EPP\\src\\main\\webapp\\temporales"); 
		File tempFile;
		FileOutputStream fos;
		int cont=0;
		try { 
			while(rs.next()) { 
				tempFile = new File(ruta+"imgEvento"+cont+".jpg");
				fos = new FileOutputStream(tempFile);
				byte[] foto = rs.getBytes("foto_evento");
				fos.write(foto); 
				fos.close();
				result+="<img src='temporales\\temp16559408057294971600.jpg' alt='Imagen'>";
				cont++;
				//result+="<img src='"+tempFile.getAbsolutePath()+"' alt='Imagen'>";
			} 
		} catch (SQLException e) { 
			// TODO Auto-generated catch block
			e.printStackTrace(); System.out.print(e.getMessage()); 
		} 
		return result; 
	}*/
}
