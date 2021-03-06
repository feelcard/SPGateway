package com.kbds.auth.apps.menu.repository;


import com.kbds.auth.apps.menu.entity.SPMenus;
import java.util.List;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

/**
 * <pre>
 *  File  Name     : MenuRepository
 *  Description    : Menu 관련 Repository
 *  Author         : 구경태 (kyungtae.koo@kbfg.com)
 *
 * -------------------------------------------------------------------------------
 *     변경No        변경일자        	       변경자          Description
 * -------------------------------------------------------------------------------
 *     Ver 1.0                	   구경태          Initialized
 * -------------------------------------------------------------------------------
 *  </pre>
 */
@Repository
public interface SPMenuRepository extends CrudRepository<SPMenus, Long> {

  List<SPMenus> findAllByParentIsNull();
}
