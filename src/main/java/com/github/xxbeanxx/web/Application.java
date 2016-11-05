package com.github.xxbeanxx.web;

import org.apache.struts2.dispatcher.filter.StrutsPrepareAndExecuteFilter;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.FilterRegistrationBean;
import org.springframework.context.annotation.Bean;

/**
 * @author Greg Baker
 */
@SpringBootApplication
public class Application {

	public static void main(String[] args) {
		SpringApplication.run(Application.class, args);
	}
	
	
	/**
	 * Register the Struts filter to intercept URLs with the ".action" suffix.
	 */
	@Bean
	public FilterRegistrationBean strutsFilter() {
		final FilterRegistrationBean registration = new FilterRegistrationBean(new StrutsPrepareAndExecuteFilter());
		registration.addUrlPatterns("*.action");
		registration.setOrder(FilterRegistrationBean.LOWEST_PRECEDENCE);
		return registration;
	}
	
}
