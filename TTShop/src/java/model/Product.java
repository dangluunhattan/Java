/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author TAN
 */
public class Product {
     private long productID;     
     private long categoryID;     
     private String productName;     
     private String productImage; 
     private double productPrice;    
     private double productView;    
     private double productBuyed;
     private String productWarranty;
     private double productRate_total;
     private double productRate_count;    
     private String productGifts;
     private String productContent;
      private String productDescription;

    public Product() {
    }

    public Product(long productID, long categoryID, String productName, String productImage, double productPrice, double productView, double productBuyed, String productWarranty, double productRate_total, double productRate_count, String productGifts, String productContent, String productDescription) {
        this.productID = productID;
        this.categoryID = categoryID;
        this.productName = productName;
        this.productImage = productImage;
        this.productPrice = productPrice;
        this.productView = productView;
        this.productBuyed = productBuyed;
        this.productWarranty = productWarranty;
        this.productRate_total = productRate_total;
        this.productRate_count = productRate_count;
        this.productGifts = productGifts;
        this.productContent = productContent;
        this.productDescription = productDescription;
    }

    public long getProductID() {
        return productID;
    }

    public void setProductID(long productID) {
        this.productID = productID;
    }

    public long getCategoryID() {
        return categoryID;
    }

    public void setCategoryID(long categoryID) {
        this.categoryID = categoryID;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getProductImage() {
        return productImage;
    }

    public void setProductImage(String productImage) {
        this.productImage = productImage;
    }

    public double getProductPrice() {
        return productPrice;
    }

    public void setProductPrice(double productPrice) {
        this.productPrice = productPrice;
    }

    public double getProductView() {
        return productView;
    }

    public void setProductView(double productView) {
        this.productView = productView;
    }

    public double getProductBuyed() {
        return productBuyed;
    }

    public void setProductBuyed(double productBuyed) {
        this.productBuyed = productBuyed;
    }

    public String getProductWarranty() {
        return productWarranty;
    }

    public void setProductWarranty(String productWarranty) {
        this.productWarranty = productWarranty;
    }

    public double getProductRate_total() {
        return productRate_total;
    }

    public void setProductRate_total(double productRate_total) {
        this.productRate_total = productRate_total;
    }

    public double getProductRate_count() {
        return productRate_count;
    }

    public void setProductRate_count(double productRate_count) {
        this.productRate_count = productRate_count;
    }

    public String getProductGifts() {
        return productGifts;
    }

    public void setProductGifts(String productGifts) {
        this.productGifts = productGifts;
    }

    public String getProductContent() {
        return productContent;
    }

    public void setProductContent(String productContent) {
        this.productContent = productContent;
    }

    public String getProductDescription() {
        return productDescription;
    }

    public void setProductDescription(String productDescription) {
        this.productDescription = productDescription;
    }

    
     
}
