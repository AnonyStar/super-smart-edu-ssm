package com.supsmart.portal.service.impl;

import com.github.pagehelper.PageHelper;
import com.supsmart.portal.dao.CourseDao;
import com.supsmart.portal.entity.ConstsClassify;
import com.supsmart.portal.dao.ConstsClassifyMapper;
import com.supsmart.portal.entity.Course;
import com.supsmart.portal.service.ConstsClassifyService;
import com.supsmart.portal.vo.ConstsClassifyVO;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

/**
 * 课程类别表(ConstsClassify)表服务实现类
 *
 * @author makejava
 * @since 2020-03-26 20:52:33
 */
@Service("tConstsClassifyService")
public class ConstsClassifyServiceImpl implements ConstsClassifyService {
    @Resource
    private ConstsClassifyMapper constsClassifyMapper;
    @Resource
    private CourseDao courseDao;

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    @Override
    public ConstsClassify queryById(Integer id) {
        return this.constsClassifyMapper.queryById(id);
    }

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    @Override
    public List<ConstsClassify> queryAllByLimit(int offset, int limit) {
        return this.constsClassifyMapper.queryAllByLimit(offset, limit);
    }

    /**
     * 新增数据
     *
     * @param constsClassify 实例对象
     * @return 实例对象
     */
    @Override
    public ConstsClassify insert(ConstsClassify constsClassify) {
        this.constsClassifyMapper.insert(constsClassify);
        return constsClassify;
    }

    /**
     * 修改数据
     *
     * @param constsClassify 实例对象
     * @return 实例对象
     */
    @Override
    public ConstsClassify update(ConstsClassify constsClassify) {
        this.constsClassifyMapper.update(constsClassify);
        return this.queryById(constsClassify.getId());
    }

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    @Override
    public boolean deleteById(Integer id) {
        return this.constsClassifyMapper.deleteById(id) > 0;
    }

    @Override
    public List<ConstsClassifyVO> queryAllCategroy() {
        List<ConstsClassify> classifies = constsClassifyMapper.queryAll(new ConstsClassify());
        Map<String, List<ConstsClassify>> collect = classifies.stream().collect(Collectors.groupingBy(ConstsClassify::getParentCode));
        //获取顶级类目
        List<ConstsClassify> constsClassifies = collect.get("0");
        List<ConstsClassifyVO> list = new ArrayList<>();

        //获取子类目
        constsClassifies.stream().forEach(item ->{
            ConstsClassifyVO vo = new ConstsClassifyVO();
            BeanUtils.copyProperties(item,vo);
            vo.setClassifyList(collect.get(item.getCode()));

            //获取推荐课程
            PageHelper.startPage(1,5);
            PageHelper.orderBy("weight desc");
            Course course = new Course();
            course.setClassify(item.getCode());
            List<Course> courses = courseDao.queryAll(course);
            vo.setCourses(courses);
            list.add(vo);
        });



        return list;
    }
}