package www.silver.service;

import java.util.List;

import www.silver.vo.MemberVO;
import www.silver.vo.PageVO;
import www.silver.vo.TravelFoodVO;
import www.silver.vo.tf_commentVO;

public interface IF_TravelFoodService {

	public void insert(TravelFoodVO tfvo) throws Exception;

	public List<TravelFoodVO> select(PageVO pagevo) throws Exception;

	public int getTotalCount() throws Exception;

	public int getTotalCountSearch(PageVO pagevo) throws Exception;

	public void delete(TravelFoodVO tfvo) throws Exception;

	public void deleteC(TravelFoodVO tfvo) throws Exception;

	public void update(TravelFoodVO tfvo) throws Exception;

	public List<TravelFoodVO> search(PageVO pagevo) throws Exception;

	public TravelFoodVO detail(String no) throws Exception;

	public void insertC(tf_commentVO tfcvo) throws Exception;

	public List<tf_commentVO> selectC(TravelFoodVO tfvo) throws Exception;

	public void updateL(TravelFoodVO tfvo) throws Exception;

	public List<tf_commentVO> selectAllC() throws Exception;

	public List<TravelFoodVO> selectAll() throws Exception;

	public List<String> getFilenames(String no) throws Exception;

	public void signin(MemberVO mvo) throws Exception;

}
