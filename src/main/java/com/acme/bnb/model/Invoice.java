package com.acme.bnb.model;

import com.acme.bnb.model.datatype.CreditCard;
import java.util.Date;
import lombok.Data;

@Data
public class Invoice extends DomainEntity {

    private Date date;

    private String pdf;

    private String vat;

    private CreditCard creditCard;

    private double ammount;

    private Request request;
}
