package com.supsmart.common.vo;

import lombok.Builder;
import lombok.Data;
import lombok.ToString;

@Data
@Builder
@ToString
public class ResponInfo {
	
	//错误代码 0-成功
	private Integer errcode = 0;
	
	// 消息
	private String message;
	
	// 数据
	private Object data;


}
