package com.kbds.serviceapi.apis.querydsl.impl;

import static com.kbds.serviceapi.apis.entity.QGwApp.gwApp;
import static com.kbds.serviceapi.apis.entity.QGwService.gwService;
import static com.kbds.serviceapi.apis.entity.QGwServiceAppMapping.gwServiceAppMapping;
import static com.kbds.serviceapi.apis.entity.QGwServiceFilter.gwServiceFilter;

import com.kbds.serviceapi.apis.dto.QRoutingDTO;
import com.kbds.serviceapi.apis.dto.RoutingDTO;
import com.kbds.serviceapi.apis.entity.GwService;
import com.kbds.serviceapi.apis.querydsl.GwRoutingCustomRepository;
import com.kbds.serviceapi.common.code.CommonCode;
import com.kbds.serviceapi.common.utils.StringUtils;
import com.kbds.serviceapi.framework.dto.SearchDTO;
import com.querydsl.core.BooleanBuilder;
import com.querydsl.core.types.dsl.BooleanExpression;
import com.querydsl.core.types.dsl.Expressions;
import java.util.List;
import org.springframework.data.jpa.repository.support.QuerydslRepositorySupport;
import org.springframework.stereotype.Service;


/**
 * <pre>
 *  Class Name     : GwServiceCustomRepositoryImpl.java
 *  Description    : 사용자 정의 Querydsl 클래스
 *  Author         : 구경태 (kyungtae.koo@kbfg.com)
 *
 * -------------------------------------------------------------------------------
 *     변경No        변경일자        	       변경자          Description
 * -------------------------------------------------------------------------------
 *     Ver 1.0      2020-04-14     구경태          Initialized
 * -------------------------------------------------------------------------------
 * </pre>
 */
@Service
public class GwRoutingCustomRepositoryImpl extends QuerydslRepositorySupport
    implements GwRoutingCustomRepository {

  /**
   * 생성자
   */
  public GwRoutingCustomRepositoryImpl() {

    super(GwService.class);
  }

  /**
   * Gw Bean Bean 등록 정보 조회 Custom Repository
   */
  @Override
  public List<RoutingDTO> findByGwConditions() {

    // GwService, GwApp, Mapping 테이블과 조인 후 appKey를 , 로 합쳐 전달한다.    
    return from(gwService)
        .innerJoin(gwServiceFilter)
          .on(gwService.filter.filterId.eq(gwServiceFilter.filterId))
        .leftJoin(gwServiceAppMapping)
          .on(gwService.serviceId.eq(gwServiceAppMapping.gwService.serviceId))
        .leftJoin(gwApp)
          .on(gwApp.appId.eq(gwServiceAppMapping.gwApp.appId))
        .select(new QRoutingDTO(
            gwService.serviceId,
            gwService.filter.filterId,
            gwService.serviceNm,
            Expressions.stringTemplate("group_concat({0}, ',')", gwApp.appKey),
            gwService.servicePath,
            gwService.serviceTargetUrl,
            gwService.serviceDesc,
            gwService.serviceLoginType,
            gwService.serviceAuthType,
            gwService.useYn,
            gwService.filter.filterBean,
            gwService.filter.useYn,
            gwService.regUserNo,
            gwService.uptUserNo,
            gwService.regDt,
            gwService.uptDt))
        .where(eqUseYn(CommonCode.Y.name()))
        .groupBy(gwService.serviceId).fetch();

  }

  /**
   * 검색 조건에 맞게 GW_SERVICE 테이블을 조회하는 Custom Repository
   */
  @Override
  public List<RoutingDTO> findByConditions(SearchDTO searchDTO) {

    final String name = searchDTO.getName();
    final String useYn = searchDTO.getUseYn();
    final String servicePath = searchDTO.getServicePath();

    return from(gwService)
          .innerJoin(gwServiceFilter)
            .on(gwService.filter.filterId.eq(gwServiceFilter.filterId))
          .select(new QRoutingDTO(
                  gwService.serviceId,
                  gwService.filter.filterId,
                  gwService.serviceNm,
                  gwService.servicePath,
                  gwService.serviceTargetUrl,
                  gwService.serviceDesc,
                  gwService.serviceLoginType,
                  gwService.serviceAuthType,
                  gwService.useYn,
                  gwService.filter.filterBean,
                  gwService.filter.useYn,
                  gwService.regUserNo,
                  gwService.uptUserNo,
                  gwService.regDt,
                  gwService.uptDt))
          .where(likeNm(name), eqUseYn(useYn), likeServicePath(servicePath))
          .fetch();
  }

  /**
   * 서비스 등록 전 중복 서비스 여부 체크
   */
  @Override
  public boolean isRegisteredService(RoutingDTO param) {

    // 이미 등록되어 있는 데이터가 있다면 true 없다면 false를 리턴한다.
    return from(gwService)
        .innerJoin(gwServiceFilter)
          .on(gwService.filter.filterId.eq(gwServiceFilter.filterId))
        .where(eqServicePathOrServiceNm(param.getServicePath(), param.getServiceNm()))
        .fetchCount() > 0;
  }

  /**
   * 서비스 수정 전 중복 서비스 체크
   */
  @Override
  public boolean isValidUpdateData(RoutingDTO param, Long serviceId) {

    // 이미 등록되어 있는 데이터가 있다면 true 없다면 false를 리턴한다.
    return from(gwService)
        .innerJoin(gwServiceFilter)
        .on(gwService.filter.filterId.eq(gwServiceFilter.filterId))
        .where(eqServicePathOrServiceNm(param.getServicePath(), param.getServiceNm())
              ,neServiceId(serviceId)
              ,eqUseYn(CommonCode.Y.name()))
        .fetchCount() <= 0;
  }


  /**
   * 서비스 삭제
   */
  @Override
  public long deleteService(Long[] serviceId) {

    // 검색 조건문 등록
    BooleanBuilder builder = new BooleanBuilder();

    builder.and(gwService.serviceId.in(serviceId));

    return delete(gwService).where(builder).execute();
  }

  /**
   * 이름 LIKE 검색
   * @param name
   * @return
   */
  private BooleanExpression likeNm(String name){

    return StringUtils.isEmptyParams(name) ? null : gwService.serviceNm.contains(name);
  }

  /**
   * 사용 유무 검색
   * @param useYn
   * @return
   */
  private BooleanExpression eqUseYn(String useYn){

    return StringUtils.isEmptyParams(useYn) ?
        null : gwService.useYn.like(useYn).and(gwServiceFilter.useYn.eq(useYn));
  }

  /**
   * 이름 LIKE 검색
   * @param servicePath
   * @return
   */
  private BooleanExpression likeServicePath(String servicePath){

    return StringUtils.isEmptyParams(servicePath) ? null : gwService.servicePath.contains(servicePath);
  }

  /**
   * 사용 중인 SERVICE인지 체크
   * @param servicePath
   * @param serviceNm
   * @return
   */
  private BooleanExpression eqServicePathOrServiceNm(String servicePath, String serviceNm){

    return StringUtils.isEmptyParams(servicePath, serviceNm) ?
        null : gwService.servicePath.eq(servicePath).or(gwService.serviceNm.eq(serviceNm));
  }

  /**
   * 현재 서비스 ID를 제외한 검색
   * @param serviceId
   * @return
   */
  private BooleanExpression neServiceId(Long serviceId){

    return serviceId == null ?
        null : gwService.serviceId.ne(serviceId);
  }
}
