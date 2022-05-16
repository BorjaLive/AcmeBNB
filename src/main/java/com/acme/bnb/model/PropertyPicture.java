package com.acme.bnb.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class PropertyPicture extends DomainEntity {
    
    private String value;
    
    private Property property;
}
