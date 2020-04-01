package com.supsmart.portal.service;

import com.supsmart.portal.entity.ConstsClassify;
import com.supsmart.portal.vo.ConstsClassifyVO;

import java.util.List;

/**
 * 课程类别表(ConstsClassify)表服务接口
 *
 * @author makejava
 * @since 2020-03-26 20:52:33
 */
public interface ConstsClassifyService {

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    ConstsClassify queryById(Integer id);

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<ConstsClassify> queryAllByLimit(int offset, int limit);

    /**
     * 新增数据
     *
     * @param constsClassify 实例对象
     * @return 实例对象
     */
    ConstsClassify insert(ConstsClassify constsClassify);

    /**
     * 修改数据
     *
     * @param constsClassify 实例对象
     * @return 实例对象
     */
    ConstsClassify update(ConstsClassify constsClassify);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    boolean deleteById(Integer id);

    /**
     * 查询所有的分类
     * @return
     */
    List<ConstsClassifyVO> queryAllCategroy();

}