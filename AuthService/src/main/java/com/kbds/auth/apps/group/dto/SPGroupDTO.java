package com.kbds.auth.apps.group.dto;

import java.util.Date;
import java.util.List;
import javax.validation.constraints.NotEmpty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * <pre>
 *  File  Name     : SPGroupDTO
 *  Description    :
 *  Author         : 구경태 (kyungtae.koo@kbfg.com)
 *
 * -------------------------------------------------------------------------------
 *     변경No        변경일자        	       변경자          Description
 * -------------------------------------------------------------------------------
 *     Ver 1.0      2020-11-24          	   구경태          Initialized
 * -------------------------------------------------------------------------------
 *  </pre>
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class SPGroupDTO {

  private Long groupId;

  @NotEmpty
  private String groupNm;

  private List<Long> userList;

  private String regUserNo;

  private String uptUserNo;

  private Date regDt;

  private Date uptDt;
}
