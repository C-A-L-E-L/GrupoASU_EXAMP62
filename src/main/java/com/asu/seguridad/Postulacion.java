package com.asu.seguridad;

import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.asu.datos.Conexion;

public class Postulacion {
	
	public String Carrera, Nombre, email, estado;
	public int Id, edad, Perfil;
	
	public String getEstado() {
		return estado;
	}

	public void setEstado(String estado) {
		this.estado = estado;
	}
	
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getId() {
		return Id;
	}

	public void setId(int id) {
		Id = id;
	}

	public int getEdad() {
		return edad;
	}

	public void setEdad(int edad) {
		this.edad = edad;
	}

	public String getCarrera() {
		return Carrera;
	}

	public void setCarrera(String carrera) {
		Carrera = carrera;
	}

	public int getPerfil(){
		return Perfil;
	}
	
	public void setPerfil(int perfil) {
		Perfil=perfil;
	}
	
	public String getNombre() {
		return Nombre;
	}
	
	public void setNombre(String nombre) {
		Nombre=nombre;
	}

	public Postulacion() {
		// TODO Auto-generated constructor stub
	}

	public String ingresarPostulacion(String nombre,int edad,String carrera, String estado, String email)
	{
		String result="";
		Conexion con=new Conexion();
		PreparedStatement pr=null;
		String sql="INSERT INTO tb_postulantes (nombre_post, edad_post, carrera_post, estado_post, email_post) VALUES (?,?,?,?,?)";
		try{
			pr=con.getConexion().prepareStatement(sql);
			pr.setString(1, nombre);
			pr.setInt(2, edad);
			pr.setString(3, carrera);
			pr.setString(4, estado);
			pr.setString(5, email);

			if(pr.executeUpdate()==1)
			{
				result="Inserción correcta";
			}
			else
			{
				result="Error en inserción";
			}
		}
		catch(Exception ex)
		{
			result=ex.getMessage();
		}
		finally
		{
			try
			{
				pr.close();
				con.getConexion().close();
			}
			catch(Exception ex)
			{
				System.out.print(ex.getMessage());
			}
		}
		return result;
	}
	
	public String consultarTodosPostulantes() throws IOException {
		String sql = "SELECT * FROM tb_postulantes ORDER BY id_post";
		Conexion con = new Conexion();
		String tabla = "<table border=5 style='background-color: white;'>"
				+ "<tr>"
				+ "<th>ID</th>"
				+ "<th>NOMBRE</th>"
				+ "<th>EDAD</th>"
				+ "<th>CARRERA</th>"
				+ "<th>ESTADO</th>"
				+ "<th>EMAIL</th>"
				+ "<th>HOJA DE VIDA</th>"
				+ "</tr>";
		ResultSet rs = null;
		rs = con.Consulta(sql);
		try {
			while (rs.next()) {
				
				
				tabla += "<tr>"
						+ "<td>" + rs.getInt(1) + "</td>" 
						+ "<td>" + rs.getString(2) + "</td>" 
						+ "<td>" + rs.getInt(3) + "</td>" 
						+ "<td>" + rs.getString(4) + "</td>" 
						+ "<td>" + rs.getString(5) + "</td>"
						+ "<td>" + rs.getString(6) + "</td>"
						+ "<td>" + "<a href='descargarPDF?id=" + rs.getInt(1) + "'>"
                        + "<img src=\"imagenSV?id=16\" alt='Modificar' width='40px' text-align='center'>"
                        + "</a></td>"
						+ "<td> <a href=buscarPostulante.jsp?cod=" + rs.getInt(1) + "><pre style=\"text-align: center\">Modificar</pre></a></td>"
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
	
	public void ConsultarEditarPostulacion(int cod) {
		Conexion con = new Conexion();
		ResultSet rs = null;
		String sql = "select id_post, nombre_post, edad_post, carrera_post, estado_post, email_post "
				+ "from tb_postulantes where id_post='" + cod +"'";
		try {
			rs = con.Consulta(sql);
			while (rs.next()) {
				setId(rs.getInt(1));
				setNombre(rs.getString(2));
				setEdad(rs.getInt(3));
				setCarrera(rs.getString(4));
				setEstado(rs.getString(5));
				setEmail(rs.getString(6));
			}
		} catch(Exception e) { }
	}
	
	public String ConsultarEstadoPostulacion(int id_post) {
		String sql = "SELECT * FROM tb_postulantes WHERE id_post="+id_post;
		Conexion con = new Conexion();
		String tabla = "<table border=5 style='background-color: white;'>"
				+ "<tr>"
				+ "<th>ID</th>"
				+ "<th>NOMBRE</th>"
				+ "<th>EDAD</th>"
				+ "<th>CARRERA</th>"
				+ "<th>ESTADO</th>"
				+ "<th>EMAIL</th>"
				+ "<th>HOJA DE VIDA</th>"
				+ "</tr>";
		ResultSet rs = null;
		rs = con.Consulta(sql);
		try {
			while (rs.next()) {
				tabla += "<tr>"
						+ "<td>" + rs.getInt(1) + "</td>" 
						+ "<td>" + rs.getString(2) + "</td>" 
						+ "<td>" + rs.getInt(3) + "</td>" 
						+ "<td>" + rs.getString(4) + "</td>" 
						+ "<td>" + rs.getString(5) + "</td>"
						+ "<td>" + rs.getString(6) + "</td>"
						+ "<td>" + "<a href='descargarPDF?id=" + rs.getInt(1) + "'>"
                        + "<img src='img/pdf.png' alt='Modificar' width='40px' text-align='center'>"
                        + "</a></td>"
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
	
	public boolean ModificarPostulacion(int cod, String estado) {
		boolean agregado = false;
		Conexion con = new Conexion();
		String sql = "update tb_postulantes set estado_post='"+ estado +"' where id_post=" + cod + "";
		try {
			con.Ejecutar(sql);
			agregado = true;
		} catch(Exception e) {
			agregado = false;
		}
		return agregado;
	}
	
	public boolean EliminarPostulante (int cod) {
		boolean f = false;
		Conexion con = new Conexion();
		String sql = "delete from tb_postulantes where id_post="+ cod;

		try {
			con.Ejecutar(sql);
			f = true;

		} catch (Exception e) {
			f = false;

		}

		return f;
	}
	
	
	public String consultarPostulacion(int id_user) throws IOException {
		String sql = "SELECT nombre_post, edad_post, carrera_post, estado_post, email_post FROM tb_postulantes WHERE id_post=" + id_user;
		Conexion con = new Conexion();
		String tabla = "<table border=5 style='background-color: white;'>"
				+ "<tr>"
				+ "<th>NOMBRE</th>"
				+ "<th>EDAD</th>"
				+ "<th>CARRERA</th>"
				+ "<th>ESTADO</th>"
				+ "</tr>";
		ResultSet rs = null;
		rs = con.Consulta(sql);
		try {
			while (rs.next()) {
				
				tabla += "<tr>"
						+ "<td>" + rs.getInt(1) + "</td>" 
						+ "<td>" + rs.getString(2) + "</td>" 
						+ "<td>" + rs.getInt(3) + "</td>" 
						+ "<td>" + rs.getString(4) + "</td>" 
						+ "<td>" + rs.getString(5) + "</td>"
						+ "<td>" + rs.getString(6) + "</td>"
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
	
	

}
