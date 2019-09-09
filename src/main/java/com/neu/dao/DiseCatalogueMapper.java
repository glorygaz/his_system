package com.neu.dao;

import com.neu.model.DiseCatalogue;

public interface DiseCatalogueMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(DiseCatalogue record);

    int insertSelective(DiseCatalogue record);

    DiseCatalogue selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(DiseCatalogue record);

    int updateByPrimaryKey(DiseCatalogue record);
}