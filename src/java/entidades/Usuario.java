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
public class Usuario {
   private int id;
   private String nombre;
   private String apPat;
   private String apMat;
   private String telefono;
   private String cel;
 
   private String CURP;
   private int ine;


   public Usuario() {
    }
    

    
    public Usuario(String nombre, String apPat, String apMat,String telefono, String cel, String CURP, int ine) {
        this.nombre = nombre;
        this.apPat = apPat;
        this.apMat = apMat;
        this.telefono = telefono;
        this.cel = cel;
        this.CURP = CURP;
        this.ine = ine;
        
    }
    
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

    public String getApPat() {
        return apPat;
    }

    public void setApPat(String apPat) {
        this.apPat = apPat;
    }

    public String getApMat() {
        return apMat;
    }

    public void setApMat(String apMat) {
        this.apMat = apMat;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getCel() {
        return cel;
    }

    public void setCel(String cel) {
        this.cel = cel;
    }

   

    public String getCURP() {
        return CURP;
    }

    public void setCURP(String CURP) {
        this.CURP = CURP;
    }

    public int getIne() {
        return ine;
    }

    public void setIne(int ine) {
        this.ine = ine;
    }

    

}
