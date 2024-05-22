/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author lenovo
 */
public class student {

    String rollName;
    String fullname;
    String campus;
    String phoneNumber;
    String gender;
    String email;
    String term;
    float balance;
    String gmail;
   
    public student() {
    }

    public student(String rollName, String fullname, String campus, String phoneNumber, String gender, String email, String term, float balance, String gmail) {
        this.rollName = rollName;
        this.fullname = fullname;
        this.campus = campus;
        this.phoneNumber = phoneNumber;
        this.gender = gender;
        this.email = email;
        this.term = term;
        this.balance = balance;
        this.gmail = gmail;
    }

    public String getRollName() {
        return rollName;
    }

    public void setRollName(String rollName) {
        this.rollName = rollName;
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
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

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTerm() {
        return term;
    }

    public void setTerm(String term) {
        this.term = term;
    }

    public float getBalance() {
        return balance;
    }

    public void setBalance(float balance) {
        this.balance = balance;
    }

    public String getGmail() {
        return gmail;
    }

    public void setGmail(String gmail) {
        this.gmail = gmail;
    }

    @Override
    public String toString() {
        return "student{" + "rollName=" + rollName + ", fullname=" + fullname + ", campus=" + campus + ", phoneNumber=" + phoneNumber + ", gender=" + gender + ", email=" + email + ", term=" + term + ", balance=" + balance + ", gmail=" + gmail + '}';
    }

   
    

    
}
