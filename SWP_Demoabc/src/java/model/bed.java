/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author lenovo
 */
public class bed {
    String bedName;
    int status;
    float price;

    public bed(String bedName, int status, float price) {
        this.bedName = bedName;
        this.status = status;
        this.price = price;
    }

    public bed() {
    }

    public String getBedName() {
        return bedName;
    }

    public void setBedName(String bedName) {
        this.bedName = bedName;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    @Override
    public String toString() {
        return "bed{" + "bedName=" + bedName + ", status=" + status + ", price=" + price + '}';
    }
    
}
