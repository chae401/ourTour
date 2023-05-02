package com.ourtour.tourapp.service;

import java.io.IOException;
import java.util.Map;

import org.json.simple.parser.ParseException;

public interface RecommendService {
	public Map<String, Map> recommend(String content, String keyword)throws IOException, ParseException;
}
