package com.fitness.gymManagementSystem.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fitness.gymManagementSystem.bean.Feedback;
import com.fitness.gymManagementSystem.dao.FeedbackRepository;

@Service
public class FeedbackService{

	@Autowired
    private FeedbackRepository feedbackRepository;

    public List<Feedback> getAllFeedback() {

    	return feedbackRepository.findAll();
    }

    public void saveFeedback(Feedback feedback) {
        feedbackRepository.save(feedback);
    }
}
