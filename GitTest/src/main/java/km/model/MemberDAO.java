package km.model;

import java.io.InputStream;

import javax.websocket.Session;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MemberDAO {

	
	private static SqlSessionFactory sqlSessionFactory;
	static {
		try {
			String resource = "km/db/mybatis-config.xml";
			InputStream inputStream = Resources.getResourceAsStream(resource);
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	SqlSession session =null;
	int row = 0;
	
	public int join(MemberVO vo) {
		try {
			session = sqlSessionFactory.openSession(true);
			row = session.insert("join", vo);
			session.insert("join2", vo);
		}finally {
			session.close();
		}
		return row;
	}

	public MemberVO login(MemberVO vo) {
		MemberVO result =null;
		try {
			session = sqlSessionFactory.openSession(true);
			result = session.selectOne("login", vo);
		}finally {
			session.close();
		}
		return result;
	}
	
	
	
	
	
	
	
	
}
