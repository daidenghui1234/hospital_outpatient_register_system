package top.jkxljc.service;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import top.jkxljc.dao.DeptMapper;
import top.jkxljc.pojo.DeptBean;

import java.util.List;

/**
 * @author MediaLiu
 * @Classname DeptService
 * @Description TODO
 * @Date 2021/1/5 21:56
 * @Version V1.0
 */
@Service
public class DeptService {
    @Autowired
    private DeptMapper mapper;
    public List<DeptBean> findAll(){
        return mapper.findAll();
    }
    public DeptBean isExistName(String deptName){
        DeptBean deptBean = mapper.findByName(deptName);
        return deptBean;

    }

    /**
     * 添加
     * @param deptBean
     * @return
     */
    public boolean addDept(DeptBean deptBean){
       return mapper.addDept(deptBean) > 0;
    }
    /**
     * 根据主键查询
     * @param deptId
     * @return
     */
    public DeptBean findDeptById(int deptId){
        return mapper.findById(deptId);
    }
    /**
     * @param deptBean
     * @return
     */
    public boolean updateDept(DeptBean deptBean){
          return mapper.updateDept(deptBean) > 0;
      }
    public boolean delDept(int deptId){
       return mapper.delDept(deptId)>0;
    }
}
