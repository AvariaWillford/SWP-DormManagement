/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author anhem
 */
public class requests {
    private String requestType;
    private String rollName;
    private String requestDetail;

    public requests() {
    }

    public requests(String requestType, String rollName, String requestDetail) {
        this.requestType = requestType;
        this.rollName = rollName;
        this.requestDetail = requestDetail;
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

    @Override
    public String toString() {
        return "requests{" + "requestType=" + requestType + ", rollName=" + rollName + ", requestDetail=" + requestDetail + '}';
    }
    
    
}
