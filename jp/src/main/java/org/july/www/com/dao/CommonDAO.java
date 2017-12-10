package org.july.www.com.dao;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

@Repository(value="commonDAO")
public class CommonDAO extends SqlSessionDaoSupport {

	@Resource(name = "sqlSession")
	public void setSqlSessionFactory(SqlSessionFactory sqlSession) {
		super.setSqlSessionFactory(sqlSession);
	}
	/**
     * 입력 처리 SQL mapping 을 실행한다.
     * 
     * @param queryId -  입력 처리 SQL mapping 쿼리 ID
     * @param parameterObject - 입력 처리 SQL mapping 입력 데이터를 세팅한 파라메터 객체(보통 VO 또는 Map)
     * 
     * @return DBMS가 지원하는 경우 insert 적용 결과 count
     */
    public int insert(String queryId, Object parameterObject) {
    	return getSqlSession().insert(queryId, parameterObject);
    }

    /**
     * 수정 처리 SQL mapping 을 실행한다.
     * 
     * @param queryId - 수정 처리 SQL mapping 쿼리 ID
     * @param parameterObject - 수정 처리 SQL mapping 입력 데이터(key 조건 및 변경 데이터)를 세팅한 파라메터 객체(보통 VO 또는 Map)
     * 
     * @return DBMS가 지원하는 경우 update 적용 결과 count
     */
    public int update(String queryId, Object parameterObject) {
        return getSqlSession().update(queryId, parameterObject);
    }

    /**
     * 삭제 처리 SQL mapping 을 실행한다.
     * 
     * @param queryId - 삭제 처리 SQL mapping 쿼리 ID
     * @param parameterObject - 삭제 처리 SQL mapping 입력 데이터(일반적으로 key 조건)를  세팅한 파라메터 객체(보통 VO 또는 Map)
     *        
     * @return DBMS가 지원하는 경우 delete 적용 결과 count
     */
    public int delete(String queryId, Object parameterObject) {
        return getSqlSession().delete(queryId, parameterObject);
    }

    /**
     * pk 를 조건으로 한 단건조회 처리 SQL mapping 을 실행한다. 
     * 
     * @param queryId - 단건 조회 처리 SQL mapping 쿼리 ID
     * @param parameterObject - 단건 조회 처리 SQL mapping 입력 데이터(key)를 세팅한 파라메터 객체(보통 VO 또는 Map)
     *        
     * @return 결과 객체 - SQL mapping 파일에서 지정한 resultClass/resultMap 에 의한 단일 결과 객체(보통 VO 또는 Map)
     */
    public Object selectOne(String queryId, Object parameterObject) {
        return getSqlSession().selectOne(queryId, parameterObject);
    }

    /**
     * 리스트 조회 처리 SQL mapping 을 실행한다.
     * 
     * @param queryId - 리스트 조회 처리 SQL mapping 쿼리 ID
     * @param parameterObject - 리스트 조회 처리 SQL mapping 입력 데이터(조회 조건)를 세팅한 파라메터 객체(보통 VO 또는 Map)
     * 
     * @return 결과 List 객체 - SQL mapping 파일에서 지정한  resultClass/resultMap 에 의한 결과 객체(보통 VO   또는 Map)의 List
     */
    @SuppressWarnings("rawtypes")
	public List selectList(String queryId, Object parameterObject) {
        return getSqlSession().selectList(queryId, parameterObject);
    }
}
