package com.java.CareerHub.dao;

import com.java.CareerHub.model.JobListing;
import com.java.CareerHub.model.Company;


public interface ICompanyController {
	public void postJob(JobListing jobListing);
	public void getJobs(int companyID);

}

