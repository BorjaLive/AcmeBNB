package com.acme.bnb.model;

import com.acme.bnb.model.datatype.Phone;
import java.util.Collection;
import lombok.Data;

@Data
public abstract class Actor extends DomainEntity {

    private String name;

    private String surname;

    private String email;

    private Phone phone;

    private String picture;

    private String pwd;
    
    private double stars;
    
    private String type;

    private Collection<SocialIdentity> socialIdentities;
    
    private Collection<Comment> comments;
}
