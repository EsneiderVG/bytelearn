package com.bytelearn.bytelearn.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bytelearn.bytelearn.models.RoadMap;
import com.bytelearn.bytelearn.repositories.RoadMapRepositorie;

@Service
public class RoadMapService extends ServicioBase<RoadMap> {

    @Autowired RoadMapRepositorie repositorie;

    public RoadMapService(RoadMapRepositorie repositorioBase) {
        super(repositorioBase);
    }

    public RoadMap findByName(String name){
        RoadMap roadMap = repositorie.findByName(name);
        if(roadMap != null){
            return roadMap;
        }else{
            return null;
        }
    }
    
}
