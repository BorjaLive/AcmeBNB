package com.acme.bnb.model;

import java.util.Collection;
import java.util.Date;
import lombok.Data;

@Data
public class Audit extends DomainEntity {

    private String text;

    private boolean draft;

    private Date date;

    private Property property;

    private Auditor author;

    private Collection<AuditAttachment> attachments;

}
