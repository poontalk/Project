package org.itsci.projectmovie.service;

import org.itsci.projectmovie.model.Category;

import java.util.List;

public interface CategoryService {
    List<Category> getCategories();

    void saveCategory(Category movie);

    Category getCategory(int id);

    void deleteCategory(int id);

    Category getCategoryByCode(String code);

    void updateCategory(Category dbCategory, Category category);
}
