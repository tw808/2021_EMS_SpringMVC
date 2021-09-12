package com.ems1.student.service.impl;

import com.ems1.po.EvaluationInfo;
import com.ems1.student.mapper.EvaluationInfoMapper;
import com.ems1.student.service.EvaluationService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class EvaluationServiceImpl implements EvaluationService {
    @Resource(name = "evaluationInfoMapper")
    EvaluationInfoMapper evaluationInfoMapper;

    @Override
    public List<EvaluationInfo> getEvaluationList(EvaluationInfo evaluation) {
        return evaluationInfoMapper.getEvalList(evaluation);
    }

    @Override
    public boolean addEvaluation(EvaluationInfo evaluation) {
        try {
            int count = evaluationInfoMapper.insert(evaluation);
            if (count > 0) {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;    }

    @Override
    public EvaluationInfo getEvaluation(Integer evalId) {
        return evaluationInfoMapper.selectByPrimaryKey(evalId);    }

    @Override
    public boolean updateEvaluation(EvaluationInfo evaluation) {
        try {
            int i = evaluationInfoMapper.updateByPrimaryKeySelective(evaluation);
            if (i > 0) {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;    }

    @Override
    public boolean deleteEvaluation(EvaluationInfo evaluation) {
        try {
            int i = evaluationInfoMapper.deleteByPrimaryKey(evaluation.getEvalId());
            if (i > 0) {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
}
