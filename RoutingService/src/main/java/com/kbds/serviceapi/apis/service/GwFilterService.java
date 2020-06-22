package com.kbds.serviceapi.apis.service;

import java.util.List;
import java.util.Optional;
import javax.transaction.Transactional;
import org.apache.commons.lang3.StringUtils;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.kbds.serviceapi.apis.dto.EmptyJsonBody;
import com.kbds.serviceapi.apis.dto.FilterDTO;
import com.kbds.serviceapi.apis.entity.GwServiceFilter;
import com.kbds.serviceapi.apis.querydsl.GwFilterCustomRepository;
import com.kbds.serviceapi.apis.querydsl.GwRoutingCustomRepository;
import com.kbds.serviceapi.apis.repository.GwFilterRepository;
import com.kbds.serviceapi.apis.repository.GwRoutingRepository;
import com.kbds.serviceapi.common.code.BizExceptionCode;
import com.kbds.serviceapi.framework.exception.BizException;

/**
 *
 * <pre>
 *  Class Name     : GwRoutingService.java
 *  Description    : 필터 관리 서비스 클래스
 *  Author         : 구경태 (kyungtae.koo@kbfg.com)
 * 
 * -------------------------------------------------------------------------------
 *     변경No        변경일자        	       변경자          Description
 * -------------------------------------------------------------------------------
 *     Ver 1.0      2020-04-14     구경태          Initialized
 * -------------------------------------------------------------------------------
 * </pre>
 *
 */
@Service
public class GwFilterService {

  @Autowired
  GwFilterRepository gwFilterRepository;

  @Autowired
  GwFilterCustomRepository gwFilterCustomRepository;

  @Autowired
  GwRoutingRepository gwRoutingRepository;

  @Autowired
  GwRoutingCustomRepository gwRoutingCustomRepository;

  @Autowired
  ModelMapper modelMapper;

  /**
   * 필터 검색 기능
   * 
   * @param params
   * @return
   */
  public List<FilterDTO> findFilters(FilterDTO params) {

    try {

      return gwFilterCustomRepository.findbyConditions(params);
    } catch (Exception e) {

      throw new BizException(BizExceptionCode.COM001, e.toString());
    }
  };

  /**
   * 필터 상세 검색 기능
   * 
   * @param params
   * @return
   */
  @Transactional
  public Object findFilterDetail(Long filterId) {

    try {

      // DB 상에서 해당 filterId를 가진 Entity를 불러온다.
      Optional<GwServiceFilter> gwServiceFilter = gwFilterRepository.findById(filterId);

      if (!gwServiceFilter.isPresent()) {

        return new EmptyJsonBody();
      }

      // 결과 값으로 전달할 FilterDTO로 변환한 후 리턴한다.
      return modelMapper.map(gwServiceFilter.get(), FilterDTO.class);
    } catch (Exception e) {

      throw new BizException(BizExceptionCode.COM001, e.toString());
    }
  };


  /**
   * 필터링 서비스 등록
   * 
   * @param reqParam
   */

  @Transactional
  public void registFilter(FilterDTO reqParam) {

    // 파라미터 체크(사용자명)
    if (StringUtils.isEmpty(reqParam.getRegUserNo())) {

      throw new BizException(BizExceptionCode.COM002);
    }

    if (gwFilterCustomRepository.checkRegistValidation(reqParam)) {

      throw new BizException(BizExceptionCode.COM003);
    }

    try {

      // DTO를 Entity로 변환 후 데이터를 적재한다.
      GwServiceFilter param = modelMapper.map(reqParam, GwServiceFilter.class);

      gwFilterRepository.save(param);
    } catch (Exception e) {

      throw new BizException(BizExceptionCode.COM001, e.toString());
    }
  }


  /**
   * 필터 수정
   * 
   * @param reqParam
   */
  @Transactional
  public void updateFilter(FilterDTO reqParam, Long filterId) {

    GwServiceFilter gwServiceFilter = null;

    // 파라미터 체크(수정자)
    if (reqParam.getUptUserNo() == null) {

      throw new BizException(BizExceptionCode.COM002);
    }

    try {

      // DB 상에서 해당 serviceId를 가진 Entity를 불러온다.
      gwServiceFilter = gwFilterRepository.findById(filterId).get();
    } catch (Exception e) {

      throw new BizException(BizExceptionCode.COM001, e.toString());
    }

    if (gwServiceFilter == null) {

      throw new BizException(BizExceptionCode.COM004);
    }

    try {

      reqParam.setFilterId(filterId);

      if (gwFilterCustomRepository.checkUpdateValidation(reqParam)) {

        throw new BizException(BizExceptionCode.COM003);
      }

      // 데이터 정합성 체크가 끝나면 최종적으로 서비스를 갱신 시킨다.
      gwServiceFilter.setFilterNm(reqParam.getFilterNm());
      gwServiceFilter.setFilterDesc(reqParam.getFilterDesc());
      gwServiceFilter.setFilterBean(reqParam.getFilterBean());
      gwServiceFilter.setUptUserNo(reqParam.getUptUserNo());

      gwFilterRepository.save(gwServiceFilter);

    } catch (BizException e) {

      throw new BizException(BizExceptionCode.valueOf(e.getMessage()));
    } catch (Exception e) {

      throw new BizException(BizExceptionCode.COM001, e.toString());
    }
  }

  /**
   * 필터 삭제
   * 
   * @param reqParam
   */
  @Transactional
  public void deleteFilter(Long filterId) {

    try {

      if (isUseFilterService(filterId)) {

        throw new BizException(BizExceptionCode.COM007);
      }

      gwFilterRepository.deleteById(filterId);

    } catch (BizException e) {

      throw new BizException(BizExceptionCode.valueOf(e.getMessage()));
    } catch (Exception e) {

      throw new BizException(BizExceptionCode.COM001, e.toString());
    }
  }

  /**
   * FilterId를 사용중인 서비스가 존재하는지 체크
   * 
   * @param filterId
   * @return
   */
  public boolean isUseFilterService(Long filterId) {

    return gwRoutingRepository.countByFilterFilterId(filterId) > 0;
  }
}
