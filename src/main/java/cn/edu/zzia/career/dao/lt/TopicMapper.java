package cn.edu.zzia.career.dao.lt;

import java.util.List;
import java.util.Map;

import cn.edu.zzia.career.pojo.lt.Topic;


public interface TopicMapper {
  

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table topic
     *
     * @mbg.generated
     */
    int insert(Topic record);

   

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table topic
     *
     * @mbg.generated
     */
    Topic selectById(String topicId);

    
    List<Topic> selectList(Map<String, Object> query);
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table topic
     *
     * @mbg.generated
     */
    int update(Topic record);
    
    /**
     * 查询我参与的话题
     * @param query
     * @return
     */
    List<Topic> selectJoinList(Map<String, Object> query);
    
    int delete(String topicId);

    
}