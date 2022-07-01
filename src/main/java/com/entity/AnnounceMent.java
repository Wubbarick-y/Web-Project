package com.entity;

import java.util.Date;

public class AnnounceMent {
    private int Id;
    private Date insertDate;
    private String title;
    private String html;

    public AnnounceMent(int id, Date insertDate, String title, String html) {
        Id = id;
        this.insertDate = insertDate;
        this.title = title;
        this.html = html;
    }

    @Override
    public String toString() {
        return "AnnounceMent{" +
                "Id=" + Id +
                ", insertDate=" + insertDate +
                ", title='" + title + '\'' +
                ", html='" + html + '\'' +
                '}';
    }
}
