/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author lenovo
 */
public class Users {
    int userID;
    String rollName;
    String fullName;
    String campus;
    String phoneNumber;
    String gender;
    String term;
    Float balance;
    String gmail;
    int roleID;

    public Users() {
    }

    public Users(int userID, String rollName, String fullName, String campus, String phoneNumber, String gender, String term, Float balance, String gmail, int roleID) {
        this.userID = userID;
        this.rollName = rollName;
        this.fullName = fullName;
        this.campus = campus;
        this.phoneNumber = phoneNumber;
        this.gender = gender;
        this.term = term;
        this.balance = balance;
        this.gmail = gmail;
        this.roleID = roleID;
    }

    public int getUserID() {
        return userID;
    }

    public void setUserID(int userID) {
        this.userID = userID;
    }

    public String getRollName() {
        return rollName;
    }

    public void setRollName(String rollName) {
        this.rollName = rollName;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getCampus() {
        return campus;
    }

    public void setCampus(String campus) {
        this.campus = campus;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getTerm() {
        return term;
    }

    public void setTerm(String term) {
        this.term = term;
    }

    public Float getBalance() {
        return balance;
    }

    public void setBalance(Float balance) {
        this.balance = balance;
    }

    public String getGmail() {
        return gmail;
    }

    public void setGmail(String gmail) {
        this.gmail = gmail;
    }

    public int getRoleID() {
        return roleID;
    }

    public void setRoleID(int roleID) {
        this.roleID = roleID;
    }

    @Override
    public String toString() {
        return "Users{" + "userID=" + userID + ", rollName=" + rollName + ", fullName=" + fullName + ", campus=" + campus + ", phoneNumber=" + phoneNumber + ", gender=" + gender + ", term=" + term + ", balance=" + balance + ", gmail=" + gmail + ", roleID=" + roleID + '}';
    }
    
}
