package com.mine.wine.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="wines")
public class ProductEntity {

    @Id
    @Column(name="productId")
    @GeneratedValue(strategy=GenerationType.AUTO)
    private Integer productId;
     
    @Column(name="productType")
    private String productType;
     
    @Column(name="brand")
    private String brand;
     
    @Column(name="year")
    private String year;
    
    @Column(name="price")
    private int price;
    
    @Column(name="productName")
    private String productName;
    
    @Column(name="imageName")
    private String imageName;

	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}

	
	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public Integer getProductId() {
		return productId;
	}

	public void setProductId(Integer productId) {
		this.productId = productId;
	}

	public String getProductType() {
		return productType;
	}

	public void setProductType(String productType) {
		this.productType = productType;
	}
	public String getBrand() {
		return brand;
	}

	public void setBrand(String brand) {
		this.brand = brand;
	}
	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public String getImageName() {
		return imageName;
	}

	public void setImageName(String imageName) {
		this.imageName = imageName;
	}

}
