package com.myclass.main;

import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.myclass.config.AppConfig;
import com.myclass.entity.User;
import com.myclass.service.IUserService;
import com.myclass.service.UserService;

public class Main {

	public static void main(String[] args) {

		ApplicationContext context = new AnnotationConfigApplicationContext(AppConfig.class);
		

		UserService userService = new UserService();
		
		
		System.out.println("===Truoc khi chuyen tien===");

		System.out.println("Thong tin nguoi chuyen");

		User user = userService.getById("1");

		System.out.println("Ho ten: " + user.getName());

		System.out.println("So tien: " + user.getBalance());

		System.out.println("Thong tin nguoi nhan");

		user = userService.getById("2");

		System.out.println("Ho ten: " + user.getName());

		System.out.println("So tien: " + user.getBalance());

		userService.transferMoney("1", "2", 100);

		System.out.println("\n\n===Sau khi chuyen tien===");

		System.out.println("Thong tin nguoi chuyen");

		user = userService.getById("1");

		System.out.println("Ho ten: " + user.getName());

		System.out.println("So tien: " + user.getBalance());

		System.out.println("Thong tin nguoi nhan");

		user = userService.getById("2");

		System.out.println("Ho ten: " + user.getName());

		System.out.println("So tien: " + user.getBalance());

	}

}
