/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import entidades.Usuario;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author Lenovo
 */
public class usuarioModel extends conexion {
    
    
    
    
    public boolean agregarUsuario(Usuario user,int dpto) {
        PreparedStatement pst = null;
        ResultSet rs = null;
        boolean flag = false;
        int id = 0;
        try {            
            String sql = "INSERT INTO visitante (nombre,apPat,apMat,telefono,cel,CURP,ine) VALUES (?,?,?,?,?,?,?)";
            pst = getConnection().prepareStatement(sql);
           
            pst.setString(1, user.getNombre());
            pst.setString(2, user.getApPat());
            pst.setString(3, user.getApMat());
            pst.setString(4, user.getTelefono());
            pst.setString(5, user.getCel());
            pst.setString(6, user.getCURP());
            pst.setInt(7, user.getIne());
            pst.executeUpdate();
            
                      
            if(pst.executeUpdate() == 1){
                flag = true;
                
                String key = "SELECT LAST_INSERT_ID()";
                pst = getConnection().prepareCall(key);
                rs = pst.executeQuery();
                if(rs.next()){
                    id = Integer.parseInt(rs.getString(1));
                }
                
                String sql2 = "INSERT INTO visita (visitante_id, departamento_id) VALUES (?,?)";
                pst = getConnection().prepareStatement(sql2);
                pst.setInt(1, id);
                pst.setInt(2, dpto );
                
                if(pst.executeUpdate() == 1){
                    flag = true;
                }
            }
        } catch (Exception e) {
            System.out.println(e);
        }finally {
            try {
                if(getConnection() != null) getConnection().close();
                if(pst != null) getConnection().close();
            } catch (Exception e) {
                System.out.println(e);
            }
        }
        return flag;
    }
    
    public boolean eliminarUsuario(int id) {
        PreparedStatement pst = null;
        boolean flag = false;
        try {
            String sql = "DELETE FROM profesor WHERE Usuario_idUsuario = ?";
            pst = getConnection().prepareStatement(sql);
            pst.setInt(1, id);
            
            if(pst.executeUpdate() == 1){
                String sql2 = "DELETE FROM usuario WHERE idUsuario = ?";
                pst = getConnection().prepareStatement(sql2);
                pst.setInt(1, id);
                
                if(pst.executeUpdate() == 1){
                    flag = true;
                }
            }
        } catch (Exception e) {
        }finally {
            try {
                if(getConnection() != null) getConnection().close();
                if(pst != null) getConnection().close();
            } catch (Exception e) {
            }
        }
        return flag;
    }
    
    
    public int login(String email, String pass) {
        PreparedStatement pst = null;
        ResultSet rs = null;
        int tipo = 0;
        try {
            String sql = "SELECT u.tipo FROM usuario AS u LEFT JOIN profesor AS p ON p.Usuario_idUsuario = u.idUsuario "
                    + "WHERE u.email = ? AND p.pass = ?";
            pst = getConnection().prepareStatement(sql);
            pst.setString(1, email);
            pst.setString(2, pass);
            rs = pst.executeQuery();
            
            if(rs.next()){
                tipo = Integer.parseInt(rs.getString("tipo"));
                return tipo;
            }
        } catch (SQLException | NumberFormatException e) {
        } finally {
            try {
                if(getConnection() != null) getConnection().close();
                if(pst != null) getConnection().close();
                if(rs != null) rs.close();
            } catch (Exception e) {
            }
        }
            
        return tipo;
    }
    
//    public boolean agregarCita(Usuario user) {
//        PreparedStatement pst = null;
//        ResultSet rs = null;
//        boolean flag = false;
//        int id = 0;
//        try {            
//            String sql = "INSERT INTO usuario (tipo,nombre,apellidoP,apellidoM,cel,email) VALUES (?,?,?,?,?,?)";
//            pst = getConnection().prepareStatement(sql);
//            pst.setInt(1, user.getTipo());
//            pst.setString(2, user.getNombre());
//            pst.setString(3, user.getApellidoP());
//            pst.setString(4, user.getApellidoM());
//            pst.setString(5, user.getCel());
//            pst.setString(6, user.getEmail());
//            
//            if(pst.executeUpdate() == 1){
//                flag = true;
//                
//                String key = "SELECT LAST_INSERT_ID()";
//                pst = getConnection().prepareCall(key);
//                rs = pst.executeQuery();
//                if(rs.next()){
//                    id = Integer.parseInt(rs.getString(1));
//                }
//                
//                String sql2 = "INSERT INTO alumno (boleta, Usuario_idUsuario) VALUES (?,?)";
//                pst = getConnection().prepareStatement(sql2);
//                pst.setString(1, user.getPass());
//                pst.setInt(2, id);
//                
//                if(pst.executeUpdate() == 1){
//                    flag = true;
//                }
//            }
//        } catch (Exception e) {
//        }finally {
//            try {
//                if(getConnection() != null) getConnection().close();
//                if(pst != null) getConnection().close();
//            } catch (Exception e) {
//            }
//        }
//        return flag;
//    }
}
