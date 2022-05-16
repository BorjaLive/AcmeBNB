package com.acme.bnb.model;

import java.util.Collection;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@Data
public class PropertyAttribute extends DomainEntity {

    public PropertyAttribute(String name, boolean sysDefault) {
        this.name = name;
        this.sysDefault = sysDefault;
    }
    
    private String name;
    
    private boolean sysDefault;

    private Collection<PropertyAttributeValue> values;
}
