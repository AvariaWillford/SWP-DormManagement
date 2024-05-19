package entity;

public class student {
    private String studentID,rollname,fullname,campus,bedID,contact,gmail
            ,term,gender,note_for_request,note_for_book_room;
    private float balance;
    public student() {
    }

    public student(String studentID, String rollname, String fullname, String campus, String bedID, String contact, String gmail, String term, String gender, String note_for_request, String note_for_book_room, float balance) {
        this.studentID = studentID;
        this.rollname = rollname;
        this.fullname = fullname;
        this.campus = campus;
        this.bedID = bedID;
        this.contact = contact;
        this.gmail = gmail;
        this.term = term;
        this.gender = gender;
        this.note_for_request = note_for_request;
        this.note_for_book_room = note_for_book_room;
        this.balance = balance;
    }

    public String getStudentID() {
        return studentID;
    }

    public void setStudentID(String studentID) {
        this.studentID = studentID;
    }

    public String getRollname() {
        return rollname;
    }

    public void setRollname(String rollname) {
        this.rollname = rollname;
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

    public String getBedID() {
        return bedID;
    }

    public void setBedID(String bedID) {
        this.bedID = bedID;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    public String getGmail() {
        return gmail;
    }

    public void setGmail(String gmail) {
        this.gmail = gmail;
    }

    public String getTerm() {
        return term;
    }

    public void setTerm(String term) {
        this.term = term;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getNote_for_request() {
        return note_for_request;
    }

    public void setNote_for_request(String note_for_request) {
        this.note_for_request = note_for_request;
    }

    public String getNote_for_book_room() {
        return note_for_book_room;
    }

    public void setNote_for_book_room(String note_for_book_room) {
        this.note_for_book_room = note_for_book_room;
    }

    public float getBalance() {
        return balance;
    }

    public void setBalance(float balance) {
        this.balance = balance;
    }
}
