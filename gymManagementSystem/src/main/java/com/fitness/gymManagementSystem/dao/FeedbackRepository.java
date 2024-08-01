package com.fitness.gymManagementSystem.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.fitness.gymManagementSystem.bean.Feedback;

@Repository
public interface FeedbackRepository extends JpaRepository<Feedback, Integer>{

}
