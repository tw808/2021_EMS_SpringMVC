package com.ems1.recruitment.service;

import com.ems1.po.AuditionInfo;

import java.util.List;

public interface
AuditionService {
    boolean addAudition(AuditionInfo info);

    List<AuditionInfo> getAuditionList(AuditionInfo auditionInfo);

    AuditionInfo getAudition(Integer audId);

    boolean updateAudtion(AuditionInfo info);

    boolean deleteAudition(AuditionInfo info);
}
