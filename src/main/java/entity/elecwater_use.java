package entity;

public class elecwater_use {
    private String usageID,studentID,type,block,month_year;
    private float left_meter,right_meter,your_usage,your_over_usage,block_actual_usage,block_over_usage;

    public elecwater_use() {
    }

    public elecwater_use(String usageID, String studentID, String type, String block, String month_year, float left_meter, float right_meter, float your_usage, float your_over_usage, float block_actual_usage, float block_over_usage) {
        this.usageID = usageID;
        this.studentID = studentID;
        this.type = type;
        this.block = block;
        this.month_year = month_year;
        this.left_meter = left_meter;
        this.right_meter = right_meter;
        this.your_usage = your_usage;
        this.your_over_usage = your_over_usage;
        this.block_actual_usage = block_actual_usage;
        this.block_over_usage = block_over_usage;
    }

    public String getUsageID() {
        return usageID;
    }

    public void setUsageID(String usageID) {
        this.usageID = usageID;
    }

    public String getStudentID() {
        return studentID;
    }

    public void setStudentID(String studentID) {
        this.studentID = studentID;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getBlock() {
        return block;
    }

    public void setBlock(String block) {
        this.block = block;
    }

    public String getMonth_year() {
        return month_year;
    }

    public void setMonth_year(String month_year) {
        this.month_year = month_year;
    }

    public float getLeft_meter() {
        return left_meter;
    }

    public void setLeft_meter(float left_meter) {
        this.left_meter = left_meter;
    }

    public float getRight_meter() {
        return right_meter;
    }

    public void setRight_meter(float right_meter) {
        this.right_meter = right_meter;
    }

    public float getYour_usage() {
        return your_usage;
    }

    public void setYour_usage(float your_usage) {
        this.your_usage = your_usage;
    }

    public float getYour_over_usage() {
        return your_over_usage;
    }

    public void setYour_over_usage(float your_over_usage) {
        this.your_over_usage = your_over_usage;
    }

    public float getBlock_actual_usage() {
        return block_actual_usage;
    }

    public void setBlock_actual_usage(float block_actual_usage) {
        this.block_actual_usage = block_actual_usage;
    }

    public float getBlock_over_usage() {
        return block_over_usage;
    }

    public void setBlock_over_usage(float block_over_usage) {
        this.block_over_usage = block_over_usage;
    }
}
