package com.github.xxbeanxx.web.action;

import java.io.ByteArrayInputStream;
import java.io.InputStream;

import org.apache.struts2.convention.annotation.Action;

import com.opensymphony.xwork2.ActionSupport;

/**
 * @author Greg Baker
 */
@SuppressWarnings("serial")
public class IndexAction extends ActionSupport {

	private InputStream inputStream;

	@Override
	@Action("index")
	public String execute() throws Exception {
		inputStream = new ByteArrayInputStream("Hello, world!".getBytes("UTF-8"));
		return SUCCESS;
	}
	
	public InputStream getInputStream() {
		return inputStream;
	}
	
}
