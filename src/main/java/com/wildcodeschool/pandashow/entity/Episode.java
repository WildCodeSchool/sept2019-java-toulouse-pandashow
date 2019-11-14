package com.wildcodeschool.pandashow.entity;

public class Episode {

    private Long id;
    private String urlImage;
    private String title;
    private String summary;
    private int number;
    private String showTitle;
    private Long seasonNumber;

    public Episode(Long id, String urlImage, String title, String summary, int number, String showTitle, Long seasonNumber) {
        this.id = id;
        this.urlImage = urlImage;
        this.title = title;
        this.summary = summary;
        this.number = number;
        this.showTitle = showTitle;
        this.seasonNumber = seasonNumber;
    }

    public Episode(Long id, String urlImage, String title, String summary, int number) {
        this.id = id;
        this.urlImage = urlImage;
        this.title = title;
        this.summary = summary;
        this.number = number;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getUrlImage() {
        return urlImage;
    }

    public void setUrlImage(String urlImage) {
        this.urlImage = urlImage;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getSummary() {
        return summary;
    }

    public void setSummary(String summary) {
        this.summary = summary;
    }

    public int getNumber() {
        return number;
    }

    public void setNumber(int number) {
        this.number = number;
    }

    public String getShowTitle() {
        return showTitle;
    }

    public void setShowTitle(String showTitle) {
        this.showTitle = showTitle;
    }

    public Long getSeasonNumber() {
        return seasonNumber;
    }

    public void setSeasonNumber(Long seasonNumber) {
        this.seasonNumber = seasonNumber;
    }
}
