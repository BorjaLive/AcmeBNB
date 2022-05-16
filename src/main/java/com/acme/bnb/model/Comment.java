package com.acme.bnb.model;

import java.util.Date;
import lombok.Data;

@Data
public class Comment extends DomainEntity {

    private String title;

    private String text;

    private int stars;

    private Date date;

    private Commentable target;

    private Actor author;
}
