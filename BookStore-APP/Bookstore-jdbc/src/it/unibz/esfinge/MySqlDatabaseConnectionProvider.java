package it.unibz.esfinge;

import net.sf.esfinge.querybuilder.jdbc.DatabaseConnectionProvider;

import java.sql.Connection;
import java.sql.DriverManager;

public class MySqlDatabaseConnectionProvider implements DatabaseConnectionProvider {
    @Override
    public Connection getConnection() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            return DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/Bookstore","root","password");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (Exception err) {
            err.printStackTrace();
        }

        return null;
    }
}
