package com.kbds.auth.repository;

import java.util.Optional;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import com.kbds.auth.entity.OAuthRefreshToken;

/**
 *
 * <pre>
 *  Class Name     : OAuthRefreshTokenRepository.java
 *  Description    : 인증 관련 RefreshToken JPA Repository 클래스
 *  Author         : 구경태 (kyungtae.koo@kbfg.com)
 * 
 * -------------------------------------------------------------------------------
 *     변경No        변경일자        	       변경자          Description
 * -------------------------------------------------------------------------------
 *     Ver 1.0      2020-05-19    	   구경태          Initialized
 * -------------------------------------------------------------------------------
 * </pre>
 *
 */
@Repository
public interface OAuthRefreshTokenRepository extends CrudRepository<OAuthRefreshToken, Long> {

  Optional<OAuthRefreshToken> findByTokenId(String tokenId);

}