/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.time.LocalDateTime;

/**
 *
 * @author kienb
 */
public class Assignment {
    private int id;
    private LocalDateTime startdate;
    private LocalDateTime enddate;
    private String title;
    private String attachment;
    private Project project;
    public Assignment() {
    }

    public Assignment(int id, LocalDateTime startdate, LocalDateTime enddate, String title, String attachment) {
        this.id = id;
        this.startdate = startdate;
        this.enddate = enddate;
        this.title = title;
        this.attachment = attachment;
    }

    public Assignment(int id, LocalDateTime startdate, LocalDateTime enddate, String title, String attachment, Project project) {
        this.id = id;
        this.startdate = startdate;
        this.enddate = enddate;
        this.title = title;
        this.attachment = attachment;
        this.project = project;
    }
    
    

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public LocalDateTime getStartdate() {
        return startdate;
    }

    public void setStartdate(LocalDateTime startdate) {
        this.startdate = startdate;
    }

    public LocalDateTime getEnddate() {
        return enddate;
    }

    public void setEnddate(LocalDateTime enddate) {
        this.enddate = enddate;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getAttachment() {
        return attachment;
    }

    public void setAttachment(String attachment) {
        this.attachment = attachment;
    }

    public Project getProject() {
        return project;
    }

    public void setProject(Project project) {
        this.project = project;
    }
    
    
}
