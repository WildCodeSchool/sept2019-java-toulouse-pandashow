package com.wildcodeschool.pandashow.repository;

import com.wildcodeschool.pandashow.entity.Episode;

import java.sql.*;

public class EpisodeRepository {

    private final static String DB_URL = "jdbc:mysql://localhost:3306/panda_show?serverTimezone=GMT";
    private final static String DB_USER = "panda";
    private final static String DB_PASSWORD = "pandashow";

    public Episode findById(Long id) {

        try {
            Connection connection = DriverManager.getConnection(
                    DB_URL, DB_USER, DB_PASSWORD
            );
            PreparedStatement statement = connection.prepareStatement(
                    "SELECT * FROM episode WHERE id = ?;"
            );
            statement.setLong(1, id);
            ResultSet resultSet = statement.executeQuery();

            if (resultSet.next()) {
                String urlImage = resultSet.getString("image_url");
                String title = resultSet.getString("title");
                String summary = resultSet.getString("summary");
                int number = resultSet.getInt("number");
                return new Episode(id, urlImage, title, summary, number);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}
