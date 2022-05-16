package com.acme.bnb.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class SysConfig extends DomainEntity {

    private String name;

    private String value;

}
