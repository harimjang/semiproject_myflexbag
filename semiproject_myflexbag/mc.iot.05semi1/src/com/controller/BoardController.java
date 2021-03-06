package com.controller;

import java.io.PrintWriter;
import java.util.ArrayList;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.frame.Service;
import com.vo.BoardVO;
import com.vo.UserVO;

@Controller
public class BoardController {

	@Resource(name = "bservice")
	Service<String, BoardVO> service;

	@RequestMapping("/qna_index.mc")
	public ModelAndView qnaboard(ModelAndView mv,ArrayList<BoardVO> list, BoardVO vo) throws Exception {
			list = service.getall(vo);
			mv.addObject("blist", list);
			mv.addObject("center", "board/qna_index");
			mv.setViewName("main");
		return mv;
	}

	@RequestMapping(value = "/qna_write.mc", method = RequestMethod.GET)
	public ModelAndView getwrite(HttpSession session) {
		String userid = (String)session.getAttribute("userid");
		ModelAndView mv = new ModelAndView();
		mv.addObject("center", "board/qna_write");
		mv.addObject("userid", userid);
		mv.setViewName("main");
		return mv;
	}

	@RequestMapping(value = "/qna_write.mc", method = RequestMethod.POST)
	public String postwrite(BoardVO vo) {
		try {
			service.register(vo);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:qna_index.mc";
	}

	@RequestMapping(value = "/qna_view.mc", method = RequestMethod.GET)
	public ModelAndView qnadetailview(@RequestParam("bno") int bno, ModelAndView mv) throws Exception {
		BoardVO vo = service.get( Integer.toString(bno) );
		mv.addObject("article", vo);
		mv.addObject("center", "board/qna_view");
		mv.setViewName("main");
	return mv;
	}
	
	@RequestMapping("/qna_del.mc")
	public String delete(int bno) {
		try {
			String bno2=""+bno;
			service.remove(bno2);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:qna_index.mc";
	}
	
	@RequestMapping("/qna_update.mc")
	public ModelAndView qnaupdate(ModelAndView mv, BoardVO board) {
		
			try {
				board = service.get(Integer.toString(board.getBno()));
			} catch (Exception e) {
				e.printStackTrace();
			}
			mv.addObject("uboard", board);
			mv.addObject("center", "board/qna_update");
			mv.setViewName("main");

		return mv;
	}
	
	@RequestMapping(value="/qna_updateimpl.mc",method=RequestMethod.POST)
	public String updateimpl(BoardVO board) throws Exception {
		service.modify(board);
		String bno = Integer.toString(board.getBno());
		return "redirect:qna_view.mc?bno="+bno;
	}
	
}
