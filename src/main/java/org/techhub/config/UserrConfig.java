//package org.techhub.config;
//import org.springframework.context.annotation.Bean;
//import org.springframework.context.annotation.Configuration;
//import org.springframework.security.core.userdetails.User;
//import org.springframework.security.core.userdetails.UserDetails;
//import org.springframework.security.core.userdetails.UserDetailsService;
//import org.springframework.security.provisioning.InMemoryUserDetailsManager;
//@Configuration
//
//
//public class UserrConfig {
//	
//
//		@Bean
//		public UserDetailsService userDetailService() {
//			
//			UserDetails user=User.withDefaultPasswordEncoder().
//					username("Tiyaaa").
//					password("1234567").
//					roles("admin").
//					build();
//			return new InMemoryUserDetailsManager(user);
//		}
//
//	}
//
//
//
