package com.test.crawl;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;


public class Ex01 {

public static void main(String[] args) {
	
	
		//Ex01.java
		
		//Jsoup
		//- 브라우저처럼 사이트 접속 > 접속한 페이지의 소스 읽기 > 소스 분석 > 탐색 > 원하는 데이터 접근 & 추출
	
		try {
			
			String url = "https://jsoup.org/";
//			String url = "https://www.hrd.go.kr/hrdp/co/pcobo/PCOBO0100P.do?tracseId=AIG20220000409247&tracseTme=10&crseTracseSe=C0061&trainstCstmrId=500020059609#undefined";
			
			
			//접속해서 읽어온 문서 내용을 다 담고 잇는 참조 객체
			Document doc = Jsoup.connect(url).get();
			
			System.out.println(doc.html());
			System.out.println();
			System.out.println();
			System.out.println();
			
			
//			doc.getElementById(url)
//			doc.select(null)
			
			Elements list = doc.select(".content > .col1 > h1");
			
			System.out.println(list.size());
			
			System.out.println(list.get(0).text());
			
			
		} catch (Exception e) {
			System.out.println("Ex01.main");
			e.printStackTrace();
		}
	
	
	}	
	
}
