package com.acme.bnb.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class AuditAttachment extends DomainEntity {
    
    private String value;
    
    private Audit audit;
}
