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
		// 1. URL�� ����� ���� StringBuilder.
        StringBuilder urlBuilder = new StringBuilder("http://apis.data.go.kr/B551011/KorService1/searchKeyword1"); /*URL*/
        // 2. ���� API�ǿ�û �԰ݿ� �´� �Ķ���� ����, �߱޹��� ����Ű.
        String serviceKey = "=gqATU9Pyyh3j9GjuPmIlCVjG5nJZq2kn41Y8BpRF7yRBoCG99teBpNhsHdyHpLAaNOFne0RQKZ2%2BxncnBsZ%2FJg%3D%3D";
        String keyword = "����";
        urlBuilder.append("?" + URLEncoder.encode("ServiceKey","UTF-8") + serviceKey); /*Service Key*/
        urlBuilder.append("&" + URLEncoder.encode("numOfRows","UTF-8") + "=" + URLEncoder.encode("10", "UTF-8")); /*�� ������ ��� ��*/
        urlBuilder.append("&" + URLEncoder.encode("pageNo","UTF-8") + "=" + URLEncoder.encode("1", "UTF-8")); /*������ ��ȣ*/
        urlBuilder.append("&" + URLEncoder.encode("MobileOS","UTF-8") + "=" + URLEncoder.encode("ETC", "UTF-8"));
        urlBuilder.append("&" + URLEncoder.encode("MobileApp","UTF-8") + "=" + URLEncoder.encode("ourTour", "UTF-8"));
        urlBuilder.append("&" + URLEncoder.encode("keyword","UTF-8") + "=" + URLEncoder.encode(keyword, "UTF-8"));
        urlBuilder.append("&" + URLEncoder.encode("contentTypeId","UTF-8") + "=" + URLEncoder.encode("12", "UTF-8"));
        urlBuilder.append("&" + URLEncoder.encode("_type","UTF-8") + "=" + URLEncoder.encode("json", "UTF-8"));

        // 3. URL ��ü ����.
        URL url = new URL(urlBuilder.toString());
        // 4. ��û�ϰ��� �ϴ� URL�� ����ϱ� ���� Connection ��ü ����.
        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
        // 5. ����� ���� �޼ҵ� SET.
        conn.setRequestMethod("GET");
        // 6. ����� ���� Content-type SET. 
        conn.setRequestProperty("Content-type", "application/json");
        // 7. ��� ���� �ڵ� Ȯ��.
        System.out.println("Response code: " + conn.getResponseCode());
        // 8. ���޹��� �����͸� BufferedReader ��ü�� ����.
        BufferedReader rd;
        if(conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
            rd = new BufferedReader(new InputStreamReader(conn.getInputStream(), "UTF-8"));
        } else {
            rd = new BufferedReader(new InputStreamReader(conn.getErrorStream(), "UTF-8"));
        }
        // 9. ����� �����͸� ���κ��� �о� StringBuilder ��ü�� ����.
        StringBuilder sb = new StringBuilder();
        String line;
        while ((line = rd.readLine()) != null) {
            sb.append(line);
        }
        // 10. ��ü ����.
        rd.close();
        conn.disconnect();
        // 11. ���޹��� ������ Ȯ��.
        System.out.println(sb.toString());
//        
        // JSP�� �ѱ�� ���� Json�����͸� �Ľ�
        // 1. ���ڿ� ������ JSON�� �Ľ��ϱ� ���� JSONParser ��ü ����
        JSONParser parser = new JSONParser();
        // 2. ���ڿ��� JSON ���·� JSONObject ��ü�� ����
        JSONObject obj = (JSONObject)parser.parse(sb.toString());
        obj = (JSONObject)obj.get("response");
        obj = (JSONObject)obj.get("body");
        obj = (JSONObject)obj.get("items");
        // 3. �ʿ��� ����Ʈ ������ �κи� ������ JSONArray�� ����
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
