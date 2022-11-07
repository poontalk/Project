package org.itsci.projectmovie.service;

import org.itsci.projectmovie.model.Movies;
import org.itsci.projectmovie.model.News;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

public interface NewsService {
    List<News> getNewsFeed();
    public void saveNews(News news);
    News getNews(int id);

    @Transactional
    void deleteNews(int id);

    void updateNews(News dbNews, News news);




}
