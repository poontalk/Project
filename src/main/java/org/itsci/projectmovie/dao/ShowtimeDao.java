package org.itsci.projectmovie.dao;

import org.itsci.projectmovie.model.Movies;
import org.itsci.projectmovie.model.Showtime;

import java.util.List;

public interface ShowtimeDao {

    List<Showtime> getShowtime();
    void saveShowtime(Showtime showtime);
    Showtime getShowtime(int id);
    void deleteShowtime(int id);

}
