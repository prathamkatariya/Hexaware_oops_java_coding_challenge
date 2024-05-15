package com.java.CareerHub.dao;

import com.java.CareerHub.model.JobApplication;

public interface IJobListingController {
	public void apply(JobApplication jobApplication);
	public void getApplicants(int jobID);
}




