package com.xiao.crm.base;


import org.springframework.dao.DataAccessException;

import java.util.List;

/**
 * BaseMapper  基本方法定义
 */
public interface BaseMapper<T,ID> {
    /**
     * 添加记录返回行数
     *
     * @param entity
     */
    public Integer insertSelective(T entity) throws DataAccessException;

    /**
     * 添加记录返回主键
     */
    public Integer insertHasKey(T entity) throws DataAccessException;

    /**
     * 批量添加
     *
     * @param entities
     */
    public Integer insertBatch(List<T> entities) throws DataAccessException;


    /**
     * 根据id 查询详情
     * @param id
     */
    public T selectByPrimaryKey(ID id) throws DataAccessException;


    /**
     * 多条件查询
     * @param baseQuery
     */
    public List<T> selectByParams(BaseQuery baseQuery) throws DataAccessException;


    /**
     * 更新单条记录
     * @param entity
     */
    public Integer updateByPrimaryKeySelective(T entity) throws DataAccessException;


    /**
     * 批量更新
     * @param entities
     */
    public Integer updateBatch(List<T> entities) throws DataAccessException;

    /**
     * 删除单条记录
     * @param id
     */
    public Integer deleteByPrimaryKey(ID id) throws DataAccessException;

    /**
     * 批量删除
     * @param ids
     */
    public Integer deleteBatch(ID[] ids) throws DataAccessException;


}
