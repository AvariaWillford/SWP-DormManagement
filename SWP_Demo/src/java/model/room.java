/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author anhem
 */
public class room {
    private String roomName;
    private String dormName;

    public room() {
    }

    public room(String roomName, String dormName) {
        this.roomName = roomName;
        this.dormName = dormName;
    }

    public String getRoomName() {
        return roomName;
    }

    public void setRoomName(String roomName) {
        this.roomName = roomName;
    }

    public String getDormName() {
        return dormName;
    }

    public void setDormName(String dormName) {
        this.dormName = dormName;
    }

    @Override
    public String toString() {
        return "room{" + "roomName=" + roomName + ", dormName=" + dormName + '}';
    }

  
    
}
