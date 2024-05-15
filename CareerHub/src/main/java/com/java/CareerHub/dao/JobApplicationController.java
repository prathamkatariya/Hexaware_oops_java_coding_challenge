package com.java.CareerHub.dao;

import java.util.Scanner;
import com.java.CareerHub.model.JobApplication;

public class JobApplicationController {
	
	JobApplication jobApplication=new JobApplication();
	static Scanner sc=new Scanner(System.in);
	public void getApplicaitons() {
		System.out.println("Enter Job ID");
		int jobID=sc.nextInt();
		jobApplication.getApplicationsForJob(jobID);
		
	}

}
