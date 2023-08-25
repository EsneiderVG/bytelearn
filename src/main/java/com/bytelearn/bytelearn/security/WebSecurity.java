package com.bytelearn.bytelearn.security;

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
    @Bean
    SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception{
        
        http
          .csrf(Customizer.withDefaults())
          .authorizeHttpRequests((request) ->{
            request
            .requestMatchers(new AntPathRequestMatcher("/"))
                .permitAll()
            .anyRequest()
                .permitAll();
          })
          .formLogin((login -> {
            Customizer.withDefaults();
            login
              .loginPage("/login/singIn")
              .defaultSuccessUrl("/user");
          }));

        return http.build();
    }

}