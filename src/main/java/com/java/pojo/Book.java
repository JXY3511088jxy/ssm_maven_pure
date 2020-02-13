package com.java.pojo;

public class Book {

    private int id;

    private String bookName;

    private Float price;

    private Integer num;

    public Book(){};

    public Book(int id, String bookName, Float price, Integer num) {
        this.id = id;
        this.bookName = bookName;
        this.price = price;
        this.num = num;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getBookName() {
        return bookName;
    }

    public void setBookName(String bookName) {
        this.bookName = bookName;
    }

    public Float getPrice() {
        return price;
    }

    public void setPrice(Float price) {
        this.price = price;
    }

    public Integer getNum() {
        return num;
    }

    public void setNum(Integer num) {
        this.num = num;
    }

    @Override
    public String toString() {
        return "Book{" +
                "id=" + id +
                ", bookName='" + bookName + '\'' +
                ", price=" + price +
                ", num=" + num +
                '}';
    }
}
