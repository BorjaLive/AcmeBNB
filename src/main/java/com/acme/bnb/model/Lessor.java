package com.acme.bnb.model;

import com.acme.bnb.model.datatype.CreditCard;
import java.util.Collection;
import lombok.Data;

@Data
public class Lessor extends Actor {
    
    private CreditCard creditCard;
    
    private Commentable commentable;
    
    private Collection<Property> properties;
}
