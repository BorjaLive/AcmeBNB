package com.acme.bnb.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class PropertyAttributeValue extends DomainEntity {
    
    private String value;
    
    private PropertyAttribute attribute;
    
    private Property property;
}
