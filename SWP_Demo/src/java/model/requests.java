/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author lenovo
 */
public class requests {
    int requestID;
    String requestType;
    String rollName;
    String requestDetail;
    int userID;

    public requests() {
    }

    public requests(int requestID, String requestType, String rollName, String requestDetail, int userID) {
        this.requestID = requestID;
        this.requestType = requestType;
        this.rollName = rollName;
        this.requestDetail = requestDetail;
        this.userID = userID;
    }

    public int getRequestID() {
        return requestID;
    }

    public void setRequestID(int requestID) {
        this.requestID = requestID;
    }

    public String getRequestType() {
        return requestType;
    }

    public void setRequestType(String requestType) {
        this.requestType = requestType;
    }

    public String getRollName() {
        return rollName;
    }

    public void setRollName(String rollName) {
        this.rollName = rollName;
    }

    public String getRequestDetail() {
        return requestDetail;
    }

    public void setRequestDetail(String requestDetail) {
        this.requestDetail = requestDetail;
    }

    public int getUserID() {
        return userID;
    }

    public void setUserID(int userID) {
        this.userID = userID;
    }

    @Override
    public String toString() {
        return "requests{" + "requestID=" + requestID + ", requestType=" + requestType + ", rollName=" + rollName + ", requestDetail=" + requestDetail + ", userID=" + userID + '}';
    }
    
}
