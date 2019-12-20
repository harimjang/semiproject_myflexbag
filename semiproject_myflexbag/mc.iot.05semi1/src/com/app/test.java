package com.app;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

public class test {

	public static List<String> crawling() {
		String VIEWER_URL = "https://www.google.com/search?biw=1920&bih=914&tbm=isch&sxsrf=ACYBGNRCGm9dVYN57RSyWNNdTN4eERu1Ug%3A1576392416588&sa=1&ei=4Nb1XYnFI9H2hwPtjJXIDg&q=men+expensive+luxury+bag&oq=men+expensive+luxury+bag&gs_l=img.3...7825.7991..8114...1.0..0.130.552.0j5......0....1..gws-wiz-img.......35i39.5xj3GwwLXzc&ved=0ahUKEwiJtZGwh7fmAhVR-2EKHW1GBekQ4dUDCAc&uact=5";
		
		Document rawData;
		Elements imgs = null;
		try {
			rawData = Jsoup.connect(VIEWER_URL).timeout(5000).get();
//			System.out.println(rawData);
			imgs = rawData.select("img[class=rg_ic rg_i]"); // lz-lazyload 클래스를 가진 img들
//			System.out.println(imgs);
		} catch (IOException e) {
			e.printStackTrace();
		}
		List<String> imageUrls = new ArrayList<>();
		
		for (Element img : imgs) {
			String temp;
			if (img.attr("abs:data-src") == "" || img.attr("abs:data-src") == null) continue;
			else temp = img.attr("abs:data-src"); 
			imageUrls.add(temp);
		}
//		System.out.println(imageUrls.size()); // 이미지 URL들.
		
		
		return imageUrls;
		
		
		
	}
}