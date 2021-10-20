package kedaikopi.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

//Class ini hanya untuk tes koneksi
public class KedaikopiCon {
    
    public static Connection con;
    public static Statement stm;
    
    public static void main(String args[]){
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tts?allowPublicKeyRetrieval=true&useSSL=false", "root", "admin");
            stm = con.createStatement();
            System.out.println("koneksi berhasil;");
        } catch (Exception e) {
            System.err.println("koneksi gagal" +e.getMessage());
        }
    }

    static Connection getConnection() {
        throw new UnsupportedOperationException("Not supported yet.");
    }
}