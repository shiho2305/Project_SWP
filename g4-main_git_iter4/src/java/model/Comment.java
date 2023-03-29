
package model;

public class Comment {
    private int id;
    private String name;
    private String details;
    private String report;
    private String reportDescription;

    public Comment() {
    }

    public Comment(int id, String name, String details) {
        this.id = id;
        this.name = name;
        this.details = details;
    }

    public Comment(int id, String name, String details, String report, String reportDescription) {
        this.id = id;
        this.name = name;
        this.details = details;
        this.report = report;
        this.reportDescription = reportDescription;
    }
    
    

    public Comment(int id, String report) {
        this.id = id;
        this.report = report;
    }

    public Comment(int id, String name, String details, String report) {
        this.id = id;
        this.name = name;
        this.details = details;
        this.report = report;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDetails() {
        return details;
    }

    public void setDetails(String details) {
        this.details = details;
    }

    public String getReport() {
        return report;
    }

    public void setReport(String report) {
        this.report = report;
    }

    public String getReportDescription() {
        return reportDescription;
    }

    public void setReportDescription(String reportDescription) {
        this.reportDescription = reportDescription;
    }

    @Override
    public String toString() {
        return "Comment{" + "id=" + id + ", name=" + name + ", details=" + details + ", report=" + report + ", reportDescription=" + reportDescription + '}';
    }

    
    
}
