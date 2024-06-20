/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.Date;

/**
 *
 * @author lenovo
 */
public class dormResident {
    Date checkInDate;
    int userID;
    Date checkOutDate;
    int bedID;

    public dormResident() {
    }

    public dormResident(Date checkInDate, int userID, Date checkOutDate, int bedID) {
        this.checkInDate = checkInDate;
        this.userID = userID;
        this.checkOutDate = checkOutDate;
        this.bedID = bedID;
    }

    public dormResident(int bedID) {
        this.bedID = bedID;
    }

    public dormResident(String bedName) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    

    public Date getCheckInDate() {
        return checkInDate;
    }

    public void setCheckInDate(Date checkInDate) {
        this.checkInDate = checkInDate;
    }

    public int getUserID() {
        return userID;
    }

    public void setUserID(int userID) {
        this.userID = userID;
    }

    public Date getCheckOutDate() {
        return checkOutDate;
    }

    public void setCheckOutDate(Date checkOutDate) {
        this.checkOutDate = checkOutDate;
    }

    public int getBedID() {
        return bedID;
    }

    public void setBedID(int bedID) {
        this.bedID = bedID;
    }

    @Override
    public String toString() {
        return "dormResident{" + "checkInDate=" + checkInDate + ", userID=" + userID + ", checkOutDate=" + checkOutDate + ", bedID=" + bedID + '}';
    }
    
}
