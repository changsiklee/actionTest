package io.hupayx.action.ActionTest;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class ActionTestApplication {

	public static void main(String[] args) {
		System.out.println("start");
		System.out.println("ActionTestApplication main method execute.");
		SpringApplication.run(ActionTestApplication.class, args);
	}

}
