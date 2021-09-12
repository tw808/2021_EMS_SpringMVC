package com.ems1.student.service;

import com.ems1.po.StuComInfo;

import java.util.List;

public interface CommunicationService {
    List<StuComInfo> getCommList(StuComInfo comm);

    boolean addComm(StuComInfo comm);

    StuComInfo getComm(Integer comId);

    boolean updateComm(StuComInfo comm);

    boolean deleteComm(StuComInfo comm);
}
