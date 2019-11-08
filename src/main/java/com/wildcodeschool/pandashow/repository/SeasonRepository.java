package com.wildcodeschool.pandashow.repository;

import com.wildcodeschool.pandashow.entity.Season;

import java.sql.*;

public class SeasonRepository {

    private final static String DB_URL = "jdbc:mysql://localhost:3306/panda_show?serverTimezone=GMT";
    private final static String DB_USER = "panda";
    private final static String DB_PASSWORD = "pandashow";

    public Season findById(Long id) {

        try {
            Connection connection = DriverManager.getConnection(
                    DB_URL, DB_USER, DB_PASSWORD
            );
            PreparedStatement statement = connection.prepareStatement(
                    "SELECT * FROM season WHERE id = ?;"
            );
            statement.setLong(1, id);
            ResultSet resultSet = statement.executeQuery();

            if (resultSet.next()) {
                int number = resultSet.getInt("number");
                return new Season(id, number);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}
