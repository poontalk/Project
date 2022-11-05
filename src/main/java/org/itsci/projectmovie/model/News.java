package org.itsci.projectmovie.model;


import com.sun.istack.NotNull;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import javax.validation.constraints.Pattern;

@Entity
@Table(name = "News")
public class News {

    @Id
    @Column(name = "Nid",nullable = false)
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @GenericGenerator(name = "increment", strategy = "increment")
    int Nid;

    @NotNull
    @Pattern(regexp="^N[0-9]{3}")
    @Column(name = "code",nullable = false)
    private String code;

    @NotNull
    @Column(name = "headlines",nullable = false)
    private String headlines;

    @NotNull
    @Column(name = "Detail",nullable = false)
    private String Detail;

    public int getNid() {
        return Nid;
    }

    public void setNid(int nid) {
        Nid = nid;
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
}
