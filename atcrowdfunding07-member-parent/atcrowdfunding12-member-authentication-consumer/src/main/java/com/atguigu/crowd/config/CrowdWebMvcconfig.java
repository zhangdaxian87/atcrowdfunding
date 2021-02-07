package com.atguigu.crowd.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class CrowdWebMvcconfig implements WebMvcConfigurer {

	@Override
	public void addViewControllers(ViewControllerRegistry registry) {
		
		// 浏览器访问的地址
		String urlPath = "/auth/member/to/reg/page";

		// 目标视图的名称，将来拼接“prefix: classpath:/templates/”、“suffix: .html”前后缀
		String viewName = "member-reg";

		registry.addViewController(urlPath).setViewName(viewName);
		registry.addViewController("/auth/member/to/login/page").setViewName("member-login");	// 去登录页面
		registry.addViewController("/auth/member/to/center/page").setViewName("member-center"); // 登录成功后跳转的页面
		
		// zhangqiang add
		registry.addViewController("/member/my/crowd").setViewName("member-crowd");	// 去的我的众筹
	}

}
