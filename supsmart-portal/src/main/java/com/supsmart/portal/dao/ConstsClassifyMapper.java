package com.supsmart.portal.dao;

import com.supsmart.portal.entity.ConstsClassify;
import org.apache.ibatis.annotations.Param;
import java.util.List;

/**
 * 课程类别表(ConstsClassify)表数据库访问层
 *
 * @author makejava
 * @since 2020-03-26 20:52:33
 */
public interface ConstsClassifyMapper {

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    ConstsClassify queryById(Integer id);

    /**
     * 查询指定行数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<ConstsClassify> queryAllByLimit(@Param("offset") int offset, @Param("limit") int limit);


    /**
     * 通过实体作为筛选条件查询
     *
     * @param constsClassify 实例对象
     * @return 对象列表
     */
    List<ConstsClassify> queryAll(ConstsClassify constsClassify);

    /**
     * 新增数据
     *
     * @param constsClassify 实例对象
     * @return 影响行数
     */
    int insert(ConstsClassify constsClassify);

    /**
     * 修改数据
     *
     * @param constsClassify 实例对象
     * @return 影响行数
     */
    int update(ConstsClassify constsClassify);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 影响行数
     */
    int deleteById(Integer id);

}