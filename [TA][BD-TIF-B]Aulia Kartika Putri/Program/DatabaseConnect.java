/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package coba;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

        
/**
 *
 * @author Farah
 */
public class DatabaseConnect {
    public static Connection connectDB() {
        Connection conn = null;
        try {
            String url =
             "jdbc:sqlserver://GLADYSABELVG:1433;" +
            "database=SAMFOOD;" +
            "user=Gladys Abel;" +
            "password=231525;" +
            "encrypt=true;" +
            "trustServerCertificate=true;" +
            "loginTimeout=30;";// Sesuaikan nama database
            
            conn = DriverManager.getConnection(url);
        } catch (SQLException e) {
            System.out.println("Koneksi Gagal: " + e.getMessage());
        }
        return conn;
    }
    
}
