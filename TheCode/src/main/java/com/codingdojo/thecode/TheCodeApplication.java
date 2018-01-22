package com.codingdojo.thecode;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@SpringBootApplication
@Configuration
@ComponentScan
@EnableWebMvc
public class TheCodeApplication {

	public static void main(String[] args) {
		SpringApplication.run(TheCodeApplication.class, args);
	}
	@Bean
    public InternalResourceViewResolver resolver() {
        InternalResourceViewResolver vr = new InternalResourceViewResolver();
        vr.setPrefix("/WEB-INF/jsp/");
        vr.setSuffix(".jsp");
        return vr;
	}
}
