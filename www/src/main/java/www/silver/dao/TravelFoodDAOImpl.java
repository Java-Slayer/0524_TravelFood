package www.silver.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import www.silver.vo.MemberVO;
import www.silver.vo.PageVO;
import www.silver.vo.TravelFoodVO;
import www.silver.vo.tf_commentVO;

@Repository
public class TravelFoodDAOImpl implements IF_TravelFoodDAO {

	private static String mapperQuerry = "www.silver.dao.IF_TravelFoodDAO";

	@Inject
	private SqlSession sqlSession;

	@Override
	public void insert(TravelFoodVO tfvo) throws Exception {
		// TODO Auto-generated method stub
		sqlSession.insert(mapperQuerry + ".insert", tfvo);

	}

	@Override
	public List<TravelFoodVO> select(PageVO pagevo) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(mapperQuerry + ".select", pagevo);
	}

	@Override
	public void delete(TravelFoodVO tfvo) throws Exception {
		// TODO Auto-generated method stub
		sqlSession.delete(mapperQuerry + ".delete", tfvo);
	}

	@Override
	public void deleteC(TravelFoodVO tfvo) throws Exception {
		// TODO Auto-generated method stub
		sqlSession.delete(mapperQuerry + ".deleteC", tfvo);
	}

	@Override
	public void update(TravelFoodVO tfvo) throws Exception {
		// TODO Auto-generated method stub
		sqlSession.update(mapperQuerry + ".update", tfvo);
	}

	@Override
	public List<TravelFoodVO> search(PageVO pagevo) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(mapperQuerry + ".search", pagevo);
	}

	@Override
	public TravelFoodVO detail(String no) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(mapperQuerry + ".detail", no);
	}

	@Override
	public void insertC(tf_commentVO tfcvo) throws Exception {
		// TODO Auto-generated method stub
		sqlSession.insert(mapperQuerry + ".insertC", tfcvo);
	}

	@Override
	public List<tf_commentVO> selectC(TravelFoodVO tfvo) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(mapperQuerry + ".selectC", tfvo);
	}

	@Override
	public void updateL(TravelFoodVO tfvo) throws Exception {
		// TODO Auto-generated method stub
		sqlSession.update(mapperQuerry + ".updateL", tfvo);
	}

	@Override
	public List<tf_commentVO> selectAllC() throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(mapperQuerry + ".selectAllC");
	}

	@Override
	public int getTotalCount() throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(mapperQuerry + ".getTotalCount");
	}

	@Override
	public int getTotalCountSearch(PageVO pagevo) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(mapperQuerry + ".getTotalCountSearch", pagevo);
	}

	@Override
	public void saveAttach(String filename) throws Exception {
		// TODO Auto-generated method stub
		sqlSession.insert(mapperQuerry + ".saveFile", filename);
	}

	@Override
	public List<TravelFoodVO> selectAll() throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(mapperQuerry + ".selectAll");
	}

	@Override
	public List<String> getFilenames(String no) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(mapperQuerry + ".getFiles", no);
	}

	@Override
	public void signin(MemberVO mvo) throws Exception {
		// TODO Auto-generated method stub
		sqlSession.insert(mapperQuerry + ".signin", mvo);
	}
}
