package www.silver.hom;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import www.silver.service.IF_TravelFoodService;
import www.silver.util.FileDataUtil;
import www.silver.vo.MemberVO;
import www.silver.vo.PageVO;
import www.silver.vo.TravelFoodVO;
import www.silver.vo.tf_commentVO;

@Controller
public class HomeController {

	@Inject
	IF_TravelFoodService tfService;

	@Inject
	FileDataUtil filedatautil;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) throws Exception {
		List<TravelFoodVO> allList = tfService.selectAll();
		model.addAttribute("allListTF", allList);
		List<tf_commentVO> cList = tfService.selectAllC();
		model.addAttribute("cListAll", cList);
		return "home";
	}

//	@RequestMapping(value = "/input", method = RequestMethod.GET)
//	public String input() {
//		return "inputForm";
//	}

	@RequestMapping(value = "/inputSave", method = RequestMethod.POST)
	public String inputSave(@ModelAttribute TravelFoodVO tfvo, MultipartFile[] file) throws Exception {
//		System.out.println(file.length);
//		for (int i = 0; i < file.length; i++) {
//			System.out.println(file[i].getOriginalFilename());
//		}
		String[] filename = filedatautil.fileUpload(file);
//		for (int i = 0; i < filename.length; i++) {
//			System.out.println(filename[i]);
//		}
		tfvo.setFilename(filename);
		tfService.insert(tfvo);
		return "redirect:tList";
	}

	@RequestMapping(value = "/tList", method = RequestMethod.GET)
	public String tList(Model model, @ModelAttribute PageVO pagevo) throws Exception {
//		if (pagevo.getPage() == null) {
//			pagevo.setPage(1);
//		}
//		System.out.println("현재 페이지 번호 : " + pagevo.getPage());
//		pagevo.setTotalCount(tfService.getTotalCount());
//
//		pagevo.prt();

//		List<TravelFoodVO> allList = tfService.select(pagevo);
		List<TravelFoodVO> allList = tfService.selectAll();
		model.addAttribute("allListTF", allList);
		model.addAttribute("pagevo", pagevo);
		return "tfList";
	}

	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public String delete(@ModelAttribute TravelFoodVO tfvo) throws Exception {
		tfService.deleteC(tfvo);
		tfService.delete(tfvo);
		return "redirect:tList";
	}

//	@RequestMapping(value = "/modify", method = RequestMethod.GET)
//	public String modify(Model model, @ModelAttribute TravelFoodVO tfvo) throws Exception {
//		model.addAttribute("username", tfvo.getUsername());
//		model.addAttribute("no", tfvo.getNo());
//		model.addAttribute("place", tfvo.getPlace());
//		model.addAttribute("restaurant", tfvo.getRestaurant());
//		return "modifyForm";
//	}

	@RequestMapping(value = "/modifySave", method = RequestMethod.POST)
	public String modifySave(@ModelAttribute TravelFoodVO tfvo) throws Exception {
		tfService.update(tfvo);
		return "redirect:tList";
	}

	@RequestMapping(value = "/search", method = RequestMethod.GET)
	public String search(Model model, @ModelAttribute PageVO pagevo) throws Exception {
		if (pagevo.getPage() == null) {
			pagevo.setPage(1);
		}
		System.out.println("현재 페이지 번호 : " + pagevo.getPage());
		pagevo.setTotalCount(tfService.getTotalCountSearch(pagevo));

		pagevo.prt();

		List<TravelFoodVO> allList = tfService.search(pagevo);
		model.addAttribute("allListTF", allList);
		model.addAttribute("pagevo", pagevo);
		return "searchForm";
	}

	@RequestMapping(value = "/detail", method = RequestMethod.GET)
	public String detail(Model model, @RequestParam("no") String no) throws Exception {
		TravelFoodVO tfvo = tfService.detail(no);
		model.addAttribute("detailFood", tfvo);
		List<tf_commentVO> cList = tfService.selectC(tfvo);
		model.addAttribute("cListAll", cList);
		List<String> attachList = tfService.getFilenames(no);
		model.addAttribute("attachList", attachList);
		return "tfDetailForm";
	}

	@RequestMapping(value = "/commentSave", method = RequestMethod.POST)
	public String commentSave(Model model, @ModelAttribute tf_commentVO tfcvo) throws Exception {
		tfService.insertC(tfcvo);
		model.addAttribute("no", tfcvo.getNo());
		return "redirect:detail";
	}

	@RequestMapping(value = "/updateLikes", method = RequestMethod.GET)
	public String updateLikes(@ModelAttribute TravelFoodVO tfvo) throws Exception {
		tfService.updateL(tfvo);
		return "redirect:tList";
	}

	@RequestMapping(value = "/signin", method = RequestMethod.POST)
	public String signin(@ModelAttribute MemberVO mvo) throws Exception {
		tfService.signin(mvo);
		return "redirect:";
	}
}
