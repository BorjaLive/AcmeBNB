package com.acme.bnb.model;

import java.util.Collection;
import java.util.Date;
import javax.persistence.Column;
import lombok.Data;

@Data
public class Property extends DomainEntity {

    private String name;

    private String description;

    private double rate;

    @Column(nullable = false)
    private String address;
    
    private Date date;

    private int nRequests;
    
    private int nAudits;

    private Lessor propietary;

    private Collection<PropertyPicture> pictures;

    private Collection<PropertyAttributeValue> attributes;

    private Collection<Request> requests;

    private Collection<Audit> audits;
}
