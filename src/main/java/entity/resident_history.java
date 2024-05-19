package entity;

public class resident_history {
    private String residentID,studentID,bed_information,semester,check_in_date,check_out_date,year;
    private float left_meter_number;

    public resident_history() {
    }

    public resident_history(String residentID, String studentID, String bed_information, String semester, String check_in_date, String check_out_date, String year, float left_meter_number) {
        this.residentID = residentID;
        this.studentID = studentID;
        this.bed_information = bed_information;
        this.semester = semester;
        this.check_in_date = check_in_date;
        this.check_out_date = check_out_date;
        this.year = year;
        this.left_meter_number = left_meter_number;
    }

    public String getResidentID() {
        return residentID;
    }

    public void setResidentID(String residentID) {
        this.residentID = residentID;
    }

    public String getStudentID() {
        return studentID;
    }

    public void setStudentID(String studentID) {
        this.studentID = studentID;
    }

    public String getBed_information() {
        return bed_information;
    }

    public void setBed_information(String bed_information) {
        this.bed_information = bed_information;
    }

    public String getSemester() {
        return semester;
    }

    public void setSemester(String semester) {
        this.semester = semester;
    }

    public String getCheck_in_date() {
        return check_in_date;
    }

    public void setCheck_in_date(String check_in_date) {
        this.check_in_date = check_in_date;
    }

    public String getCheck_out_date() {
        return check_out_date;
    }

    public void setCheck_out_date(String check_out_date) {
        this.check_out_date = check_out_date;
    }

    public String getYear() {
        return year;
    }

    public void setYear(String year) {
        this.year = year;
    }

    public float getLeft_meter_number() {
        return left_meter_number;
    }

    public void setLeft_meter_number(float left_meter_number) {
        this.left_meter_number = left_meter_number;
    }
}
