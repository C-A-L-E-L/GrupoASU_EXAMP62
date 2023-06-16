package com.asu.seguridad;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.asu.datos.*;

public class Pagina {

	private String descripcion="";
	private String path="";

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}	

	public Pagina() {
		// TODO Auto-generated constructor stub
	}

	public String mostrarMenu(int nperfil)
	{
		String menu="";
		String sql="SELECT * FROM tb_pagina pag, tb_perfil per, tb_perfilpagina pper "
				+ "WHERE pag.id_pag=pper.id_pag AND pper.id_per=per.id_per AND pper.id_per= "+nperfil;
		Conexion con = new Conexion();
		ResultSet rs=null;
		try
		{
			rs=con.Consulta(sql);			
			while(rs.next())
			{
				menu+="<li><a href="+rs.getString(3)+" accesskey="+rs.getInt(1)+">"+rs.getString(2)+
						"</a></li>";
			}
		}
		catch(SQLException e)
		{
			System.out.print(e.getMessage());
		}
		return menu;
	}
}
