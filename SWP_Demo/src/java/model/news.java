/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author lenovo
 */
public class news {
    String newsName;
    String newsDetail;
    String time;
    String day;
    String picture;
    String postBy;

    public news() {
    }

    public news(String newsName, String newsDetail, String time, String day, String picture, String postBy) {
        this.newsName = newsName;
        this.newsDetail = newsDetail;
        this.time = time;
        this.day = day;
        this.picture = picture;
        this.postBy = postBy;
    }

    public String getNewsName() {
        return newsName;
    }

    public void setNewsName(String newsName) {
        this.newsName = newsName;
    }

    public String getNewsDetail() {
        return newsDetail;
    }

    public void setNewsDetail(String newsDetail) {
        this.newsDetail = newsDetail;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getDay() {
        return day;
    }

    public void setDay(String day) {
        this.day = day;
    }

    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture;
    }

    public String getPostBy() {
        return postBy;
    }

    public void setPostBy(String postBy) {
        this.postBy = postBy;
    }

    @Override
    public String toString() {
        return "news{" + "newsName=" + newsName + ", newsDetail=" + newsDetail + ", time=" + time + ", day=" + day + ", picture=" + picture + ", postBy=" + postBy + '}';
    }
    
}
