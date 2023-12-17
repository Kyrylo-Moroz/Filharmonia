package bdbt_project.Filharmonia.services;

import bdbt_project.Filharmonia.models.Product;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class ProductService {
    private List<Product> products = new ArrayList<>();
    private long ID = 0;

    {
        products.add(new Product(++ID,"Ps5","simple",12000,"Warszawa","Ja"));
        products.add(new Product(++ID,"Iphone 15","simple",100000,"Gdańsk","Piotr"));
    }

    public List<Product> listProducts() {return products; }

    public void saveProduct(Product product){
        product.setId(++ID);
        products.add(product);
    }

    public void deleteProduct(Long id) {
        products.removeIf(product -> product.getId().equals(id));
    }

    public Product getProductById(Long id) {
        for (Product product : products) {
            if (product.getId().equals(id)) return product;
        }
        return null;
    }

}
