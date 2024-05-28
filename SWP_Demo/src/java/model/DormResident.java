/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author lenovo
 */
public class DormResident {
    String rollName;
    String bedName;

    public DormResident() {
    }

    public DormResident(String rollName, String bedName) {
        this.rollName = rollName;
        this.bedName = bedName;
    }

    public String getRollName() {
        return rollName;
    }

    public void setRollName(String rollName) {
        this.rollName = rollName;
    }

    public String getBedName() {
        return bedName;
    }

    public void setBedName(String bedName) {
        this.bedName = bedName;
    }

    @Override
    public String toString() {
        return "DormResident{" + "rollName=" + rollName + ", bedName=" + bedName + '}';
    }
    
}
