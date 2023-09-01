package com.bytelearn.bytelearn.services;

import org.springframework.stereotype.Service;

import com.bytelearn.bytelearn.models.RoadMap;
import com.bytelearn.bytelearn.repositories.RoadMapRepositorie;

@Service
public class RoadMapService extends ServicioBase<RoadMap> {

    public RoadMapService(RoadMapRepositorie repositorioBase) {
        super(repositorioBase);
    }
    
}
