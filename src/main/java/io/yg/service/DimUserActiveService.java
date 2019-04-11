package io.yg.service;

import io.yg.entity.DimUserActive;

import java.util.List;

public interface DimUserActiveService {
    List<DimUserActive> showUserByDateAndDim(String day, String dim);
}
