package com.acme.bnb.model;

import com.acme.bnb.model.datatype.CreditCard;
import java.util.Collection;
import lombok.Data;

@Data
public class Tenant extends Actor {

    private CreditCard creditCard;

    private Boolean smoker;

    private Commentable commentable;

    private Collection<Request> requests;
}
