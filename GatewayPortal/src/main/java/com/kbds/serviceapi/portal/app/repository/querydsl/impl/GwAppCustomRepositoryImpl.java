package com.kbds.serviceapi.portal.app.repository.querydsl.impl;

import static com.kbds.serviceapi.portal.app.entity.QGwApp.gwApp;
import static com.kbds.serviceapi.portal.api.entity.QGwService.gwService;
import static com.kbds.serviceapi.portal.app.entity.QGwServiceAppMapping.gwServiceAppMapping;
import static com.querydsl.core.group.GroupBy.groupBy;
import static com.querydsl.core.group.GroupBy.list;

import com.kbds.serviceapi.portal.api.entity.GwService;
import com.kbds.serviceapi.common.utils.StringUtils;
import com.kbds.serviceapi.framework.dto.SearchDTO;
import com.kbds.serviceapi.portal.app.dto.AppDTO;
import com.kbds.serviceapi.portal.app.entity.GwApp;
import com.kbds.serviceapi.portal.app.repository.querydsl.GwAppCustomRepository;
import com.querydsl.core.types.dsl.BooleanExpression;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.support.QuerydslRepositorySupport;
import org.springframework.stereotype.Repository;

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
        .leftJoin(gwServiceAppMapping).fetchJoin()
        .on(gwApp.appId.eq(gwServiceAppMapping.gwApp.appId))
        .leftJoin(gwService).fetchJoin()
        .on(gwServiceAppMapping.gwService.serviceId.eq(gwService.serviceId))
        .where(likeNm(searchDTO.getName()))
        .transform(groupBy(gwApp).as(list(gwService.serviceId)));

    // AppDTO로 변환 후 리턴
    return gwApps.entrySet().stream().map(entry -> {

      GwApp gwApp = entry.getKey();

      return new AppDTO(gwApp.getAppId(), gwApp.getAppNm(), gwApp.getAppKey(), gwApp.getAppDesc()
          , gwApp.getUseYn(), entry.getValue(), gwApp.getRegUserNo(), gwApp.getUptUserNo(),
          gwApp.getRegDt(), gwApp.getUptDt());
    }).collect(Collectors.toList());
  }

  @Override
  public Map<GwApp, List<GwService>> findAppDetailById(Long appId) {

    // 조회 쿼리 실행
    return from(gwApp)
        .leftJoin(gwServiceAppMapping).fetchJoin()
        .on(gwApp.appId.eq(gwServiceAppMapping.gwApp.appId))
        .leftJoin(gwService).fetchJoin()
        .on(gwServiceAppMapping.gwService.serviceId.eq(gwService.serviceId))
        .where(gwApp.appId.eq(appId))
        .transform(groupBy(gwApp).as(list(gwService)));
  }

  /**
   * 이름 LIKE 검색
   *
   * @param name
   * @return
   */
  private BooleanExpression likeNm(String name) {

    return StringUtils.isEmptyParams(name) ? null : gwApp.appNm.contains(name);
  }
}
