/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entidades;

/**
 *
 * @author Lenovo
 */
public class Departamento {

  
   private int id;

    
   private String nombre;
   private String edificio;
   private String piso;

   

    public Departamento() {
    }
    
    public Departamento(String nombre) {
        this.nombre = nombre;
    }

    public Departamento(int id, String nombre) {
        this.id = id;
        this.nombre = nombre;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
      public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getEdificio() {
        return edificio;
    }

    public void setEdificio(String edificio) {
        this.edificio = edificio;
    }

    public String getPiso() {
        return piso;
    }

    public void setPiso(String piso) {
        this.piso = piso;
    }

    public void add(Departamento departamento) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
