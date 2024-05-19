package entity;

public class account {
    private String accountID, studentID, username, password, gmail, rolename;

    public account() {
    }

    public account(String accountID, String studentID, String username, String password, String gmail, String rolename) {
        this.accountID = accountID;
        this.studentID = studentID;
        this.username = username;
        this.password = password;
        this.gmail = gmail;
        this.rolename = rolename;

    }

    public String getAccountID() {
        return accountID;
    }

    public void setAccountID(String accountID) {
        this.accountID = accountID;
    }

    public String getStudentID() {
        return studentID;
    }

    public void setStudentID(String studentID) {
        this.studentID = studentID;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getGmail() {
        return gmail;
    }

    public void setGmail(String gmail) {
        this.gmail = gmail;
    }

    public String getRolename() {
        return rolename;
    }

    public void setRolename(String rolename) {
        this.rolename = rolename;
    }
}
