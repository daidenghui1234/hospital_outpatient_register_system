package top.jkxljc.dao;

import org.apache.ibatis.annotations.Param;
import top.jkxljc.pojo.DeptBean;

import java.util.List;

/**
 * @author MediaLiu
 * @Classname DeptMapper
 * @Description TODO
 * @Date 2021/1/5 10:45
 * @Version V1.0
 */
public interface DeptMapper {
    /**
     * 查询所有科室

     * @return
     */
    List<DeptBean> findAll();

    /**
     * 根据编号查询
     * @param deptId
     * @return
     */
    DeptBean findById(int deptId);
    /**
     * @param deptName
     * @return
     */
     DeptBean findByName(@Param("deptName") String deptName);
    /**
     * 添加
     * @return
     */
    int addDept(DeptBean deptBean);
    /**
    删除
     */
    int delDept(@Param("deptId") int deptId);
    /**
     * 修改
     */
  int updateDept(DeptBean deptBean);
}
