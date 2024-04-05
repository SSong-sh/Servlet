package com.test.crawl;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

public class test {
	public static void main(String[] args) {
		
		try {
			String url = "https://www.hrd.go.kr/hrdp/co/pcobo/PCOBO0100P.do?tracseId=AIG20220000409247&tracseTme=10&crseTracseSe=C0061&trainstCstmrId=500020059609#undefined";
			
			Document doc = Jsoup.connect(url).get();
			
//			Elements list = doc.select(".content > .infoList > .list > li");
			Elements titles = doc.select("#section1 > div > div.box > div.info > div.content > div > ul > li:nth-child(2) > span.con > span");
			
			System.out.println(titles.size());

	             //선택된 요소들의 title 속성값 출력
	            for (Element title : titles) {
	                System.out.println(title.attr("title"));
	            }
			
			
		} catch (Exception e) {
			System.out.println("test.main");
			e.printStackTrace();
		}
		
		
	}
}
