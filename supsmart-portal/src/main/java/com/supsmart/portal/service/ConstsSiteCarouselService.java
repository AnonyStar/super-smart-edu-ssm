package com.supsmart.portal.service;

import com.supsmart.portal.entity.ConstsSiteCarousel;

import java.util.List;

/**
 * 首页轮播表(ConstsSiteCarousel)表服务接口
 *
 * @author makejava
 * @since 2020-03-29 22:37:01
 */
public interface ConstsSiteCarouselService {

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    ConstsSiteCarousel queryById(Integer id);

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<ConstsSiteCarousel> queryAllByLimit(int offset, int limit);

    /**
     * 新增数据
     *
     * @param constsSiteCarousel 实例对象
     * @return 实例对象
     */
    ConstsSiteCarousel insert(ConstsSiteCarousel constsSiteCarousel);

    /**
     * 修改数据
     *
     * @param constsSiteCarousel 实例对象
     * @return 实例对象
     */
    ConstsSiteCarousel update(ConstsSiteCarousel constsSiteCarousel);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    boolean deleteById(Integer id);

    /**
     * 获取轮播数据
     * @return
     */
    List<ConstsSiteCarousel> queryAll();
}