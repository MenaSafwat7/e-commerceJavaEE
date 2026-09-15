package service;

import model.entity.Category;
import model.entity.Product;

import java.sql.SQLException;
import java.util.List;

public interface ProductService {
    List<Product> browseProduct();
    Product searchProducts(String name);
    Product viewProductDetails(int productId);
    void createProduct(Product product);
    Product viewProduct();
    void updateProduct(Product product);
    void deleteProduct(int productId);
    void updateStock(int productId, int stock);


}

