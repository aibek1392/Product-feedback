package com.controller;

import java.util.Comparator;

import com.model.Feedback;

class FeedbackSorter implements Comparator<Feedback> 
{ 
    public int compare(Feedback a, Feedback b) 
    { 
        return b.getId() - a.getId();
    } 
}
