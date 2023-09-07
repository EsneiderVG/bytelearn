package com.bytelearn.bytelearn.security;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.Customizer;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

@Configuration
@EnableWebSecurity
public class WebSecurity {

  @Value("${role_user}")
  private String USER;
  @Value("${role_admin}")
  private String ADMIN;

  @Bean
  SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception {

    http
        .csrf(Customizer.withDefaults())
        .authorizeHttpRequests((request) -> {
          request
              .requestMatchers(new AntPathRequestMatcher("/"))
                .permitAll()
              .requestMatchers(new AntPathRequestMatcher("/cursos/**"))
                .hasAnyRole(USER, ADMIN)
              .requestMatchers(new AntPathRequestMatcher("/roadmaps/new"))
                .hasAnyRole(ADMIN)
              .anyRequest()
                .permitAll();
        })
        .formLogin((login -> {
          Customizer.withDefaults();
          login
              .loginPage("/login")
              .defaultSuccessUrl("/cursos",true);
        }))
        .logout(logout -> logout
          .logoutUrl("/logout")
          .logoutSuccessUrl("/")
          .invalidateHttpSession(true)
          .clearAuthentication(true)
          .deleteCookies("JSESSIONID")
        );

    return http.build();
  }

}