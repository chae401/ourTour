package xml;

import java.io.BufferedInputStream;
import java.io.IOException;
import java.net.URL;
import java.net.URLEncoder;

import javax.swing.text.Document;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;

public class OpenAPITest02 {
	public static void main(String[] agrs) throws IOException {
		DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
		try {
			DocumentBuilder builder = factory.newDocumentBuilder();
			// 파싱할 InputStream 생성
			// 1. 웹 서버를 제공하는 url에 연결해서 데이터를 가져오기
			// 1) 접속할 url의 정보를 정의
	        StringBuilder urlBuilder = new StringBuilder("http://apis.data.go.kr/B551011/KorService1/searchKeyword1"); /*URL*/
	        String serviceKey = "=gqATU9Pyyh3j9GjuPmIlCVjG5nJZq2kn41Y8BpRF7yRBoCG99teBpNhsHdyHpLAaNOFne0RQKZ2%2BxncnBsZ%2FJg%3D%3D";
	        String keyword = "강원";
	        urlBuilder.append("?" + URLEncoder.encode("ServiceKey","UTF-8") + serviceKey); /*Service Key*/
	        urlBuilder.append("&" + URLEncoder.encode("numOfRows","UTF-8") + "=" + URLEncoder.encode("10", "UTF-8")); /*한 페이지 결과 수*/
	        urlBuilder.append("&" + URLEncoder.encode("pageNo","UTF-8") + "=" + URLEncoder.encode("1", "UTF-8")); /*페이지 번호*/
	        urlBuilder.append("&" + URLEncoder.encode("MobileOS","UTF-8") + "=" + URLEncoder.encode("ETC", "UTF-8"));
	        urlBuilder.append("&" + URLEncoder.encode("MobileApp","UTF-8") + "=" + URLEncoder.encode("ourTour", "UTF-8"));
	        urlBuilder.append("&" + URLEncoder.encode("keyword","UTF-8") + "=" + URLEncoder.encode(keyword, "UTF-8"));
	        // 2) 웹서버에 접속하기
	        URL url = new URL(urlBuilder.toString());
	        
	        // 3) 접속해서 response되는 데이터를 읽어오기
	        // 		읽어온 데이터를 저장 - BufferedInputStream은 InputStream의 하위
	        BufferedInputStream xmldata = new BufferedInputStream(url.openStream());
	        
	        //Document document = builder.parse(xmldata);
	        
	        
		} catch (ParserConfigurationException e) {
			e.printStackTrace();
		}
	}
}
