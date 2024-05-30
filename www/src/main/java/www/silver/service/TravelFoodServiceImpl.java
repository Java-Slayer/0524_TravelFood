package www.silver.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import www.silver.dao.IF_TravelFoodDAO;
import www.silver.vo.MemberVO;
import www.silver.vo.PageVO;
import www.silver.vo.TravelFoodVO;
import www.silver.vo.tf_commentVO;

@Service
public class TravelFoodServiceImpl implements IF_TravelFoodService {

	@Inject
	IF_TravelFoodDAO tfdao;

	@Override
	public void insert(TravelFoodVO tfvo) throws Exception {
		// TODO Auto-generated method stub
		tfdao.insert(tfvo);
		String[] filename = tfvo.getFilename();
		for (String fname : filename) {
			tfdao.saveAttach(fname);
		}
	}

	@Override
	public List<TravelFoodVO> select(PageVO pagevo) throws Exception {
		// TODO Auto-generated method stub
		return tfdao.select(pagevo);
	}

	@Override
	public void delete(TravelFoodVO tfvo) throws Exception {
		// TODO Auto-generated method stub
		tfdao.delete(tfvo);
	}

	@Override
	public void deleteC(TravelFoodVO tfvo) throws Exception {
		// TODO Auto-generated method stub
		tfdao.deleteC(tfvo);
	}

	@Override
	public void update(TravelFoodVO tfvo) throws Exception {
		// TODO Auto-generated method stub
		tfdao.update(tfvo);
	}

	@Override
	public List<TravelFoodVO> search(PageVO pagevo) throws Exception {
		// TODO Auto-generated method stub
		return tfdao.search(pagevo);
	}

	@Override
	public TravelFoodVO detail(String no) throws Exception {
		// TODO Auto-generated method stub
		return tfdao.detail(no);
	}

	@Override
	public void insertC(tf_commentVO tfcvo) throws Exception {
		// TODO Auto-generated method stub
		tfdao.insertC(tfcvo);
	}

	@Override
	public List<tf_commentVO> selectC(TravelFoodVO tfvo) throws Exception {
		// TODO Auto-generated method stub
		return tfdao.selectC(tfvo);
	}

	@Override
	public void updateL(TravelFoodVO tfvo) throws Exception {
		// TODO Auto-generated method stub
		tfdao.updateL(tfvo);
	}

	@Override
	public List<tf_commentVO> selectAllC() throws Exception {
		// TODO Auto-generated method stub
		return tfdao.selectAllC();
	}

	@Override
	public int getTotalCount() throws Exception {
		// TODO Auto-generated method stub
		return tfdao.getTotalCount();
	}

	@Override
	public int getTotalCountSearch(PageVO pagevo) throws Exception {
		// TODO Auto-generated method stub
		return tfdao.getTotalCountSearch(pagevo);
	}

	@Override
	public List<TravelFoodVO> selectAll() throws Exception {
		// TODO Auto-generated method stub
		return tfdao.selectAll();
	}

	@Override
	public List<String> getFilenames(String no) throws Exception {
		// TODO Auto-generated method stub
		return tfdao.getFilenames(no);
	}

	@Override
	public void signin(MemberVO mvo) throws Exception {
		// TODO Auto-generated method stub
		tfdao.signin(mvo);
	}

}
