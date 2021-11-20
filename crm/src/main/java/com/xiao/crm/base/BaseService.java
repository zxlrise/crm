package com.xiao.crm.base;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.xiao.crm.query.CustomerLossQuery;
import com.xiao.crm.query.OrderDetailsQuery;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;

import java.util.HashMap;
import java.util.List;
import java.util.Map;


public abstract class BaseService<T,ID> {

    @Autowired
    private BaseMapper<T,ID> baseMapper;

    /**
     * 添加记录返回行数
     * @param entity
     * @return
     */
    public Integer insertSelective(T entity) throws DataAccessException{
        return baseMapper.insertSelective(entity);
    }

    /**
     * 添加记录返回主键
     * @param entity
     * @return
     */
    public ID insertHasKey(T entity) throws DataAccessException{
        baseMapper.insertHasKey(entity);
        try {
           return (ID) entity.getClass().getMethod("getId").invoke(entity);
        } catch (Exception e) {
            e.printStackTrace();
            return  null;
        }
    }
    
    
    /**
     * 批量添加
     * @param entities 
     * @return
     */
    public Integer insertBatch(List<T> entities) throws DataAccessException{
        return baseMapper.insertBatch(entities);
    }


    /**
     * 根据id 查询详情
     * @param id
     * @return
     */
    public T selectByPrimaryKey(ID id) throws DataAccessException{
        return baseMapper.selectByPrimaryKey(id);
    }


    /**
     * 多条件查询
     * @param baseQuery
     * @return
     */
    public List<T> selectByParams(BaseQuery baseQuery) throws DataAccessException{
        return baseMapper.selectByParams(baseQuery);
    }


    /**
     * 更新单条记录
     * @param entity
     * @return
     */
    public Integer updateByPrimaryKeySelective(T entity) throws DataAccessException{
        return baseMapper.updateByPrimaryKeySelective(entity);
    }


    /**
     * 批量更新
     * @param entities
     * @return
     */
    public Integer updateBatch(List<T> entities) throws DataAccessException{
        return baseMapper.updateBatch(entities);
    }

    /**
     * 删除单条记录
     * @param id
     * @return
     */
    public Integer deleteByPrimaryKey(ID id) throws DataAccessException{
        return baseMapper.deleteByPrimaryKey(id);
    }

    /**
     * 批量删除
     * @param ids
     * @return java.lang.Integer
     */
    public Integer deleteBatch(ID[] ids) throws DataAccessException{
        return baseMapper.deleteBatch(ids);
    }


    /**
     * 查询数据表格对应的数据
     * @param baseQuery
     * @return java.util.Map<java.lang.String,java.lang.Object>
     */
    public Map<String, Object> queryByParamsForTable(BaseQuery baseQuery) {
        Map<String,Object> result = new HashMap<String,Object>();
        PageHelper.startPage(baseQuery.getPage(),baseQuery.getLimit());
        PageInfo<T> pageInfo =new PageInfo<T>(selectByParams(baseQuery));
        result.put("count",pageInfo.getTotal());
        result.put("data",pageInfo.getList());
        result.put("code",0);
        result.put("msg","");
        return result;
    }



}
