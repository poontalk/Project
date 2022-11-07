package org.itsci.projectmovie.model;


import com.sun.istack.NotNull;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import javax.validation.constraints.Pattern;

@Entity
@Table(name = "News")
public class News {

    @Id
    @Column(name = "id",nullable = false)
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @GenericGenerator(name = "increment", strategy = "increment")
    int id;
    @NotNull
    @Pattern(regexp="^N[0-9]{3}")
    @Column(name = "code",nullable = false)
    private String code;
    @NotNull
    @Column(name = "Detail",nullable = false)
    private String Detail;
    @Column(name = "NewsDate")
    private String NewsDate;
    @Column(name = "NewsTime")
    private String  NewsTime;
    @NotNull
    @Column(name = "headlines",nullable = false)
    private String headlines;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getHeadlines() {
        return headlines;
    }

    public void setHeadlines(String headlines) {
        this.headlines = headlines;
    }

    public String getDetail() {
        return Detail;
    }

    public void setDetail(String detail) {
        Detail = detail;
    }

    public String getNewsDate() {
        return NewsDate;
    }

    public void setNewsDate(String newsDate) {
        NewsDate = newsDate;
    }

    public String getNewsTime() {
        return NewsTime;
    }

    public void setNewsTime(String newsTime) {
        NewsTime = newsTime;
    }


    public void fill(News news) {
        this.code = news.getCode();
        this.headlines = news.getHeadlines();
        this.Detail = news.getDetail();
        this.NewsDate = news.getNewsDate();
        this.NewsTime = news.getNewsTime();
    }
}
