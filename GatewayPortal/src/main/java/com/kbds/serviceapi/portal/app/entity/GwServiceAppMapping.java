package com.kbds.serviceapi.portal.app.entity;

import com.kbds.serviceapi.portal.api.entity.GwService;
import com.kbds.serviceapi.portal.app.entity.key.GwServiceAppMappingKey;
import java.io.Serializable;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

/**
 * <pre>
 *  Class Name     : GWServiceAppMapping.java
 *  Description    : API-APP 매핑 엔티티
 *  Author         : 구경태 (kyungtae.koo@kbfg.com)
 *
 * -------------------------------------------------------------------------------
 *     변경No        변경일자        	       변경자          Description
 * -------------------------------------------------------------------------------
 *     Ver 1.0      2020-05-25    	   구경태          Initialized
 * -------------------------------------------------------------------------------
 * </pre>
 */
@Data
@EqualsAndHashCode(callSuper = false)
@AllArgsConstructor
@NoArgsConstructor
@Entity(name = "GW_SERVICE_APP_MAPPING")
public class GwServiceAppMapping implements Serializable {

  private static final long serialVersionUID = -3153713467701315403L;

  @EmbeddedId
  GwServiceAppMappingKey id;

  @ManyToOne
  @JoinColumn(name = "SERVICE_ID", insertable = false, updatable = false)
  private GwService gwService;

  @ManyToOne
  @JoinColumn(name = "APP_ID", insertable = false, updatable = false)
  private GwApp gwApp;

  public GwServiceAppMapping(GwServiceAppMappingKey id) {

    this.id = id;
  }
}
