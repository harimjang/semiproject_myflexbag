package com.app;


import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import org.jsoup.nodes.Element;
import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;
import com.frame.Service;
import com.vo.ItemVO;
import com.vo.UserVO;

public class App {
	public static void main(String[] args) {
		// Start Spring Container
		//getting information from xml - Spring will boot based on the info (p54) Circleed Number 1,2
//		AbstractApplicationContext factory = new GenericXmlApplicationContext("myspring.xml"); 
		
		//Spring will call the UserBiz constructor and name(id) it biz
//		Service<String, UserVO> service = (Service)factory.getBean("uservice");
//		Service<String, ItemVO> service = (Service)factory.getBean("itemService");
		String[] cateids = new String[]{"shoulder","tote","backpack","messenger","clutch","wallet","etc"};
		String[] sizeids = new String[]{"free","small","medium","large"};
		String[] colorids = new String[]{"balck","blue","red","green","yellow","orange","pink","navy","grey", "etc"};
		String[] brandids = new String[]{"louisvuiton","chanel","ysl","prada","gucci","fendi","botegaveneta","givency","tumy", "cartier", "hermes"};
		String[] matids = new String[]{"calfskin","lambskin","aligator","artificialleather","cotton","knit","nylon"};
		
		String cateid;
		String sizeid;
		String colorid;
		String brandid;
		String matid;
		String pname;
		int price;
		int pstock;
		String img1;
		
		
		//Crawling
		List<String> imageUrls = test.crawling();
		
		for (String img : imageUrls) {
			cateid = cateids[ (int)(Math.random()*cateids.length) ];
			sizeid = sizeids[ (int)(Math.random()*sizeids.length) ];
			colorid = colorids[ (int)(Math.random()*colorids.length) ];
			brandid = brandids[ (int)(Math.random()*brandids.length) ];
			matid = matids[ (int)(Math.random()*matids.length) ];
			pname = brandid+"_"+(int)(Math.random()*1000);
			price = (int)(Math.random()*100)*10000;
			pstock = (int)(Math.random()*20);
			img1 = img;
			
			System.out.printf(
					"INSERT INTO Lproduct VALUES(Lproduct_seq.nextval, '%s', '%s', '%s', '%s', '%s', '%s', %d, %d, sysdate, '%s', 'img01', 'img01', 'img01', 'img01'); \n",cateid, sizeid, colorid, brandid, matid, pname, price, pstock, img1
					);
//			try {
////				ArrayList<UserVO> dbuser = null;
//				service.register(item); //UserBiz.insert called
////				System.out.println("APP: registered");
//				
//			} catch (Exception e) {
//				e.printStackTrace();
//			} finally {
//				factory.close();
//			}
			
		}
		
		
		
	System.out.println("done");

		
			
	}

}
