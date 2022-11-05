package org.itsci.projectmovie.service;


import org.itsci.projectmovie.dao.CategoryDao;
import org.itsci.projectmovie.dao.MovieDao;
import org.itsci.projectmovie.model.Category;
import org.itsci.projectmovie.model.Movies;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class MoviesServiceImpl implements MovieService {
    @Autowired
    private MovieDao MovieDao;

    @Autowired
    private CategoryDao categoryDao;

    @Override
    @Transactional
    public List<Movies> getMovies() {
        return MovieDao.getMovies();
    }

    @Override
    @Transactional
    public void saveMovies(Movies movie) {
        Category category = categoryDao.getCategoryByCode(movie.getCategory().getCode());
        movie.setCategory(category);
        MovieDao.saveMovies(movie);
    }

    @Override
    @Transactional
    public Movies getMovies(int id) {
        return MovieDao.getMovies(id);
    }

    @Override
    @Transactional
    public void deleteMovies(int id) {
        MovieDao.deleteMovies(id);
    }

    @Override
    @Transactional
    public void updateMovie(Movies MovieEntity, Movies movie) {
        MovieEntity.fill(movie);
        saveMovies(MovieEntity);
    }
}
