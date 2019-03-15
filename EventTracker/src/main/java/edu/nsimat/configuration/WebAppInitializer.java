package edu.nsimat.configuration;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRegistration;

import org.springframework.web.WebApplicationInitializer;
import org.springframework.web.context.ContextLoaderListener;
import org.springframework.web.context.support.AnnotationConfigWebApplicationContext;
import org.springframework.web.servlet.DispatcherServlet;

public class WebAppInitializer implements WebApplicationInitializer {

	@Override
	public void onStartup(ServletContext servletContext) throws ServletException {		
			
			// Load Spring web application configuration
		    AnnotationConfigWebApplicationContext context = new AnnotationConfigWebApplicationContext();
			context.register(WebConfig.class);			
			context.setConfigLocation("edu.nsimat.configuration");
			
			// Manage the lifecycle of the root application context
			servletContext.addListener(new ContextLoaderListener(context));
			
			// Create and register the DispatcherServlet
			DispatcherServlet servlet = new DispatcherServlet(context);
			ServletRegistration.Dynamic registration = servletContext.addServlet("AppDispatcherServlet", servlet);
			registration.setLoadOnStartup(1);
			registration.addMapping("*.html");
			registration.addMapping("*.pdf");
			registration.addMapping("*.json");

		}

		/*private AnnotationConfigWebApplicationContext getContext() {
			
			// Load Spring web application configuration
			AnnotationConfigWebApplicationContext context = new AnnotationConfigWebApplicationContext();			
			context.setConfigLocation("edu.nsimat.configuration");
			return context;
		}*/
}
