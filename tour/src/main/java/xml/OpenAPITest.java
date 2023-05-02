package xml;

import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;
import java.util.stream.IntStream;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

import java.io.BufferedReader;
import java.io.IOException;

public class OpenAPITest {

	public static void main(String[] args) throws IOException, ParseException {
		// 1. URL을 만들기 위한 StringBuilder.
        StringBuilder urlBuilder = new StringBuilder("http://apis.data.go.kr/B551011/KorService1/searchKeyword1"); /*URL*/
        // 2. 오픈 API의요청 규격에 맞는 파라미터 생성, 발급받은 인증키.
        String serviceKey = "=gqATU9Pyyh3j9GjuPmIlCVjG5nJZq2kn41Y8BpRF7yRBoCG99teBpNhsHdyHpLAaNOFne0RQKZ2%2BxncnBsZ%2FJg%3D%3D";
        String keyword = "강원";
        urlBuilder.append("?" + URLEncoder.encode("ServiceKey","UTF-8") + serviceKey); /*Service Key*/
        urlBuilder.append("&" + URLEncoder.encode("numOfRows","UTF-8") + "=" + URLEncoder.encode("10", "UTF-8")); /*한 페이지 결과 수*/
        urlBuilder.append("&" + URLEncoder.encode("pageNo","UTF-8") + "=" + URLEncoder.encode("1", "UTF-8")); /*페이지 번호*/
        urlBuilder.append("&" + URLEncoder.encode("MobileOS","UTF-8") + "=" + URLEncoder.encode("ETC", "UTF-8"));
        urlBuilder.append("&" + URLEncoder.encode("MobileApp","UTF-8") + "=" + URLEncoder.encode("ourTour", "UTF-8"));
        urlBuilder.append("&" + URLEncoder.encode("keyword","UTF-8") + "=" + URLEncoder.encode(keyword, "UTF-8"));
        urlBuilder.append("&" + URLEncoder.encode("contentTypeId","UTF-8") + "=" + URLEncoder.encode("12", "UTF-8"));
        urlBuilder.append("&" + URLEncoder.encode("_type","UTF-8") + "=" + URLEncoder.encode("json", "UTF-8"));

        // 3. URL 객체 생성.
        URL url = new URL(urlBuilder.toString());
        // 4. 요청하고자 하는 URL과 통신하기 위한 Connection 객체 생성.
        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
        // 5. 통신을 위한 메소드 SET.
        conn.setRequestMethod("GET");
        // 6. 통신을 위한 Content-type SET. 
        conn.setRequestProperty("Content-type", "application/json");
        // 7. 통신 응답 코드 확인.
        System.out.println("Response code: " + conn.getResponseCode());
        // 8. 전달받은 데이터를 BufferedReader 객체로 저장.
        BufferedReader rd;
        if(conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
            rd = new BufferedReader(new InputStreamReader(conn.getInputStream(), "UTF-8"));
        } else {
            rd = new BufferedReader(new InputStreamReader(conn.getErrorStream(), "UTF-8"));
        }
        // 9. 저장된 데이터를 라인별로 읽어 StringBuilder 객체로 저장.
        StringBuilder sb = new StringBuilder();
        String line;
        while ((line = rd.readLine()) != null) {
            sb.append(line);
        }
        // 10. 객체 해제.
        rd.close();
        conn.disconnect();
        // 11. 전달받은 데이터 확인.
        System.out.println(sb.toString());
//        
        // JSP로 넘기기 위해 Json데이터를 파싱
        // 1. 문자열 형태의 JSON을 파싱하기 위한 JSONParser 객체 생성
        JSONParser parser = new JSONParser();
        // 2. 문자열을 JSON 형태로 JSONObject 객체에 저장
        JSONObject obj = (JSONObject)parser.parse(sb.toString());
        obj = (JSONObject)obj.get("response");
        obj = (JSONObject)obj.get("body");
        obj = (JSONObject)obj.get("items");
        // 3. 필요한 리스트 데이터 부분만 가져와 JSONArray로 저장
        JSONArray array = (JSONArray) obj.get("item");
		Map<String, Map> items = new HashMap<String, Map>();

        for(int i=0;i<array.size();i++) {
        	JSONObject item_obj = (JSONObject)array.get(i);
        	System.out.println(item_obj.get("addr1"));
        	System.out.println(item_obj.get("firstimage"));
        	System.out.println(item_obj.get("title"));
        	Map<String, String> item = new HashMap<String, String>();
        	item.put("title",(String)item_obj.get("title"));
        	item.put("addr",(String)item_obj.get("addr1"));
        	item.put("image",(String)item_obj.get("firstimage"));
        	items.put("item"+(i+1), item);
        }
        System.out.println(items);

	}

}
