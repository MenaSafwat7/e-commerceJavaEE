package services.interfaces;

import models.entity.Category;
import java.sql.SQLException;
import java.util.List;

public interface ICategoryService {
    List<Category> getAllCategories() throws SQLException;
    Category getCategoryById(String id) throws SQLException;
    void addCategory(String name, String description) throws SQLException;
    void updateCategory(String id, String name, String description) throws SQLException;
    void deleteCategory(String id) throws SQLException;
}
