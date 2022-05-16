package com.acme.bnb.model;

import java.util.Collection;
import lombok.Data;

@Data
public class Commentable extends DomainEntity {

    private Collection<Comment> comments;
    
    private Lessor lessor;
    
    private Tenant tenant;
}
