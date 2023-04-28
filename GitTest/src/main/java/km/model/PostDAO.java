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
	List<PostVO> qnalist=null;
	public List<PostVO> selectQna() {
		System.out.println("Post DAO 안");
		try {
			session=sqlSessionFactory.openSession();
			qnalist = session.selectList("select");
			
		}finally {
			session.close();
		}
		return qnalist;
	}
}
