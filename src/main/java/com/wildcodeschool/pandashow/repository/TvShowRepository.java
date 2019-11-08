package com.wildcodeschool.pandashow.repository;

import com.wildcodeschool.pandashow.entity.TvShow;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class TvShowRepository {

    private final static String DB_URL = "jdbc:mysql://localhost:3306/panda_show?serverTimezone=GMT";
    private final static String DB_USER = "panda";
    private final static String DB_PASSWORD = "Pandash0w!";

    public TvShow findById(Long id) {

        try {
            Connection connection = DriverManager.getConnection(
                    DB_URL, DB_USER, DB_PASSWORD
            );
            PreparedStatement statement = connection.prepareStatement(
                    "SELECT * FROM tvshow WHERE id = ?;"
            );
            statement.setLong(1, id);
            ResultSet resultSet = statement.executeQuery();

            if (resultSet.next()) {
                String urlImage = resultSet.getString("image_url");
                String title = resultSet.getString("title");
                String pegi = resultSet.getString("pegi");
                int releaseYear = resultSet.getInt("release_year");
                String summary = resultSet.getString("summary");
                String casting = resultSet.getString("casting");
                String creator = resultSet.getString("creator");
                return new TvShow(id, urlImage, title, pegi, releaseYear, summary, casting, creator);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public List<TvShow> findAll() {

        List<TvShow> shows = new ArrayList<>();

        try {
            Connection connection = DriverManager.getConnection(
                    DB_URL, DB_USER, DB_PASSWORD
            );
            PreparedStatement statement = connection.prepareStatement(
                    "SELECT * FROM tvshow;"
            );
            ResultSet resultSet = statement.executeQuery();


            while (resultSet.next()) {
                Long id = resultSet.getLong("id_show");
                String urlImage = resultSet.getString("image_url");
                String title = resultSet.getString("title");
                String pegi = resultSet.getString("pegi");
                int releaseYear = resultSet.getInt("release_year");
                String summary = resultSet.getString("summary");
                String casting = resultSet.getString("casting");
                String creator = resultSet.getString("creator");
                shows.add(new TvShow(id, urlImage, title, pegi, releaseYear, summary, casting, creator));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return shows;
    }
}
