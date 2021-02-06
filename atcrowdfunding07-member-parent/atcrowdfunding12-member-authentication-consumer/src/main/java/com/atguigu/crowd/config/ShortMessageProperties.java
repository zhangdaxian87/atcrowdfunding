package com.atguigu.crowd.config;

import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * 发短信配置类 short.message
 * @author ZhangQiang
 * @date   2021/02/05
 */
@NoArgsConstructor
@AllArgsConstructor
@Data
@Component
@ConfigurationProperties(prefix = "short.message")
public class ShortMessageProperties {

	private String host;	// 短信接口调用的URL地址
	private String path;	// 具体发送短信功能的地址
	private String method;	// 请求方式
	private String appCode; // 用来调用第三方短信API的AppCode
	private String sign;	// 签名编号
	private String skin;	// 模板编号
	
	

}
