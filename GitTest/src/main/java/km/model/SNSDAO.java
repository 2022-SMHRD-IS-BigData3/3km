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

	public int info(UserVO vo) {
		try {
			session = sqlSessionFactory.openSession(true);
			row = session.insert("info", vo);
		}finally {
			session.close();
		}
		return row;
	}
	
	
	public List<PostVO> showpost1() {
		List<PostVO> list =null;
		try {
			session = sqlSessionFactory.openSession(true);
			list = session.selectList("post1");
		}finally {
			session.close();
		}
		return list;
	}
	public List<PostVO> showpost2() {
		List<PostVO> list =null;
		try {
			session = sqlSessionFactory.openSession(true);
			list = session.selectList("post2");
		}finally {
			session.close();
		}
		return list;
	}
	public List<PostVO> showpost3() {
		List<PostVO> list =null;
		try {
			session = sqlSessionFactory.openSession(true);
			list = session.selectList("post3");
		}finally {
			session.close();
		}
		return list;
	}
	public List<PostVO> showpost4() {
		List<PostVO> list =null;
		try {
			session = sqlSessionFactory.openSession(true);
			list = session.selectList("post4");
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
		}finally {
			session.close();
		}
		return row;
	}
	
	//마이페이지에 내 강아지 정보 보여주기
	public List<DogVO> selectDoginfo(){ 
		List<DogVO> list = null;
		
		try {
			session = sqlSessionFactory.openSession(true);
			list = session.selectList("selectDoginfo");
		}finally {
			session.close();
		}
		return list;
		
	}

	public List<PostVO> cafe() {
		List<PostVO> list = null;
		try {
			session = sqlSessionFactory.openSession(true);
			list = session.selectList("cafe");
		}finally {
			session.close();
		}
		return list;
	}

	public int pluscomment(CommentVO vo) {
		try {
			session = sqlSessionFactory.openSession(true);
			row = session.insert("pluscomment", vo);
		}finally {
			session.close();
		}
		return row;
	}
	
	public int rewrite(PostVO vo) {
		try {
			session = sqlSessionFactory.openSession(true);
			row = session.insert("rewrite", vo);
		}finally {
			session.close();
		}
		return row;
	}

	public int mypagewrite(List<DogVO> list) {
		try {
			session = sqlSessionFactory.openSession(true);
			row = session.update("mypagerewrite", list);
		}finally {
			session.close();
		}
		return row;
	}

	public void introduce(UserVO vo2) {
		try {
			session = sqlSessionFactory.openSession(true);
			session.update("introduce", vo2);
		}finally {
			session.close();
		}
	}

	public List<PostVO> getnanum() {
		List<PostVO> list =null;
		try {
			session = sqlSessionFactory.openSession(true);
			list = session.selectList("nanum");
		}finally {
			session.close();
		}
		return list;
	}
	
	//게시글에 댓글 달기
	public int commentwrite(CommentVO vo) {
		
		try {
			session = sqlSessionFactory.openSession(true);
			row = session.insert("commentwrite", vo);
			System.out.println("row확인"+row);
		}finally {
			session.close();
		}
		return row;
	}

	
	 // 게시글에 댓글 불러오기
	List<CommentVO> commentlist= null;
	
	public List<CommentVO> selectcomment() {
		try {
			session=sqlSessionFactory.openSession();
			commentlist = session.selectList("commentprint");
		}finally {
			session.close();
		}
		return commentlist;
	}

	
	//댓글에서 닉네임 가져오기
		List<UserVO> nicknamelist= null;
		
		public List<UserVO> nickname() {
			System.out.println("nicknamelist DAO 안");
			try {
				session=sqlSessionFactory.openSession();
				nicknamelist = session.selectList("selectnickname");
				
			}finally {
				session.close();
			}
			return nicknamelist;
		}
	

}
