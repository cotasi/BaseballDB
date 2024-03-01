package dao;

import java.util.ArrayList;

import dto.Product;

public class ProductRepository {
	
	private ArrayList<Product> listOfProducts = new ArrayList<Product>();
	private static ProductRepository instance = new ProductRepository();
	
	public static ProductRepository getInstance() {
		
		return instance;
		
	}
	
	public ProductRepository() {
		
		Product figure1 = new Product("저스틴 터너","Justin Turner");
		figure1.setUnitprice(100000);
		figure1.setPid("A123");
		figure1.setMan("Apple");
		figure1.setUnitcoupon(5);
		figure1.setFilename("mlb_figure_01.png");
		
		Product figure2 = new Product("저스틴 터너1","Justin Turner1");
		figure2.setUnitprice(100000);
		figure2.setPid("A123");
		figure2.setMan("Apple");
		figure1.setFilename("mlb_figure_01.png");
		
		Product figure3 = new Product("저스틴 터너","Justin Turner");
		figure3.setUnitprice(100000);
		figure3.setPid("A123");
		figure3.setMan("Apple");
		figure1.setFilename("mlb_figure_01.png");
		
		listOfProducts.add(figure1);
		listOfProducts.add(figure2);
		listOfProducts.add(figure3);
		
		
	}

	public ArrayList<Product> getAllProducts() {
		
		return listOfProducts;
		
	}
	
	public Product getProductById(String pid) {
		
		Product productById = null;
		
		for(int i=0;i<listOfProducts.size();i++) {
			
			Product product = listOfProducts.get(i);
			
			if(product != null && product.getPid() != null && product.getPid().equals(pid)) {
				
				productById = product;
				
				break;
				
			}
			
			
		}
		
		return productById;
		
	}
	
	public void addProduct(Product product) {
		
		listOfProducts.add(product);
	}
	
	
}
