package io.yg.dao;

import io.yg.entity.DimUserActive;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface DimUserActiveMapper {
    int insert(DimUserActive record);

    int insertSelective(DimUserActive record);

    List<DimUserActive> showUserByDateAndDim(@Param("day")String day, @Param("dim")String dim);

}