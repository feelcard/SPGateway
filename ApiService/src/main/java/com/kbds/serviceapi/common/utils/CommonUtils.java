package com.kbds.serviceapi.common.utils;

import java.util.UUID;
import org.apache.logging.log4j.ThreadContext;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.reactive.function.client.WebClient;
import com.kbds.serviceapi.common.code.CommonCode;
import com.kbds.serviceapi.common.constants.CommonConstants;
import com.kbds.serviceapi.framework.dto.ResponseDTO;

/**
 * 
 * <pre>
 *  Class Name     : CommonUtils.java
 *  Description    : 일반 공통 유틸 클래스
 *  Author         : 구경태 (kyungtae.koo@kbfg.com)
 * 
 * -------------------------------------------------------------------------------
 *     변경No        변경일자        	       변경자          Description
 * -------------------------------------------------------------------------------
 *     Ver 1.0      2020-04-16     구경태          Initialized
 * -------------------------------------------------------------------------------
 * </pre>
 *
 */
@Component
public class CommonUtils {

  // 로그용 변수
  private static Logger logger = LoggerFactory.getLogger(CommonUtils.class);

  @Autowired
  public CommonUtils() {

  }

  /**
   * 공통 Response Model 생성 유틸 메소드
   * 
   * @param params
   * @return
   */
  public static ResponseDTO getResponseEntity(Object params) {

    ResponseDTO responseDTO = new ResponseDTO();

    responseDTO.setResultCode(CommonCode.SUCCESS.getResultCode());
    responseDTO.setResultMessage(CommonCode.SUCCESS.getResultMessage());
    responseDTO.setResultData(params);

    return responseDTO;
  }

  /**
   * Gateway Routing 갱신 메소드 TODO 게이트웨이 갱신에 실패하였을 경우 별도의 테이블에 이력 저장하는 로직 추가
   */
  public static void refreshGatewayRoutes(String gatewayUrl, String regUserNo) {

    // 신규 Routing 정보가 등록이 되면 Gateway의 API 목록을 갱신한다.
    WebClient.create().post().uri(gatewayUrl).exchange().onErrorMap(e -> {

      // Webflux 내부는 기존의 Thread 정보를 불러오지 못하므로 새롭게 등록해준다.
      CommonUtils.setCommonLog(CommonConstants.GATEWAY_REFRESH_SERVICE_NM, regUserNo);
      logger.error(e.toString());

      return e;
    }).subscribe();
  }

  /**
   * Log4j2 공통 로그 필드 설정 메소드
   * 
   * @param serviceDesc
   * @param rstrUserNo
   */
  public static void setCommonLog(String serviceDesc, String regUserNo) {

    ThreadContext.put("GUID", UUID.randomUUID().toString());
    ThreadContext.put("SERVICE_DESC", serviceDesc);
    ThreadContext.put("REG_USER_NO", regUserNo);
  }

}
