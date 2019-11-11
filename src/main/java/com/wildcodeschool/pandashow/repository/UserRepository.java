package com.wildcodeschool.pandashow.repository;

import com.wildcodeschool.pandashow.entity.User;

import java.sql.*;

public class UserRepository {

    private final static String DB_URL = "jdbc:mysql://localhost:8080/panda_show?serverTimezone=GMT";
    private final static String DB_USER = "panda";
    private final static String DB_PASSWORD = "pandashow";

    public Object saveUser(Long id, String pseudo, String email, String password) {
        try {
            Connection connection = DriverManager.getConnection(
                    DB_URL, DB_USER, DB_PASSWORD
            );
            PreparedStatement statement = connection.prepareStatement(
                    "UPDATE user SET pseudo=?, email=?, password=? WHERE id=?"
            );
            statement.setLong(1, id);
            statement.setString(2, pseudo);
            statement.setString(3, email);
            statement.setString(4, password);
            if (statement.executeUpdate() != 1) {
                throw new SQLException("Error - please try again");
            }
            return new User(id, pseudo, email, password);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public User getByUsername(String pseudo, String password) {

        try {
            Connection connection = DriverManager.getConnection(
                    DB_URL, DB_USER, DB_PASSWORD
            );
            PreparedStatement statement = connection.prepareStatement(
                    "SELECT * FROM user WHERE pseudo = ? AND password = ?;"
            );
            statement.setString(1, pseudo);
            statement.setString(2, password);
            ResultSet resultSet = statement.executeQuery();
            if (resultSet.next()) {
                Long id = resultSet.getLong("id");
                pseudo = resultSet.getString("pseudo");
                String email = resultSet.getString("email");
                password = resultSet.getString("password");
                return new User(id, pseudo, email, password);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}
