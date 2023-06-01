package com.utec;

import java.io.Serializable;

public class Usuario implements Serializable{
	
	private static final long serialVersionUID = 1L;
	
	private String nombre;
	private String edad;
	private String direccion;
	private String tel;
	
	
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getEdad() {
		return edad;
	}
	public void setEdad(String edad) {
		this.edad = edad;
	}
	public String getDireccion() {
		return direccion;
	}
	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	
	public Usuario() {
		
	}
	public Usuario(String nombre, String edad, String direccion, String tel) {
		super();
		this.nombre = nombre;
		this.edad = edad;
		this.direccion = direccion;
		this.tel = tel;
	}
	
	
	
}
