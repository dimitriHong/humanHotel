package javalec.hotel.hpro.controller;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import javalec.hotel.hpro.hotelDAO.IDao;
import javalec.hotel.hpro.hotelDTO.ReplyVO;


@RestController
@RequestMapping(value="/restBoard")
public class RestBoardController {
	@Autowired
	private SqlSession sqlSession;
	
	
	@RequestMapping(value = "/list", method = RequestMethod.POST)
	public List<ReplyVO> getReplyList(@RequestParam("bid") int bid) throws Exception {
		System.out.println("list 동작을 시작합니다!!");
		IDao dao = sqlSession.getMapper(IDao.class);
		return dao.getReplyList(bid);
	}
	@RequestMapping(value = "/saveReply", method = RequestMethod.POST)
	public Map<String, Object> saveReply(@RequestBody ReplyVO replyVO,Model model) throws Exception {
		System.out.println("saveReply 동작합니다");
		Map<String, Object> result = new HashMap<>();
		IDao dao = sqlSession.getMapper(IDao.class);
		model.addAttribute("relyVo", new ReplyVO());

		try {
			System.out.println("try start!!!");
			System.out.println("replyVO println"+replyVO);
			dao.saveReply(replyVO);
			System.out.println("saveReply로 한번");
			
			result.put("status", "OK");
		} catch (Exception e) {
			e.printStackTrace();
			result.put("status", "False");
		}
		
		return result;
	}
}
