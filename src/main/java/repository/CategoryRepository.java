package repository;

import model.entity.Category;
import utils.DBConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CategoryRepository {
    public List<Category> findAll() throws SQLException {
        List<Category> categories = new ArrayList<>();
        String sql = "SELECT id, name, description, isactive FROM categories WHERE isactive = TRUE ORDER BY name";

        try (Connection connection = DBConnection.getConnection();
             PreparedStatement statement = connection.prepareStatement(sql);
             ResultSet result = statement.executeQuery()) {
            while (result.next()) {
                categories.add(new Category(
                        result.getString("id"),
                        result.getString("name"),
                        result.getString("description"),
                        result.getBoolean("isactive")
                ));
            }
        }

        return categories;
    }

    public Category findById(String id) throws SQLException {
        String sql = "SELECT id, name, description, isactive FROM categories WHERE id = ? AND isactive = TRUE";

        try (Connection connection = DBConnection.getConnection();
             PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, id);

            try (ResultSet result = statement.executeQuery()) {
                if (result.next()) {
                    return new Category(
                            result.getString("id"),
                            result.getString("name"),
                            result.getString("description"),
                            result.getBoolean("isactive")
                    );
                }
            }
        }

        return null;
    }

    public boolean nameExists(String name, String Id) throws SQLException {
        String sql = "SELECT id FROM categories WHERE LOWER(name) = LOWER(?) AND id <> ?";

        try (Connection connection = DBConnection.getConnection();
             PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, name);
            statement.setString(2, Id);

            try (ResultSet result = statement.executeQuery()) {
                return result.next();
            }
        }
    }

    public void save(Category category) throws SQLException {
        String sql = "INSERT INTO categories (id, name, description, isactive) VALUES (?, ?, ?, TRUE)";

        try (Connection connection = DBConnection.getConnection();
             PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, category.getId());
            statement.setString(2, category.getName());
            statement.setString(3, category.getDescription());
            statement.executeUpdate();
        }
    }

    public void update(Category category) throws SQLException {
        String sql = "UPDATE categories SET name = ?, description = ? WHERE id = ? AND isactive = TRUE";

        try (Connection connection = DBConnection.getConnection();
             PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, category.getName());
            statement.setString(2, category.getDescription());
            statement.setString(3, category.getId());
            statement.executeUpdate();
        }
    }

    public void delete(String id) throws SQLException {
        String sql = "UPDATE categories SET isactive = FALSE WHERE id = ?";

        try (Connection connection = DBConnection.getConnection();
             PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, id);
            statement.executeUpdate();
        }
    }
}
