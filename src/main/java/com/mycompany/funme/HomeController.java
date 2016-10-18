package com.mycompany.funme;

import java.sql.DriverManager;
import java.sql.Statement;
import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.sql.DriverManager;
import java.sql.*;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	//Panatalla de inicio
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {	
		//return "home";
		//return "vista_buscarEvento";
		//return "vista_crearEvento";
		return "crearEvento";
	}
	
	@RequestMapping(value="/buscarEvento")
	public @ResponseBody String formularioPeticiones(Model modelo,@RequestParam(value="localizacion",required=false) String localizacion, @RequestParam(value="interes",required=true) String interes) {
        System.out.println("hola");
		return "Has escrito: "+localizacion+" " +interes ;
	}
	
	@RequestMapping(value="/crearEvento")
	public @ResponseBody String formularioPeticiones(Model modelo,@RequestParam(value="dia",required=false) String dia,@RequestParam(value="hora",required=false) String hora,@RequestParam(value="lugar",required=false) String lugar,@RequestParam(value="nombre",required=false) String nombre) {
        System.out.println("adios");

		MySQL my= new MySQL();
        my.escribirDatosMySQL_EVENTOS(dia,hora,lugar,nombre);
        
		return "Evento creado el dia: "+dia+" hora: "+hora+" lugar: "+lugar+" nombre evento: "+nombre;        
	}
/*	@RequestMapping(value="/crearEvento")
	public @ResponseBody String formularioPeticiones(@RequestBody String jsonEntrada) {
        System.out.println("adios");

//		MySQL my= new MySQL();
//        my.escribirDatosMySQL_EVENTOS(dia,hora,lugar,nombre);
        
		return null;        
	}*/
}
