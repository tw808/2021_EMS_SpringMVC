package com.ems1.recruitment.service;

import com.ems1.po.TrackRecInfo;

import java.util.List;

public interface TrackRecService {
    //add
    public  boolean addTrackRecord(TrackRecInfo info);
    //list
    public List<TrackRecInfo> getTrackRecList(TrackRecInfo info);

    public TrackRecInfo getTrackRecord(Integer trackRecId);

    boolean updateTrackRec(TrackRecInfo info);

    boolean deleteTrackRec(TrackRecInfo info);
}
