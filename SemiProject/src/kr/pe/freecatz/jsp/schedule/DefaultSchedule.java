package kr.pe.freecatz.jsp.schedule;

import org.quartz.Job;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;

import bookRental.model.service.BookRentalService;

import java.util.Date;

public class DefaultSchedule implements Job {

    @Override
    public void execute(JobExecutionContext jobExecutionContext) throws JobExecutionException {
    	int result = new BookRentalService().returnBookAuto();
    	if(result == 1) {
    		System.out.println("대출기한이 지난 책들이 성공적으로 반납되었습니다.");
    	}else {
    		System.out.println("책들이 반납되지 않았습니다.");
    	}
    }
    
}