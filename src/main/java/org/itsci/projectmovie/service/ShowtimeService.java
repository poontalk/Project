package org.itsci.projectmovie.service;

import org.itsci.projectmovie.model.Showtime;

import java.util.List;

public interface ShowtimeService {

    List<Showtime> getShowtime();
    public void saveShowtime(Showtime showtime);
    Showtime getShowtime(int id);
    void deleteShowtime(int id);
    void updateShowtime(Showtime ShowtimeEntity, Showtime showtime);
}
