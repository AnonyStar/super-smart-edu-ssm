package com.supsmart.portal.service.impl;

import com.supsmart.portal.entity.ConstsSiteCarousel;
import com.supsmart.portal.dao.ConstsSiteCarouselMapper;
import com.supsmart.portal.service.ConstsSiteCarouselService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * 首页轮播表(ConstsSiteCarousel)表服务实现类
 *
 * @author makejava
 * @since 2020-03-29 22:37:01
 */
@Service("tConstsSiteCarouselService")
public class ConstsSiteCarouselServiceImpl implements ConstsSiteCarouselService {
    @Resource
    private ConstsSiteCarouselMapper constsSiteCarouselMapper;

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    @Override
    public ConstsSiteCarousel queryById(Integer id) {
        return this.constsSiteCarouselMapper.queryById(id);
    }

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    @Override
    public List<ConstsSiteCarousel> queryAllByLimit(int offset, int limit) {
        return this.constsSiteCarouselMapper.queryAllByLimit(offset, limit);
    }

    /**
     * 新增数据
     *
     * @param constsSiteCarousel 实例对象
     * @return 实例对象
     */
    @Override
    public ConstsSiteCarousel insert(ConstsSiteCarousel constsSiteCarousel) {
        this.constsSiteCarouselMapper.insert(constsSiteCarousel);
        return constsSiteCarousel;
    }

    /**
     * 修改数据
     *
     * @param constsSiteCarousel 实例对象
     * @return 实例对象
     */
    @Override
    public ConstsSiteCarousel update(ConstsSiteCarousel constsSiteCarousel) {
        this.constsSiteCarouselMapper.update(constsSiteCarousel);
        return this.queryById(constsSiteCarousel.getId());
    }

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    @Override
    public boolean deleteById(Integer id) {
        return this.constsSiteCarouselMapper.deleteById(id) > 0;
    }

    @Override
    public List<ConstsSiteCarousel> queryAll() {

        List<ConstsSiteCarousel> siteCarouselList = this.constsSiteCarouselMapper.queryAll(new ConstsSiteCarousel());
        return siteCarouselList;
    }
}