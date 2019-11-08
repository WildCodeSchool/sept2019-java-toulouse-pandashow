#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------


#------------------------------------------------------------
# Table: tvshow
#------------------------------------------------------------

CREATE TABLE tvshow(
        id_show      Int  Auto_increment  NOT NULL ,
        image_url    Text NOT NULL ,
        title        Varchar (255) NOT NULL ,
        pegi         Varchar (50) NOT NULL ,
        release_year Int NOT NULL ,
        summary      Text NOT NULL ,
        casting      Text NOT NULL ,
        creator      Varchar (255) NOT NULL
	,CONSTRAINT show_PK PRIMARY KEY (id_show)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: season
#------------------------------------------------------------

CREATE TABLE season(
        id_season Int  Auto_increment  NOT NULL ,
        number    Int NOT NULL ,
        id_show   Int NOT NULL
	,CONSTRAINT season_PK PRIMARY KEY (id_season)

	,CONSTRAINT season_show_FK FOREIGN KEY (id_show) REFERENCES tvshow(id_show)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: user
#------------------------------------------------------------

CREATE TABLE user(
        id_user    Int  Auto_increment  NOT NULL ,
        pseudo     Varchar (255) NOT NULL ,
        email      Varchar (255) NOT NULL ,
        password   Varchar (50) NOT NULL ,
        avatar_url Text NOT NULL
	,CONSTRAINT user_PK PRIMARY KEY (id_user)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: episode
#------------------------------------------------------------

CREATE TABLE episode(
        id_episode Int  Auto_increment  NOT NULL ,
        image_url  Text NOT NULL ,
        title      Varchar (255) NOT NULL ,
        summary    Text NOT NULL ,
        number     Int NOT NULL ,
        id_season  Int NOT NULL
	,CONSTRAINT episode_PK PRIMARY KEY (id_episode)

	,CONSTRAINT episode_season_FK FOREIGN KEY (id_season) REFERENCES season(id_season)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: my_list
#------------------------------------------------------------

CREATE TABLE my_list(
        id_show Int NOT NULL ,
        id_user Int NOT NULL
	,CONSTRAINT my_list_PK PRIMARY KEY (id_show,id_user)

	,CONSTRAINT my_list_show_FK FOREIGN KEY (id_show) REFERENCES tvshow(id_show)
	,CONSTRAINT my_list_user0_FK FOREIGN KEY (id_user) REFERENCES user(id_user)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: seen
#------------------------------------------------------------

CREATE TABLE seen(
        id_episode Int NOT NULL ,
        id_user    Int NOT NULL
	,CONSTRAINT seen_PK PRIMARY KEY (id_episode,id_user)

	,CONSTRAINT seen_episode_FK FOREIGN KEY (id_episode) REFERENCES episode(id_episode)
	,CONSTRAINT seen_user0_FK FOREIGN KEY (id_user) REFERENCES user(id_user)
)ENGINE=InnoDB;


CREATE USER 'panda'@'localhost' IDENTIFIED BY 'Pandash0w!';
GRANT ALL ON panda_show.* TO 'panda'@'localhost';




