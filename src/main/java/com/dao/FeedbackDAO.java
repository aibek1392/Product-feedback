package com.dao;

import org.springframework.data.repository.CrudRepository;

import com.model.Feedback;

public interface FeedbackDAO extends CrudRepository<Feedback, Integer>{

}
