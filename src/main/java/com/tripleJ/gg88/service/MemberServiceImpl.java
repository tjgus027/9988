package com.tripleJ.gg88.service;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.util.WebUtils;

import com.tripleJ.gg88.domain.MemberVO;
import com.tripleJ.gg88.repository.MemberDAO;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	MemberDAO memberDao;
	
	@Autowired
	BcryptService bcrypt;

	
	public String agreement() {
		return "account/agreement";
	}
	
	public String enter() {
		return "account/enter";
	}
	
	public String completed(String nickname, Model model) {
		model.addAttribute("nickname", nickname);
		return "account/completed";
	}
	
	public String foundId() {
		return "account/foundId";
	}
	
	public String notFoundId() {
		return "account/notFoundId";
	}
	
	public String resetPw() {
		return "account/resetPw";
	}
	
	public String changePw() {
		return "account/changePw";
	}
	
	public String searchId(String userId) {
		MemberVO result = memberDao.searchId(userId);
		if (result == null) {
			return "null";
		} else {
			return "notNull";
		}
	}
	
	public String searchNick(String nickname) {
		MemberVO result = memberDao.searchNick(nickname);
		if (result == null) {
			return "null";
		} else {
			return "notNull";
		}
	}
	
	public int signUp(MemberVO memberVO, String userbirth) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		try {
			Date birth = dateFormat.parse(userbirth);
			memberVO.setBirth(birth);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		String pwBcrypt = bcrypt.encode(memberVO.getPw());
		memberVO.setPw(pwBcrypt);
		int result = memberDao.signUp(memberVO);
		return result;
	}
	
	public String signIn(String id, String pw, boolean loginKeep, HttpServletRequest request, HttpServletResponse response) {
		MemberVO memberVO = new MemberVO();
		memberVO.setId(id);
		MemberVO result = memberDao.searchId(id);
		if (result != null) {
			if (bcrypt.match(pw, result.getPw())) {
				if (loginKeep) {
					int limitTime = 60 * 60 * 24 * 7;
					Cookie cookie = new Cookie("loginCookie", request.getSession().getId());
					cookie.setPath("/");
					cookie.setMaxAge(limitTime);
					response.addCookie(cookie);
					long expiredDate = System.currentTimeMillis()+(limitTime*1000);
					Date sessionLimit = new Date(expiredDate);
					keepLogin(id, request.getSession().getId(), sessionLimit);
				}
				request.getSession().setAttribute("userId", result.getId());
				request.getSession().setAttribute("userNick", result.getNickname());
				return "success";
			} else {
				return "failure";
			}
		} else {
			return "notExist";
		}
	}
	
	public String autoSignIn(String sessionId) {
		MemberVO memberVO = checkSessionKey(sessionId);
		if (memberVO != null) {
		    return memberVO.getNickname(); 
		} else {
			return "notValid";
		}
	}
	
	public void keepLogin(String userId, String sessionId, Date sessionLimit) {
		Map<String, Object> map = new HashMap<>();
		map.put("id", userId);
		map.put("sessionId", sessionId);
		map.put("sessionLimit", sessionLimit);
		memberDao.keepLogin(map);
	}
	
	public MemberVO checkSessionKey(String sessionId) {
		return memberDao.checkSessionKey(sessionId);
	}
	
	public String signOut(HttpSession session, HttpServletRequest request, HttpServletResponse response) {
		Cookie loginCookie = WebUtils.getCookie(request, "loginCookie");
        if (loginCookie != null){
            loginCookie.setPath("/");
            loginCookie.setMaxAge(0);
            response.addCookie(loginCookie);
             
            Date date = new Date(System.currentTimeMillis());
            keepLogin((String)session.getAttribute("userId"), "none", date);
        }
        session.invalidate();
		return "redirect:../9988_main.jsp";
	}
	
	public String myInfo() {
		return "info/myInfo";
	}
	
	public String myHistory() {
		return "info/myHistory";
	}
}
