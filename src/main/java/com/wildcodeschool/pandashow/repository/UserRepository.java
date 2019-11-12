package com.wildcodeschool.pandashow.repository;

import com.wildcodeschool.pandashow.entity.Episode;
import com.wildcodeschool.pandashow.entity.TvShow;
import com.wildcodeschool.pandashow.entity.User;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class UserRepository {

    private final static String DB_URL = "jdbc:mysql://localhost:3306/panda_show?serverTimezone=GMT";
    private final static String DB_USER = "panda";
    private final static String DB_PASSWORD = "Pandash0w!";

    public User createUser(String pseudo, String email, String password) {

        try {
            Connection connection = DriverManager.getConnection(
                    DB_URL, DB_USER, DB_PASSWORD
            );
            PreparedStatement statement = connection.prepareStatement(
                    "INSERT INTO user (pseudo, email, password) VALUES (?, ?, ?);",
                    Statement.RETURN_GENERATED_KEYS
            );
            statement.setString(1, pseudo);
            statement.setString(2, email);
            statement.setString(3, password);

            if (statement.executeUpdate() != 1) {
                throw new SQLException("failed to insert data");
            }

            ResultSet generatedKeys = statement.getGeneratedKeys();

            if (generatedKeys.next()) {
                Long id = generatedKeys.getLong(1);
                return new User(id, pseudo, email, password);
            } else {
                throw new SQLException("failed to get inserted id");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;

    }

    public User findById(Long id) {

        try {
            Connection connection = DriverManager.getConnection(
                    DB_URL, DB_USER, DB_PASSWORD
            );
            PreparedStatement statement = connection.prepareStatement(
                    "SELECT * FROM user WHERE pseudo = ? AND password = ?;"
            );
            statement.setLong(1, id);
            ResultSet resultSet = statement.executeQuery();

            if (resultSet.next()) {
                String pseudo = resultSet.getString("pseudo");
                String email = resultSet.getString("email");
                String password = resultSet.getString("password");
                return new User(id, pseudo, email, password);
            }
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
                Long id = resultSet.getLong("id_user");
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

    public List<Episode> addToList() {

        List<Episode> myList = new ArrayList<>();

        try {
            Connection connection = DriverManager.getConnection(
                    DB_URL, DB_USER, DB_PASSWORD
            );
            PreparedStatement statement = connection.prepareStatement(
                    "SELECT * FROM episode;"
            );
            ResultSet resultSet = statement.executeQuery();

            while (resultSet.next()) {
                Long id = resultSet.getLong("id_episode");
                String urlImage = resultSet.getString("urlImage");
                String title = resultSet.getString("title");
                String summary = resultSet.getString("summary");
                int number = resultSet.getInt("number");
                myList.add(new Episode(id, urlImage, title, summary, number));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return myList;
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
                int season = resultSet.getInt("season");
                shows.add(new TvShow(id, urlImage, title, pegi, releaseYear, summary, casting, creator, season));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return shows;
    }
}
