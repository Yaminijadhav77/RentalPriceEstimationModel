package org.techhub.config;

import org.springframework.web.WebApplicationInitializer;
import org.springframework.web.context.support.AnnotationConfigWebApplicationContext;
import org.springframework.web.servlet.DispatcherServlet;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRegistration;

public class WebApplicationInti  implements WebApplicationInitializer{
	
	
	@Override
	public void onStartup(ServletContext servletContext) throws ServletException {
		// TODO Auto-generated method stub
		
		 AnnotationConfigWebApplicationContext ctx=new AnnotationConfigWebApplicationContext();
	       ctx.register(WebMvcConfig.class);
	       DispatcherServlet ds=new DispatcherServlet(ctx);
	       ServletRegistration.Dynamic servlet= servletContext.addServlet("dispatcher",ds);
	       servlet.addMapping("/");
	       //servlet.setLoadOnStartup(1);
		
	}

}
