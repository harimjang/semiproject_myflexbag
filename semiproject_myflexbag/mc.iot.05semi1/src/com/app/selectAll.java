package com.app;

import java.util.ArrayList;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

import com.frame.Service;
import com.vo.UserVO;


public class selectAll {

	public static void main(String[] args) {
		AbstractApplicationContext factory = new GenericXmlApplicationContext("myspring.xml"); //xml���Ͽ��� ������ �����ͼ�
		
		Service<String, UserVO> service = (Service)factory.getBean("uservice"); //Spring�� ���� id=biz�� UserBiz ������ ȣ���ϰ�,
		ArrayList<UserVO> list = null;
		try {
//			list = service.get();
			for(UserVO u: list) {
				System.out.println(u);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
				factory.close();
	}

}
