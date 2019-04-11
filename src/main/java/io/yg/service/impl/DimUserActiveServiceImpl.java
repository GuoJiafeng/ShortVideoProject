package io.yg.service.impl;

import io.yg.dao.DimUserActiveMapper;
import io.yg.entity.DimUserActive;
import io.yg.service.DimUserActiveService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;


@Transactional
@Service
public class DimUserActiveServiceImpl implements DimUserActiveService {


    @Autowired
    private DimUserActiveMapper dimUserActiveMapper;

    @Override
    public List<DimUserActive> showUserByDateAndDim(String day, String dim) {

        return dimUserActiveMapper.showUserByDateAndDim(day, dim);


    }
}
