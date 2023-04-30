package km.model;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class SNSDAO {
	
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
	
	public UserVO login(UserVO vo) {
		UserVO result =null;
		try {
			session = sqlSessionFactory.openSession(true);
			result = session.selectOne("login", vo);
		}finally {
			session.close();
		}
		return result;
	}
	
	public int join(UserVO vo) {
		try {
			session = sqlSessionFactory.openSession(true);
			row = session.insert("join", vo);
		}finally {
			session.close();
		}
		return row;
	}
	
	public List<ImgVO> getimg() {
		List<ImgVO> list =null;
		try {
			session = sqlSessionFactory.openSession(true);
			list = session.selectList("img");
		}finally {
			session.close();
		}
		return list;
	}

	public int info(UserVO vo) {
		try {
			session = sqlSessionFactory.openSession(true);
			row = session.insert("info", vo);
		}finally {
			session.close();
		}
		return row;
	}
	
	
	public List<PostVO> getpost() {
		List<PostVO> list =null;
		try {
			session = sqlSessionFactory.openSession(true);
			list = session.selectList("post");
		}finally {
			session.close();
		}
		return list;
	}
	
	public List<PostVO> getqna() {
		List<PostVO> list =null;
		try {
			session = sqlSessionFactory.openSession(true);
			list = session.selectList("qna");
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

	
	//마이페이지에 내 강아지 정보 보여주기
	public DogVO selectDoginfo(DogVO vo) { 
		DogVO result = null;
		
		try {
			session = sqlSessionFactory.openSession(true);
			result = session.selectOne("selectDoginfo", vo);
		}finally {
			session.close();
		}
		return result;
		
	}

	

}
