import controller.Register;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class RegisterDAO {
    private static final String DB_URL = "jdbc:mysql://localhost:3306/your_database_name";
    private static final String DB_USER = "your_username";
    private static final String DB_PASSWORD = "your_password";

    public boolean registerUser(Register register) {
        try (Connection connection = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD)) {
            String query = "INSERT INTO users (username, nome, cognome, password, codice_fiscale, via, cap, numero_civico, città, data_nascita, is_admin) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement statement = connection.prepareStatement(query);
            statement.setString(1, register.getUsername());
            statement.setString(2, register.getNome());
            statement.setString(3, register.getCognome());
            statement.setString(4, register.getPassword());
            statement.setString(5, register.getCodiceFiscale());
            statement.setString(6, register.getVia());
            statement.setString(7, register.getCap());
            statement.setInt(8, register.getNumeroCivico());
            statement.setString(9, register.getCittà());
            statement.setDate(10, new java.sql.Date(register.getDataNascita().getTimeInMillis()));
            statement.setBoolean(11, register.isAdmin());

            int rowsAffected = statement.executeUpdate();

            return rowsAffected > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return false;
    }
}
