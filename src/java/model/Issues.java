/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author 84337
 */
public class Issues {
    private String issue_id;
    private String assignee_id;
    private String full_name;
    private String issue_title;
    private String description;
    private String  gitlab_id;
    private String gitlab_url;
    private String created_date;
    private String due_date;
    private String team_id;
    private String milestone_id;
    private String function_ids;
    private String labels;
    private String status;

    public Issues() {
    }
    public Issues(String team_id) {
          this.team_id = team_id;
    }

    public Issues(String issue_id, String assignee_id, String full_name, String issue_title, String description, String gitlab_id, String gitlab_url, String created_date, String due_date, String team_id, String milestone_id, String function_ids, String labels, String status) {
        this.issue_id = issue_id;
        this.assignee_id = assignee_id;
        this.full_name = full_name;
        this.issue_title = issue_title;
        this.description = description;
        this.gitlab_id = gitlab_id;
        this.gitlab_url = gitlab_url;
        this.created_date = created_date;
        this.due_date = due_date;
        this.team_id = team_id;
        this.milestone_id = milestone_id;
        this.function_ids = function_ids;
        this.labels = labels;
        this.status = status;
    }

    public String getIssue_id() {
        return issue_id;
    }

    public void setIssue_id(String issue_id) {
        this.issue_id = issue_id;
    }

    public String getAssignee_id() {
        return assignee_id;
    }

    public void setAssignee_id(String assignee_id) {
        this.assignee_id = assignee_id;
    }

    public String getFull_name() {
        return full_name;
    }

    public void setFull_name(String full_name) {
        this.full_name = full_name;
    }

    public String getIssue_title() {
        return issue_title;
    }

    public void setIssue_title(String issue_title) {
        this.issue_title = issue_title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getGitlab_id() {
        return gitlab_id;
    }

    public void setGitlab_id(String gitlab_id) {
        this.gitlab_id = gitlab_id;
    }

    public String getGitlab_url() {
        return gitlab_url;
    }

    public void setGitlab_url(String gitlab_url) {
        this.gitlab_url = gitlab_url;
    }

    public String getCreated_date() {
        return created_date;
    }

    public void setCreated_date(String created_date) {
        this.created_date = created_date;
    }

    public String getDue_date() {
        return due_date;
    }

    public void setDue_date(String due_date) {
        this.due_date = due_date;
    }

    public String getTeam_id() {
        return team_id;
    }

    public void setTeam_id(String team_id) {
        this.team_id = team_id;
    }

    public String getMilestone_id() {
        return milestone_id;
    }

    public void setMilestone_id(String milestone_id) {
        this.milestone_id = milestone_id;
    }

    public String getFunction_ids() {
        return function_ids;
    }

    public void setFunction_ids(String function_ids) {
        this.function_ids = function_ids;
    }

    public String getLabels() {
        return labels;
    }

    public void setLabels(String labels) {
        this.labels = labels;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "Issues{" + "issue_id=" + issue_id + ", assignee_id=" + assignee_id + ", full_name=" + full_name + ", issue_title=" + issue_title + ", description=" + description + ", gitlab_id=" + gitlab_id + ", gitlab_url=" + gitlab_url + ", created_date=" + created_date + ", due_date=" + due_date + ", team_id=" + team_id + ", milestone_id=" + milestone_id + ", function_ids=" + function_ids + ", labels=" + labels + ", status=" + status + '}';
    }
    
    
}
