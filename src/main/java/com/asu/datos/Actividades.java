package com.asu.datos;

import java.sql.ResultSet;
import java.sql.SQLException;

public class Actividades {

	public Actividades() {
		// TODO Auto-generated constructor stub
	}
	
	public String mostrarActividades()
	{
		String menu="<ul>";
		String sql="SELECT * FROM tb_actividades";
		Conexion con = new Conexion();
		ResultSet rs=null;
		try
		{
			rs=con.Consulta(sql);
			while(rs.next())
			{
				menu+="<li><a "+ "</a></li>";
			}
			menu+="</ul>";
		}
		catch(SQLException e)
		{
			System.out.print(e.getMessage());
		}
		return menu;
	}
	
	/*
	 <%
	  Actividades pag=new Actividades();
	  String menu=pag.mostrarActividades();
 	  out.print(menu);
	  %>
	 */

}
