package km.model;

import java.io.InputStream;
import java.util.List;

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
	
	
	public List<PostVO> selectQna() {
		List<PostVO> list =null;
		try {
			session = sqlSessionFactory.openSession(true);
			list = session.selectList("post");
		}finally {
			session.close();
		}
		return list;
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

	
	
	
	
	
	
	
	
	
}
