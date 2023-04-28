package km.model;

import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class PostDAO {
	
	private static SqlSessionFactory sqlSessionFactory;
	static {
		try {
			String resuource = "km/db/mybatis-config.xml";
			InputStream inputStream = Resources.getResourceAsStream(resuource);
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
	SqlSession session =null;
	int row = 0;
	
	
	public PostVO selectQna(PostVO vo) {
		PostVO result =null;
		try {
			session = sqlSessionFactory.openSession(true);
			result = session.selectOne("post", vo);
		}finally {
			session.close();
		}
		return result;
	}
	
	public int write(PostVO vo) {
		try {
			session = sqlSessionFactory.openSession(true);
			row = session.insert("write", vo);
			session.insert("write2", vo);
		}finally {
			session.close();
		}
		return row;
	}

	public PostVO showmain(PostVO vo) {
		PostVO result =null;
		try {
			session = sqlSessionFactory.openSession(true);
			result = session.selectOne("showmain", vo);
		}finally {
			session.close();
		}
		return result;
		
		
	}
	
	
	
	
	
	
	
	
	
	
	
}
