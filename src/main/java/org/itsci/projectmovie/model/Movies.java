package org.itsci.projectmovie.model;

import com.sun.istack.NotNull;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import javax.validation.constraints.Pattern;

@Entity
@Table(name = "Movies")
public class Movies {

    public void fill(Movies movie) {
        this.code = movie.getCode();
        this.category = movie.getCategory();
        this.MovieName = movie.getMovieName();
        this.MovieTime = movie.getMovieTime();
        this.AGERange = movie.getAGERange();
        this.MoviePrice = movie.getMoviePrice();
        this.MovieDetail = movie.getMovieDetail();
    }

    @Id
    @Column(name = "Mid", nullable = false)
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    @GenericGenerator(name = "increment", strategy = "increment")
    int Mid;

    @NotNull
    @Pattern(regexp="^M[0-9]{3}")
    @Column(name = "code",nullable = false, unique = true)
    private String code;
    @NotNull
    @Column(name = "MovieName", length = 150, nullable = false, unique = true)
    private String MovieName;
    @NotNull
    @Column(name = "MovieTime")
    private String MovieTime;
    @NotNull
    @Column(name = "AgeRange",nullable = false)
    private String AGERange;
    @NotNull
    @Column(name = "MoviePrice",nullable = false)
    private double MoviePrice;
    @Column(name = "MovieDetail", length = 500)
    private String MovieDetail;

    @NotNull
    @ManyToOne
    @JoinColumn(name = "Cid")
    private Category category;

    public int getMid() {
        return Mid;
    }

    public void setMid(int mid) {
        Mid = mid;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getMovieName() {
        return MovieName;
    }

    public void setMovieName(String movieName) {
        MovieName = movieName;
    }

    public String getMovieTime() {
        return MovieTime;
    }

    public void setMovieTime(String movieTime) {
        MovieTime = movieTime;
    }

    public String getAGERange() {
        return AGERange;
    }

    public void setAGERange(String AGERange) {
        this.AGERange = AGERange;
    }

    public double getMoviePrice() {
        return MoviePrice;
    }

    public void setMoviePrice(double moviePrice) {
        MoviePrice = moviePrice;
    }

    public String getMovieDetail() {
        return MovieDetail;
    }

    public void setMovieDetail(String movieDetail) {
        MovieDetail = movieDetail;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }
}
