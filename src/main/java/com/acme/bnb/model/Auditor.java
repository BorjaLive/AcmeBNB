package com.acme.bnb.model;

import java.util.Collection;
import lombok.Data;

@Data
public class Auditor extends Actor {

    private String company;

    private Collection<Audit> audits;
}
