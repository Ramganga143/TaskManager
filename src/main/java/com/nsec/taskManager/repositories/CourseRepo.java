package com.nsec.taskManager.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.nsec.taskManager.models.Course;

public interface CourseRepo extends JpaRepository<Course , Integer> {

}
