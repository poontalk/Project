package org.itsci.projectmovie.service;

import org.itsci.projectmovie.model.Showtime;

import java.util.List;

public interface ShowtimeService {

    List<Showtime> getShowtime();
    void saveShowtime(Showtime showtime);
    Showtime getShowtime(int Sid);
    void deleteShowtime(int Sid);
    void updateShowtime(Showtime ShowtimeEntity, Showtime showtime);
}
