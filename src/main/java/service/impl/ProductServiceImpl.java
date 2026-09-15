package service.impl;

import model.entity.Product;
import service.ProductService;

import java.util.List;

public class ProductServiceImpl implements ProductService {
    @Override
    public List<Product> browseProduct() {
        return List.of();
    }

    @Override
    public Product searchProducts(String name) {
        return null;
    }

    @Override
    public Product viewProductDetails(int ProductId) {
        return null;
    }

    @Override
    public void createProduct(Product product) {

    }

    @Override
    public Product viewProduct() {
        return null;
    }

    @Override
    public void updateProduct(Product product) {

    }

    @Override
    public void deleteProduct(int productId) {

    }

    @Override
    public void updateStock( int productId, int stock) {

    }
}
