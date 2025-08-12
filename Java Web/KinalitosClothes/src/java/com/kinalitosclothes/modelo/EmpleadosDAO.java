package com.kinalitosclothes.modelo;

import com.kinalitosclothes.config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class EmpleadosDAO {
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int resp;
    
    public Empleados validar(String NombreEmpleado, String CodigoUsuario){
        Empleados empleados = new Empleados();
        String sql = "select * from Empleados where nombreEmpleado = ? and codigoUsuario = ?";
        try{
            con = cn.Conexion();
            ps = con.prepareCall(sql);
            ps.setString(1, NombreEmpleado);
            ps.setString(2, CodigoUsuario);
            rs = ps.executeQuery();
            while(rs.next()){
                empleados.setNombreEmpleado(rs.getString("nombreEmpleado"));
                empleados.setCodigoEmpleado(rs.getInt("codigoEmpleado"));
                empleados.setApellidoEmpleado(rs.getString("apellidoEmpleado"));
                empleados.setCorreoEmpleado(rs.getString("correoEmpleado"));
                empleados.setTelefonoEmpleado(rs.getString("telefonoEmpleado"));
                empleados.setDireccionEmpleado(rs.getString("direccionEmpleado"));
                empleados.setCodigoUsuario(rs.getInt("codigoUsuario"));
            }
        }catch (Exception e){
            System.out.println("El usuario o contraseña son incorrectos");
            
        }
        return empleados;
        
    }
    
    
    
}
