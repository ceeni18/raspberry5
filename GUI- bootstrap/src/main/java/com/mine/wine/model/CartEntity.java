package com.mine.wine.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="shoppingCart")
public class CartEntity {
    
	
	@Column(name="buyerId")
	private int buyerId;
	  
    @Id
    @Column(name="cartItemId")
    @GeneratedValue(strategy=GenerationType.AUTO)
    private Integer cartItemId;
    
    @Column(name="productId")
    private int productId;
     
    @Column(name="productType")
    private String productType;
 
    @Column(name="quantity")
    private Integer quantity;
     
    @Column(name="brand")
    private String brand;

	@Column(name="price")
    private int price;
     
    
    @Column(name="productName")
    private String productName;
    
    @Column(name="imageName")
    private String imageName;

    
	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public Integer getCartItemId() {
		return cartItemId;
	}

	public void setCartItemId(Integer cartItemId) {
		this.cartItemId = cartItemId;
	}

	public int getBuyerId() {
		return buyerId;
	}

	public void setBuyerId(int buyerId) {
		this.buyerId = buyerId;
	}

	public int getProductId() {
		return productId;
	}

	public void setProductId(int productId) {
		this.productId = productId;
	}

	public String getProductType() {
		return productType;
	}

	public void setProductType(String productType) {
		this.productType = productType;
	}

	public Integer getQuantity() {
		return quantity;
	}

	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
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
