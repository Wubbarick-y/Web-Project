package com.entity;

import java.util.Date;

public class AnnounceMent {
    private int id;
    private Date insertDate;
    private String title;
    private String html;

    private String detail;

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }

    public AnnounceMent(int id, Date insertDate, String title, String html, String detail) {
        this.id = id;
        this.insertDate = insertDate;
        this.title = title;
        this.html = html;
        this.detail = detail;
    }

    public AnnounceMent(int id, Date insertDate, String title, String html) {
        this.id = id;
        this.insertDate = insertDate;
        this.title = title;
        this.html = html;
    }

    @Override
    public String toString() {
        return "AnnounceMent{" +
                "id=" + id +
                ", insertDate=" + insertDate +
                ", title='" + title + '\'' +
                ", html='" + html + '\'' +
                '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Date getInsertDate() {
        return insertDate;
    }

    public void setInsertDate(Date insertDate) {
        this.insertDate = insertDate;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getHtml() {
        return html;
    }

    public void setHtml(String html) {
        this.html = html;
    }
}
