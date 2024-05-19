package entity;

public class payment_history {
    private String paymentID, studentID, accountID, time, trans_code;
    private float amount_of_money;

    public payment_history() {
    }

    public payment_history(String paymentID, String studentID, String accountID, String time, String trans_code, float amount_of_money) {
        this.paymentID = paymentID;
        this.studentID = studentID;
        this.accountID = accountID;
        this.time = time;
        this.trans_code = trans_code;
        this.amount_of_money = amount_of_money;
    }

    public String getPaymentID() {
        return paymentID;
    }

    public void setPaymentID(String paymentID) {
        this.paymentID = paymentID;
    }

    public String getStudentID() {
        return studentID;
    }

    public void setStudentID(String studentID) {
        this.studentID = studentID;
    }

    public String getAccountID() {
        return accountID;
    }

    public void setAccountID(String accountID) {
        this.accountID = accountID;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getTrans_code() {
        return trans_code;
    }

    public void setTrans_code(String trans_code) {
        this.trans_code = trans_code;
    }

    public float getAmount_of_money() {
        return amount_of_money;
    }

    public void setAmount_of_money(float amount_of_money) {
        this.amount_of_money = amount_of_money;
    }
}
