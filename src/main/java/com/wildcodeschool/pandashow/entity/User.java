package com.wildcodeschool.pandashow.entity;

public class User {

    private Long id;
    private String pseudo;
    private String email;
    private String password;
    private String urlAvatar;

    public User() {
    }

    public User(Long id, String pseudo, String email, String password, String urlAvatar) {
        this.id = id;
        this.pseudo = pseudo;
        this.email = email;
        this.password = password;
        this.urlAvatar = urlAvatar;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getPseudo() {
        return pseudo;
    }

    public void setPseudo(String pseudo) {
        this.pseudo = pseudo;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getUrlAvatar() {
        return urlAvatar;
    }

    public void setUrlAvatar(String urlAvatar) {
        this.urlAvatar = urlAvatar;
    }
}