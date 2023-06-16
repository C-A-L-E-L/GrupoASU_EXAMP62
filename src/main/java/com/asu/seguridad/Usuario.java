package com.asu.seguridad;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
/*import java.io.IOException;
import java.io.InputStream;*/
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/*import java.sql.SQLException;

import javax.servlet.ServletException;*/
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
/*import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;*/

import com.asu.datos.*;

@WebServlet("/cargarPostulacion")
@MultipartConfig
public class Usuario extends HttpServlet {
	
	public String Login;
	public String Clave;
	public String Nombre, email;
	public int Id, edad, Perfil;
	public boolean estado;
	
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public boolean isEstado() {
		return estado;
	}

	public void setEstado(boolean estado) {
		this.estado = estado;
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
	
	public String getLogin() {
		return Login;
	}
	
	public void setLogin(String login) {
		Login=login;
	}
	
	public String getClave() {
		return Clave;
	}
	
	public void setClave(String clave) {
		Clave=clave;
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
	
	public Usuario() {
		// TODO Auto-generated constructor stub
	}

	public boolean verificarUsuario(String nlogin, String nclave)
	{
		boolean respuesta=false;
		String sentencia= "Select * from tb_usuario where login_us='"+nlogin+
				"' and clave_us='"+nclave+"';";
		//System.out.print(sentencia);
		try
		{
			ResultSet rs;
			Conexion clsCon=new Conexion();
			rs=clsCon.Consulta(sentencia);
			
			if(rs.next())
			{
				respuesta=true;
				
				this.setId(rs.getInt("id_us"));
				this.setLogin(nlogin);
				this.setClave(nclave);
				
				this.setPerfil(rs.getInt(6));
				
				this.setNombre(rs.getString(3));
			}
			else
			{
				respuesta=false;
				rs.close();
			}
		}
		catch(Exception ex)
		{
			System.out.println( ex.getMessage());
		}
		return respuesta;
	}
	
	public String ingresarUsuario(String nombre, String descripcion, String login, String clave, int idper, String email)
	{
		String result="";
		Conexion con=new Conexion();
		PreparedStatement pr=null;
		String sql="INSERT INTO tb_usuario (nombre_us, direccion_us, login_us, clave_us, id_per, email_us) VALUES (?,?,?,?,?,?)";
		try{
			pr=con.getConexion().prepareStatement(sql);
			pr.setString(1, nombre); // order de parametros
			pr.setString(2, descripcion);
			pr.setString(3, login);
			pr.setString(4, clave);
			pr.setInt(5, idper);
			pr.setString(6, email);

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
}

/*protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
InputStream inputStream = null;
Conexion con=new Conexion();
PreparedStatement pr=null;

try {
    // Obtén el archivo seleccionado desde el campo de carga de archivos
    
    String nombre = request.getParameter("nombreApellido");
    int edad = Integer.parseInt(request.getParameter("edad"));
    String carrera = request.getParameter("format");
    
    // Obtén la ruta del archivo en el servidor
    String rutaPDF = request.getParameter("hv");

    // Prepara la sentencia SQL para la inserción
    String sql = "INSERT INTO tb_postulante (nombre_post,edad_post,carrera_post,hoja_post)"
    		+" VALUES(?,?,?,?)";
    pr=con.getConexion().prepareStatement(sql);

	pr.setString(1, nombre); 
	pr.setInt(2, edad);
	pr.setString(3, carrera);
	pr.setString(4, rutaPDF);
    
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
}*/
