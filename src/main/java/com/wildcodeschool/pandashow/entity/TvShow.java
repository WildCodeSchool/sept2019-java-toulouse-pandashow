package com.wildcodeschool.pandashow.entity;

public class TvShow {

    private Long id;
    private String urlImage;
    private String title;
    private String pegi;
    private int releaseYear;
    private String summary;
    private String casting;
    private String creator;

    public TvShow() {
    }

    public TvShow(Long id, String urlImage, String title, String pegi, int releaseYear, String summary, String casting, String creator) {
        this.id = id;
        this.urlImage = urlImage;
        this.title = title;
        this.pegi = pegi;
        this.releaseYear = releaseYear;
        this.summary = summary;
        this.casting = casting;
        this.creator = creator;
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

    public String getPegi() {
        return pegi;
    }

    public void setPegi(String pegi) {
        this.pegi = pegi;
    }

    public int getReleaseYear() {
        return releaseYear;
    }

    public void setReleaseYear(int releaseYear) {
        this.releaseYear = releaseYear;
    }

    public String getSummary() {
        return summary;
    }

    public void setSummary(String summary) {
        this.summary = summary;
    }

    public String getCasting() {
        return casting;
    }

    public void setCasting(String casting) {
        this.casting = casting;
    }

    public String getCreator() {
        return creator;
    }

    public void setCreator(String creator) {
        this.creator = creator;
    }
}