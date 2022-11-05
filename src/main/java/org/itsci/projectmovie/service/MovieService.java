package org.itsci.projectmovie.service;

import org.itsci.projectmovie.model.Movies;

import java.util.List;

public interface MovieService {
    List<Movies> getMovies();
    public void saveMovies(Movies movie);
    Movies getMovies(int id);
    void deleteMovies(int id);
    void updateMovie(Movies MovieEntity, Movies movie);

}
