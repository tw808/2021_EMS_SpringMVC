package com.ems1.student.service;

import com.ems1.po.EvaluationInfo;

import java.util.List;

public interface
EvaluationService {
    List<EvaluationInfo> getEvaluationList(EvaluationInfo evaluation);

    boolean addEvaluation(EvaluationInfo evaluation);

    EvaluationInfo getEvaluation(Integer evalId);

    boolean updateEvaluation(EvaluationInfo evaluation);

    boolean deleteEvaluation(EvaluationInfo evaluation);
}
