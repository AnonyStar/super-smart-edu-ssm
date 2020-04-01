package com.supsmart.portal.dao;

import com.supsmart.portal.entity.ConstsSiteCarousel;
import org.apache.ibatis.annotations.Param;
import java.util.List;

/**
 * 首页轮播表(ConstsSiteCarousel)表数据库访问层
 *
 * @author makejava
 * @since 2020-03-29 22:37:01
 */
public interface ConstsSiteCarouselMapper {

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    ConstsSiteCarousel queryById(Integer id);

    /**
     * 查询指定行数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<ConstsSiteCarousel> queryAllByLimit(@Param("offset") int offset, @Param("limit") int limit);


    /**
     * 通过实体作为筛选条件查询
     *
     * @param constsSiteCarousel 实例对象
     * @return 对象列表
     */
    List<ConstsSiteCarousel> queryAll(ConstsSiteCarousel constsSiteCarousel);

    /**
     * 新增数据
     *
     * @param constsSiteCarousel 实例对象
     * @return 影响行数
     */
    int insert(ConstsSiteCarousel constsSiteCarousel);

    /**
     * 修改数据
     *
     * @param constsSiteCarousel 实例对象
     * @return 影响行数
     */
    int update(ConstsSiteCarousel constsSiteCarousel);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 影响行数
     */
    int deleteById(Integer id);

}