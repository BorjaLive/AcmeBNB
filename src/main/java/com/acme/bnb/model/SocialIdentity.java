package com.acme.bnb.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class SocialIdentity extends DomainEntity {
    
    private String nick;
    
    private String url;
    
    private String socialNetwork;
    
    private Actor actor;
}
