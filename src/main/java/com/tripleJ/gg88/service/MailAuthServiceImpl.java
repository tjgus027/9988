package com.tripleJ.gg88.service;

import java.util.Random;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

@Service
public class MailAuthServiceImpl implements MailAuthService {
	
	@Autowired
	private JavaMailSenderImpl javaMailSender;
	
	public int makeRandomNumber() {
		Random random = new Random();
        int checkNum = random.nextInt(888888) + 111111;
        return checkNum;
	}
	
	public String joinEmail(String email, String type) {
		int authNumber = makeRandomNumber();
		
		String toMail = email;
		String title = "";
		if (type.equals("findId")) {
			title = "9988 계정 - 아이디 찾기 인증번호";
		} else if (type.equals("findPw")) {
			title = "내 9988 비밀번호";
		} else {
			title = "9988 회원가입 인증번호";
		}
		String message =
                "홈페이지를 방문해주셔서 감사합니다." +
                "<br><br>" +
                "인증번호는 " + authNumber + " 입니다." +
                "<br><br>" +
                "해당 인증번호를 인증번호 확인한에 기입하여 주시기바랍니다.";
		mailSend(message, toMail, title);
        return Integer.toString(authNumber);
	}
	
	public void mailSend(String message, String toMail, String title) {
		MimeMessage mimeMessage = javaMailSender.createMimeMessage();
		
		try {
            MimeMessageHelper helper = new MimeMessageHelper(mimeMessage, true, "UTF-8");
            helper.setTo(toMail);
            helper.setSubject(title);
            helper.setText(message,true);
            javaMailSender.send(mimeMessage);
        } catch (MessagingException e) {
            throw new RuntimeException(e);
        }
	}
}
