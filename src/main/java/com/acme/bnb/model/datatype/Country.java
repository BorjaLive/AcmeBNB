package com.acme.bnb.model.datatype;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class Country {
    
    private String name;
    
    private String iso2;
    
    private String iso3;
    
    private int code;
    
    
}
