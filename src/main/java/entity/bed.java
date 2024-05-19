package entity;

public class bed {
    private String bedID,studentID,bedName;
    private float price;

    public bed() {
    }

    public bed(String bedID, String studentID, String bedName, float price) {
        this.bedID = bedID;
        this.studentID = studentID;
        this.bedName = bedName;
        this.price = price;
    }

    public String getBedID() {
        return bedID;
    }

    public void setBedID(String bedID) {
        this.bedID = bedID;
    }

    public String getStudentID() {
        return studentID;
    }

    public void setStudentID(String studentID) {
        this.studentID = studentID;
    }

    public String getBedName() {
        return bedName;
    }

    public void setBedName(String bedName) {
        this.bedName = bedName;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }
}
