package com.kbds.serviceapi.apis.querydsl.impl;

import static com.kbds.serviceapi.apis.entity.QGwApp.gwApp;
import static com.kbds.serviceapi.apis.entity.QGwServiceAppMapping.gwServiceAppMapping;
import static com.kbds.serviceapi.apis.entity.QGwService.gwService;
import static com.querydsl.core.group.GroupBy.groupBy;
import static com.querydsl.core.group.GroupBy.list;

import com.kbds.serviceapi.apis.dto.AppDTO;
import com.kbds.serviceapi.apis.entity.GwApp;
import com.kbds.serviceapi.apis.entity.QGwApp;
import com.kbds.serviceapi.apis.entity.QGwService;
import com.kbds.serviceapi.apis.entity.QGwServiceAppMapping;
import com.kbds.serviceapi.apis.querydsl.GwAppCustomRepository;
import com.kbds.serviceapi.common.utils.StringUtils;
import com.kbds.serviceapi.framework.dto.SearchDTO;
import com.querydsl.core.BooleanBuilder;
import com.querydsl.core.types.dsl.BooleanExpression;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.support.QuerydslRepositorySupport;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

@Repository
public class GwAppCustomRepositoryImpl extends QuerydslRepositorySupport
    implements GwAppCustomRepository {

  @Autowired
  ModelMapper modelMapper;

  /**
   * 생성자
   */
  public GwAppCustomRepositoryImpl() {

    super(GwApp.class);
  }

  @Override
  public List<AppDTO> findByConditions(SearchDTO searchDTO) {

    // 조회 쿼리 실행
    Map<GwApp, List<Long>> gwApps = from(gwApp)
        .innerJoin(gwServiceAppMapping).fetchJoin()
          .on(gwApp.appId.eq(gwServiceAppMapping.gwApp.appId))
        .innerJoin(gwService).fetchJoin()
          .on(gwServiceAppMapping.gwService.serviceId.eq(gwService.serviceId))
        .where(likeNm(searchDTO.getName()))
          .transform(groupBy(gwApp).as(list(gwService.serviceId)));

    Iterator<GwApp> keys = gwApps.keySet().iterator();

    // AppDTO로 변환 후 리턴
    return gwApps.entrySet().stream().map(entry -> {

      GwApp gwApp = entry.getKey();

      return new AppDTO(gwApp.getAppId(), gwApp.getAppNm(), gwApp.getAppKey(), gwApp.getAppDesc()
          , gwApp.getUseYn(), entry.getValue(), gwApp.getRegUserNo(), gwApp.getUptUserNo(),
          gwApp.getRegDt(), gwApp.getUptDt());
    }).collect(Collectors.toList());
  }

  /**
   * 이름 LIKE 검색
   * @param name
   * @return
   */
  private BooleanExpression likeNm(String name){

    return StringUtils.isEmptyParams(name) ? null : gwApp.appNm.contains(name);
  }
}
