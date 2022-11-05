package org.itsci.projectmovie.dao;

import org.itsci.projectmovie.model.Movies;

import java.util.List;

public interface MovieDao {
    List<Movies> getMovies();
    void saveMovies(Movies movie);
    Movies getMovies(int id);
    void deleteMovies(int id);
}
