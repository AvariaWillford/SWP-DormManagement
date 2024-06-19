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
public class roomBill {
    int roomID;
    int numberElecUsage;
    int numberWaterUsage;
    int billID;
    Date dayCreate;

    public roomBill(int roomID, int numberElecUsage, int numberWaterUsage, int billID, Date dayCreate) {
        this.roomID = roomID;
        this.numberElecUsage = numberElecUsage;
        this.numberWaterUsage = numberWaterUsage;
        this.billID = billID;
        this.dayCreate = dayCreate;
    }

    public roomBill() {
    }

    public int getRoomID() {
        return roomID;
    }

    public void setRoomID(int roomID) {
        this.roomID = roomID;
    }

    public int getNumberElecUsage() {
        return numberElecUsage;
    }

    public void setNumberElecUsage(int numberElecUsage) {
        this.numberElecUsage = numberElecUsage;
    }

    public int getNumberWaterUsage() {
        return numberWaterUsage;
    }

    public void setNumberWaterUsage(int numberWaterUsage) {
        this.numberWaterUsage = numberWaterUsage;
    }

    public int getBillID() {
        return billID;
    }

    public void setBillID(int billID) {
        this.billID = billID;
    }

    public Date getDayCreate() {
        return dayCreate;
    }

    public void setDayCreate(Date dayCreate) {
        this.dayCreate = dayCreate;
    }

    @Override
    public String toString() {
        return "roomBill{" + "roomID=" + roomID + ", numberElecUsage=" + numberElecUsage + ", numberWaterUsage=" + numberWaterUsage + ", billID=" + billID + ", dayCreate=" + dayCreate + '}';
    }
    
}
