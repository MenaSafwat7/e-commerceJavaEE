package service.impl;

import model.entity.Category;
import repository.CategoryRepository;
import service.CategoryService;

import java.sql.SQLException;
import java.util.List;
import java.util.UUID;

public class CategoryServiceImpl implements CategoryService {
    private final CategoryRepository categoryRepository;

    public CategoryServiceImpl() {
        categoryRepository = new CategoryRepository();
    }

    @Override
    public List<Category> getAllCategories() throws SQLException {
        return categoryRepository.findAll();
    }

    @Override
    public Category getCategoryById(String id) throws SQLException {
        return categoryRepository.findById(id);
    }

    @Override
    public void addCategory(String name, String description) throws SQLException {
        validate(name, description, "");
        categoryRepository.save(new Category(UUID.randomUUID().toString(), name.trim(), cleanDescription(description)));
    }

    @Override
    public void updateCategory(String id, String name, String description) throws SQLException {
        if (categoryRepository.findById(id) == null) {
            throw new IllegalArgumentException("Category not found");
        }

        validate(name, description, id);
        categoryRepository.update(new Category(id, name.trim(), cleanDescription(description), true));
    }

    @Override
    public void deleteCategory(String id) throws SQLException {
        if (categoryRepository.findById(id) == null) {
            throw new IllegalArgumentException("Category not found");
        }

        categoryRepository.delete(id);
    }

    private void validate(String name, String description, String Id) throws SQLException {
        if (name == null || name.trim().isEmpty()) {
            throw new IllegalArgumentException("Category name is required");
        }

        if (name.trim().length() > 50) {
            throw new IllegalArgumentException("Category name is too long");
        }

        if (description != null && description.trim().length() > 100) {
            throw new IllegalArgumentException("Category description is too long");
        }

        if (categoryRepository.nameExists(name.trim(), Id)) {
            throw new IllegalArgumentException("Category name already exists");
        }
    }

    private String cleanDescription(String description) {
        if (description == null) {
            return "";
        }
        return description.trim();
    }
}
