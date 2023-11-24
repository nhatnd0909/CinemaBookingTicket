package com.project.csm.model;

public class PieChart {
	private String id;
	private String name;
	private double price;
	private int quantity;

	public PieChart() {
		super();
	}

	public PieChart(String id, String name, double price, int quantity) {
		super();
		this.id = id;
		this.name = name;
		this.price = price;
		this.quantity = quantity;
	}

	public PieChart(String name, int quantity) {
		super();
		this.name = name;
		this.quantity = quantity;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	@Override
	public String toString() {
		return "PieChart [id=" + id + ", name=" + name + ", price=" + price + ", quantity=" + quantity + "]";
	}

}
