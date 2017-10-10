package main.java.common;

import java.util.HashMap;
import java.util.Map;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonSyntaxException;

public class JsonUtils {
	private static Gson gson = new Gson();

	public static String encode(Object obj) {
		String jsonStr = "";
		jsonStr = gson.toJson(obj);

		return jsonStr;
	}
	
	public static Gson getGson() {
		return gson;
	}
	
	public static <T> T decode(String jsonStr, Class<T> c) {
		T obj = null;
		try {
			obj = gson.fromJson(jsonStr, c);
		} catch (JsonSyntaxException e) {
			e.printStackTrace();
		}
		return obj;
	}
	
	@SuppressWarnings("unchecked")
	public static void main(String[] args) {
		
        Map <String, Object> params = new HashMap<String, Object>();
        params.put("a", 1);
        params.put("b", "b");
        Gson gson = new GsonBuilder().create();
        System.out.println(gson.toJson(params));
//		
	}
}
