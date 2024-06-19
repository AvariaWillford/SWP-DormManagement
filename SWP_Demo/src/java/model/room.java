/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author lenovo
 */
public class room {
    int roomID;
    int dormID;
    int status;
    String roomType;

    public room() {
    }

    public room(int roomID, int dormID, int status, String roomType) {
        this.roomID = roomID;
        this.dormID = dormID;
        this.status = status;
        this.roomType = roomType;
    }

    public int getRoomID() {
        return roomID;
    }

    public void setRoomID(int roomID) {
        this.roomID = roomID;
    }

    public int getDormID() {
        return dormID;
    }

    public void setDormID(int dormID) {
        this.dormID = dormID;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getRoomType() {
        return roomType;
    }

    public void setRoomType(String roomType) {
        this.roomType = roomType;
    }

    @Override
    public String toString() {
        return "room{" + "roomID=" + roomID + ", dormID=" + dormID + ", status=" + status + ", roomType=" + roomType + '}';
    }
    
}
