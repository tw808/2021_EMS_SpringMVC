package com.ems1.utils;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.TagSupport;
import java.io.Writer;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
//tag
//<s:select type="act_status" id="" name="dataId" selectedId="2"></s:select>
public class SelectTagSupport extends TagSupport {
    private String type; //data type
    private String name; //select class name
    private String id; //select class id
    private String selectClass = "form-control imput-sm"; //selectclass attributes
    private  int selectedId; //defaul selected id

    public int getSelectedId() {
        return selectedId;
    }

    public void setSelectedId(int selectedId) {
        this.selectedId = selectedId;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String getId() {
        return id;
    }

    @Override
    public void setId(String id) {
        this.id = id;
    }

    public String getSelectClass() {
        return selectClass;
    }

    public void setSelectClass(String selectClass) {
        this.selectClass = selectClass;
    }



    @Override
    public int doEndTag() throws JspException {
        Connection con = null;
        PreparedStatement pre = null;
        ResultSet res = null;
        try {
            String sql = "select * from data_dictionary where data_ENGINE=?";
            con = DBUtils.getConnection();
            pre = con.prepareStatement(sql);
            pre.setString(1, type);
            res = pre.executeQuery();
            //get page writeout
            Writer out = pageContext.getOut();
            StringBuilder select = new StringBuilder("<select");
            //get values
            if (name != null && !name.equals("")) {
                select.append(" name='" + name + "'");
            }
            if (id != null && !id.equals("")) {
                select.append(" id='" + id + "'");
            }
            if (name != null && !selectClass.equals("")) {
                select.append("class='" + selectClass + "'");
            }
            select.append(">");
            select.append("<option value=''>Choose</option>");
            while (res.next()) {

                select.append("<option value='" + res.getInt("data_id") + "'");
               if(selectedId!=0 && selectedId==res.getInt("data_id")){
                   select.append("selected");
               }
                select.append(">" + res.getString("data_info") + "</option>");
            }
            select.append("</select>");
            out.write(select.toString());
            out.flush();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DBUtils.close(con, pre, res);
        }
        return EVAL_PAGE;
    }
}
