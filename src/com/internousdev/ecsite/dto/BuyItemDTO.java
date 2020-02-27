package com.internousdev.ecsite.dto;

public class BuyItemDTO {
	/*テーブルカラムに対応したフィールド変数を宣言*/
	private int id;
	private String itemName;
	private String itemPrice;
	private int itemStock;

/*フィールド変数に対応したゲット、セットを定義*/
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getItemName() {
		return itemName;
	}
	public void setItemName(String itemName) {
		this.itemName = itemName;
	}
	public String getItemPrice() {
		return itemPrice;
	}
	public void setItemPrice(String itemPrice) {
		this.itemPrice = itemPrice;
	}
	public int getItemStock() {
		return itemStock;
	}
	public void setItemStock(int itemStock) {
		this.itemStock = itemStock;
	}

}
