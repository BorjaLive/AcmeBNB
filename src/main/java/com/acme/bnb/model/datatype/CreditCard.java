package com.acme.bnb.model.datatype;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class CreditCard {

    private String number;
    
    private int expiracyMonth;
    
    private int expiracyYear;
    
    private String cvv;
    
}
