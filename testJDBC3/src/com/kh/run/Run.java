package com.kh.run;

import com.kh.model.service.MemberService;

public class Run {
	public static void main(String[] args) {
		new MemberService().insertMember();
		System.out.println("¿Ï");
	}
}
