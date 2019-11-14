package com.wildcodeschool.pandashow.repository;

import com.wildcodeschool.pandashow.entity.Episode;
import com.wildcodeschool.pandashow.entity.TvShow;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class EpisodeRepository {

    private final static String DB_URL = "jdbc:mysql://localhost:3306/panda_show?serverTimezone=GMT";
    private final static String DB_USER = "panda";
    private final static String DB_PASSWORD = "Pandash0w!";

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

    public List<Episode> findAllEpisodesFromSeason(Long idSeason) {

        List<Episode> episodes = new ArrayList<>();

        try {
            Connection connection = DriverManager.getConnection(
                    DB_URL, DB_USER, DB_PASSWORD
            );
            PreparedStatement statement = connection.prepareStatement(
                    "SELECT * FROM episode WHERE id_season = ?;"
            );
            statement.setLong(1, idSeason);
            ResultSet resultSet = statement.executeQuery();

            while (resultSet.next()) {
                Long id = resultSet.getLong("id_episode");
                String urlImage = resultSet.getString("image_url");
                String title = resultSet.getString("title");
                String summary = resultSet.getString("summary");
                int number = resultSet.getInt("number");
                episodes.add(new Episode(id, urlImage, title, summary, number));
            }

            return episodes;

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public List<Episode> findNextEpisodes(Long idUser, List<TvShow> showList) {

        try {
            Connection connection = DriverManager.getConnection(
                    DB_URL, DB_USER, DB_PASSWORD
            );
            PreparedStatement statement = connection.prepareStatement(
                    "SELECT * FROM episode " +
                            "JOIN season ON season.id_season = episode.id_season\n" +
                            "JOIN tvshow ON season.id_show = tvshow.id_show\n" +
                            "WHERE tvshow.id_show = ?\n" +
                            " AND id_episode NOT IN (\n" +
                            "SELECT episode.id_episode FROM episode\n" +
                            "LEFT JOIN seen ON episode.id_episode = seen.id_episode \n" +
                            "JOIN season ON season.id_season = episode.id_season\n" +
                            "WHERE id_user = ?)\n" +
                            "ORDER BY season.id_season, episode.number ASC LIMIT 0,1;"
            );

            List<Episode> episodes = new ArrayList<>();

            for (TvShow show : showList) {

                statement.setLong(1, show.getId());
                statement.setLong(2, idUser);
                ResultSet resultSet = statement.executeQuery();

                if (resultSet.next()) {
                    Long id = resultSet.getLong("id_episode");
                    String urlImage = resultSet.getString("episode.image_url");
                    String title = resultSet.getString("episode.title");
                    String summary = resultSet.getString("episode.summary");
                    int number = resultSet.getInt("episode.number");
                    String showTitle = resultSet.getString("tvshow.title");
                    episodes.add(new Episode(id, urlImage, title, summary, number, showTitle));
                }
            }

            return episodes;

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}
