package com.java.CareerHub.dao;

import com.java.CareerHub.model.Applicant;
import com.java.CareerHub.model.JobApplication;

public interface IApplicantController {
	
	public void createProfile(Applicant applicant);
	public void applyforJob(JobApplication jobApplication);

}
