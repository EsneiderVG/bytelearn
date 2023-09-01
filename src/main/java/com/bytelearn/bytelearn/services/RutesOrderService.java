package com.bytelearn.bytelearn.services;

import org.springframework.stereotype.Service;

import com.bytelearn.bytelearn.models.RutesOrder;
import com.bytelearn.bytelearn.repositories.RutesOrderRepositorie;

@Service
public class RutesOrderService extends ServicioBase<RutesOrder>{

    public RutesOrderService(RutesOrderRepositorie repositorioBase) {
        super(repositorioBase);
    }
    
}
