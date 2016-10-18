package com.mycompany.funme;

import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;
import java.sql.SQLException;

import com.mysql.jdbc.Statement;



public class MySQL{
	
   public MySQL(){}

   public void escribirDatosMySQL_EVENTOS(String dia,String hora, String lugar, String nombre_evento){
   
      Connection conexion=null;
   
      try{
         Class.forName("com.mysql.jdbc.Driver");
         conexion =  DriverManager.getConnection("jdbc:mysql://localhost/funme","root","1234");
         
         java.sql.Statement s = conexion.createStatement(); 
      
         int rs_update = s.executeUpdate("INSERT INTO eventos (lugar,hora,dia,nombre_evento) VALUES ('"+dia+"','"+hora+"','"+lugar+"','"+nombre_evento+"')");
         conexion.close();
	    }
		catch(ClassNotFoundException e2){
			  System.out.println("1");
		}       
	    catch(Exception e){
	    	 System.out.println("2");
	}
   }
   public void escribirDatosMySQL_REGISTRO(String email,String nombre, String apellido, String contraseña,String f_nacimiento, String sexo){
	   
	      Connection conexion=null;
	   
	      try{
	         Class.forName("com.mysql.jdbc.Driver");
	         conexion =  DriverManager.getConnection("jdbc:mysql://localhost/funme","root","1234");
	         
	         java.sql.Statement s = conexion.createStatement(); 
	      
	         int rs_update = s.executeUpdate("INSERT INTO usuario (email,nombre,apellido,contraseña,f_nacimiento,sexo) VALUES ('"+email+"','"+nombre+"','"+apellido+"','"+contraseña+"','"+f_nacimiento+"','"+sexo+"')");
	         conexion.close();
		    }
			catch(ClassNotFoundException e2){
				  System.out.println("1");
			}       
		    catch(Exception e){
		    	 System.out.println("2");
		}
	   } 
}
