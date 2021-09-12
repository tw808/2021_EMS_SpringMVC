package com.ems1.student.mapper;

import com.ems1.po.EvaluationInfo;

import java.util.List;

public interface EvaluationInfoMapper {
    int deleteByPrimaryKey(Integer evalId);

    int insert(EvaluationInfo record);

    int insertSelective(EvaluationInfo record);

    EvaluationInfo selectByPrimaryKey(Integer evalId);

    int updateByPrimaryKeySelective(EvaluationInfo record);

    int updateByPrimaryKey(EvaluationInfo record);

    public List<EvaluationInfo> getEvalList(EvaluationInfo record);
}