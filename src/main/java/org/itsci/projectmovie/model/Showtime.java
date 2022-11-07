package org.itsci.projectmovie.model;

import com.sun.istack.NotNull;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import javax.validation.constraints.Pattern;
import java.util.Date;

@Entity
@Table(name = "showtime")
public class Showtime {

    public void fill(Showtime showtime) {
        this.code = showtime.getCode();
        this.ShowtimeDate = showtime.getShowtimeDate();
        this.Time = showtime.getTime();
    }

    @Id
    @Column(name = "Sid", nullable = false)
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    @GenericGenerator(name = "increment", strategy = "increment")
    int Sid;

    @NotNull
    @Pattern(regexp="^S[0-9]{3}")
    @Column(name = "code",nullable = false, unique = true)
    private String code;

    @NotNull
    @Column(name = "date",nullable = false)
    private String ShowtimeDate;

    @NotNull
    @Column(name = "time",nullable = false)
    private String Time;

    public int getSid() {
        return Sid;
    }

    public void setSid(int sid) {
        Sid = sid;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getShowtimeDate() {
        return ShowtimeDate;
    }

    public void setShowtimeDate(String showtimeDate) {
        ShowtimeDate = showtimeDate;
    }

    public String getTime() {
        return Time;
    }

    public void setTime(String time) {
        Time = time;
    }
}
