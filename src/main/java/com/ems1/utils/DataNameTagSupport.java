package com.ems1.utils;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.TagSupport;
import java.io.Writer;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
//tag
//<s:dataname dataId="1"/>
public class DataNameTagSupport extends TagSupport {

    private String dataId;

    public String getDataId() {
        return dataId;
    }

    public void setDataId(String dataId) {
        this.dataId = dataId;
    }

    @Override
    public int doEndTag() throws JspException {
        Connection con = null;
        PreparedStatement pre = null;
        ResultSet res = null;
        try {
            String sql = "select * from data_dictionary where data_id=?";
            con = DBUtils.getConnection();
            pre = con.prepareStatement(sql);
            pre.setString(1, dataId);
            res = pre.executeQuery();
            //get page writeout
            Writer out = pageContext.getOut();
            if (res.next()) {
                out.write(res.getString("data_info"));
            }
            out.flush();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DBUtils.close(con, pre, res);
        }
        return EVAL_PAGE;
    }
}
