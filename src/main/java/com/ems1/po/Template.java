package com.ems1.po;

public class Template {
    private Integer templateId;

    private String templateTitle;

    private String templateContent;

    private String templateEngine;

    public Integer getTemplateId() {
        return templateId;
    }

    public void setTemplateId(Integer templateId) {
        this.templateId = templateId;
    }

    public String getTemplateTitle() {
        return templateTitle;
    }

    public void setTemplateTitle(String templateTitle) {
        this.templateTitle = templateTitle;
    }

    public String getTemplateContent() {
        return templateContent;
    }

    public void setTemplateContent(String templateContent) {
        this.templateContent = templateContent;
    }

    public String getTemplateEngine() {
        return templateEngine;
    }

    public void setTemplateEngine(String templateEngine) {
        this.templateEngine = templateEngine;
    }

    @Override
    public String toString() {
        return "Template{" +
                "templateId=" + templateId +
                ", templateTitle='" + templateTitle + '\'' +
                ", templateContent='" + templateContent + '\'' +
                ", templateEngine='" + templateEngine + '\'' +
                '}';
    }
}