/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;
import connect.DBConnect;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList; 
import model.Product;
/**
 *
 * @author TAN
 */
public class ProductDAO {
    public ArrayList<Product> getListProductByCategory(long category_id) throws SQLException {
        Connection connection = DBConnect.getConnection();
        String sql = "SELECT * FROM product WHERE catalog_id = '" + category_id + "'";
        PreparedStatement ps = connection.prepareCall(sql);
        ResultSet rs = ps.executeQuery();
        ArrayList<Product> list = new ArrayList<>();
        while (rs.next()) {
            Product product = new Product();
            product.setProductID(rs.getLong("id"));
            product.setProductName(rs.getString("name"));
            product.setProductImage(rs.getString("image_link"));
            product.setProductPrice(rs.getDouble("price"));
            product.setProductDescription(rs.getString("description"));
            list.add(product);
        }
        return list;
    }
    
  
    
    public Product getProduct(long productID) throws SQLException {      
        Connection connection = DBConnect.getConnection();    
        String sql = "SELECT * FROM product  WHERE id = '" + productID + "'";
        PreparedStatement ps = connection.prepareCall(sql);    
        ResultSet rs = ps.executeQuery();     
        Product product = new Product();    
        while (rs.next()) {        
            product.setProductID(rs.getLong("id"));       
            product.setProductName(rs.getString("name"));    
            product.setProductImage(rs.getString("image_link"));     
            product.setProductPrice(rs.getDouble("price"));        
            product.setProductDescription(rs.getString("description"));     
            product.setProductContent(rs.getString("content"));
            product.setProductView(rs.getDouble("view"));
            product.setProductBuyed(rs.getDouble("buyed"));
            product.setProductWarranty(rs.getString("warranty"));
            product.setProductRate_total(rs.getDouble("rate_total"));
            product.setProductRate_count(rs.getDouble("rate_count"));
            product.setProductGifts(rs.getString("gifts"));
        }    
        return product; 
    }
    
    
    public ArrayList<Product> getListProductByRate() throws SQLException {
        Connection connection = DBConnect.getConnection();
        String sql = "SELECT * FROM product ORDER BY view DESC LIMIT 0, 6";
        PreparedStatement ps = connection.prepareCall(sql);
        ResultSet rs = ps.executeQuery();
        ArrayList<Product> list = new ArrayList<>();
        while (rs.next()) {
            Product product = new Product();
            product.setProductID(rs.getLong("id"));
            product.setProductName(rs.getString("name"));
            product.setProductImage(rs.getString("image_link"));
            product.setProductPrice(rs.getDouble("price"));
            product.setProductDescription(rs.getString("description"));
            list.add(product);
        }
        return list;
    }
    
    
    public static void main(String[] args) throws SQLException {        
        ProductDAO dao = new ProductDAO();      
        for(Product p : dao.getListProductByRate()){       
            System.out.println(p.getProductID() + " - "+p.getProductName());    
        }    
    }
}
