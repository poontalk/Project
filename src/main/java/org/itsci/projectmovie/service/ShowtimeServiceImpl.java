package org.itsci.projectmovie.service;

import org.itsci.projectmovie.dao.MovieDao;
import org.itsci.projectmovie.dao.ShowtimeDao;
import org.itsci.projectmovie.model.Category;
import org.itsci.projectmovie.model.Showtime;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

@Service
public class ShowtimeServiceImpl implements ShowtimeService{

    @Autowired
    private ShowtimeDao ShowtimeDao;


    @Override
    @Transactional
    public List<Showtime> getShowtime() {
        return ShowtimeDao.getShowtime();
    }

    @Override
    @Transactional
    public void saveShowtime(Showtime showtime) {
        ShowtimeDao.saveShowtime(showtime);
    }

    @Override
    @Transactional
    public Showtime getShowtime(int id) {
        return ShowtimeDao.getShowtime(id);
    }

    @Override
    @Transactional
    public void deleteShowtime(int id) {
        ShowtimeDao.getShowtime(id);
    }

    @Override
    @Transactional
    public void updateShowtime(Showtime ShowtimeEntity, Showtime showtime) {
        ShowtimeEntity.fill(showtime);
        saveShowtime(ShowtimeEntity);
    }
}
