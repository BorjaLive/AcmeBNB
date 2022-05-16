package com.acme.bnb.model;

import java.io.Serializable;
import lombok.Data;

@Data
public abstract class DomainEntity implements Serializable {

    private Long id;
    
    private int version;
}
