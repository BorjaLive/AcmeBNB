package com.acme.bnb.model;

import com.acme.bnb.model.datatype.CreditCard;
import com.acme.bnb.model.enums.RequestState;
import java.util.Date;
import lombok.Data;

@Data
public class Request extends DomainEntity {

    private boolean smoker;

    private Date checkIn;

    private Date checkOut;

    private RequestState status;
    
    private double rate;

    private CreditCard lessorCreditCard;

    private CreditCard tenantCreditCard;

    private double lessorFee;

    private double tenantFee;

    private Property property;

    private Tenant tenant;

    private Invoice invoice;
    
    private Date date;

}
