package com.fr;

import javax.sql.DataSource;

import org.hibernate.SessionFactory;
//import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate4.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;


@Configuration
@EnableTransactionManagement
@EnableWebMvc
public class Dbconfig {
	@Bean(name="dataSource")
    public DataSource getDataSource() {
        DriverManagerDataSource dataSource = new DriverManagerDataSource();
        dataSource.setDriverClassName("org.h2.Driver");
        dataSource.setUrl("jdbc:h2:tcp://localhost/~/trial");
        dataSource.setUsername("Axy");
        dataSource.setPassword("Axylone");
        return dataSource;
    }
	
	
	@Bean(name="sessionFactory")
	public SessionFactory getSessionFactory(){
		LocalSessionFactoryBuilder localsfb = new LocalSessionFactoryBuilder(getDataSource());
		localsfb.scanPackages("com.fr.FathomlessRealm.model");
		localsfb.setProperty("hibernate.show_sql", "true");
		localsfb.setProperty("hibernate.dialect", "org.hibernate.dialect.H2Dialect");
		localsfb.setProperty("hibernate.hbm2ddl.auto", "update");
		return localsfb.buildSessionFactory();
	}
	
}
