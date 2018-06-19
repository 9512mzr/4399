package com.entity;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class url0 {
	private String pageUrl;// ������Ҫ��������ҳ��ַ
	private String pageEncode = "UTF8";// ������Ҫ��������ҳ�ı���
	private String code;
	
	public String getPageSource() {
		StringBuffer sb = new StringBuffer();
		try {
			// ����һURL����
			URL url = new URL(pageUrl);
			// ʹ��openStream�õ�һ���������ɴ˹���һ��BufferedReader����
			BufferedReader in = new BufferedReader(new InputStreamReader(url.openStream(), pageEncode));
			String line;
			// ��ȡwww��Դ
			while ((line = in.readLine()) != null) {
				sb.append(line);
			}
			in.close();
		} catch (Exception ex) {
			System.err.println(ex);
		}
		return sb.toString();
	}
	
	public void getPageSourceWithoutHtml() {
		final String regEx_script = "<script[^>]*?>[\\s\\S]*?<\\/script>"; // ����script��������ʽ
		String htmlStr = getPageSource();// ��ȡδ�������Դ��
		Pattern p_script = Pattern.compile(regEx_script, Pattern.CASE_INSENSITIVE);
		Matcher m_script = p_script.matcher(htmlStr);
		htmlStr = m_script.replaceAll(""); 
		this.setCode(htmlStr);
	}
	
	public String getPageUrl() {
		return pageUrl;
	}
	public void setPageUrl(String pageUrl) {
		this.pageUrl = pageUrl;
	}
	public String getPageEncode() {
		return pageEncode;
	}
	public void setPageEncode(String pageEncode) {
		this.pageEncode = pageEncode;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	
}
