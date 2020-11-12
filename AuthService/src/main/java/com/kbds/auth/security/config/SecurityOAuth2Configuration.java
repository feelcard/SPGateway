package com.kbds.auth.security.config;

import com.kbds.auth.security.exception.CustomOAuthResponseExceptionTranslator;
import com.kbds.auth.apps.user.service.SPUserDetailService;
import com.kbds.auth.security.token.CustomTokenEnhancer;
import com.kbds.auth.security.token.CustomTokenStore;
import javax.sql.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.oauth2.config.annotation.configurers.ClientDetailsServiceConfigurer;
import org.springframework.security.oauth2.config.annotation.web.configuration.AuthorizationServerConfigurerAdapter;
import org.springframework.security.oauth2.config.annotation.web.configuration.EnableAuthorizationServer;
import org.springframework.security.oauth2.config.annotation.web.configurers.AuthorizationServerEndpointsConfigurer;
import org.springframework.security.oauth2.config.annotation.web.configurers.AuthorizationServerSecurityConfigurer;
import org.springframework.security.oauth2.provider.token.TokenEnhancer;
import org.springframework.security.oauth2.provider.token.TokenStore;

/**
 * <pre>
 *  Class Name     : SecurityOAuth2Configuration.java
 *  Description    : OAuth 토큰 관련 설정
 *  Author         : 구경태 (kyungtae.koo@kbfg.com)
 *
 * -------------------------------------------------------------------------------
 *     변경No        변경일자                변경자          Description
 * -------------------------------------------------------------------------------
 *     Ver 1.0      2020-05-12                 구경태          Initialized
 * -------------------------------------------------------------------------------
 * </pre>
 */
@Configuration
@EnableAuthorizationServer
public class SecurityOAuth2Configuration extends AuthorizationServerConfigurerAdapter {

  @Autowired
  private AuthenticationManager authenticationManager;

  @Autowired
  private DataSource dataSource;

  @Autowired
  private SPUserDetailService SPUserDetailService;

  @Bean
  public TokenStore tokenStore() {

    return new CustomTokenStore();
  }

  @Bean
  public TokenEnhancer tokenEnhancer() {

    return new CustomTokenEnhancer();
  }


  @Override
  public void configure(AuthorizationServerSecurityConfigurer authorizationServerSecurityConfigurer){

    authorizationServerSecurityConfigurer.tokenKeyAccess("permitAll()").checkTokenAccess("permitAll()");
  }

  @Override
  public void configure(ClientDetailsServiceConfigurer clients) throws Exception {

    clients.jdbc(dataSource);
  }

  @Override
  public void configure(AuthorizationServerEndpointsConfigurer endpoints){

    endpoints.authenticationManager(authenticationManager);
    endpoints.tokenStore(tokenStore());
    endpoints.exceptionTranslator(new CustomOAuthResponseExceptionTranslator());
    endpoints.userDetailsService(SPUserDetailService);
    endpoints.tokenEnhancer(tokenEnhancer());
  }
}