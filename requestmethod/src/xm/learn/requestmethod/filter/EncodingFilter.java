package xm.learn.requestmethod.filter;

import java.io.IOException;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
  * 这是一个统一设置避免中文乱码的过滤器
 */
@WebFilter("/*")
public class EncodingFilter extends HttpFilter {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doFilter(HttpServletRequest req, HttpServletResponse res, FilterChain chain)
			throws IOException, ServletException {
		// 避免post传送的中文数据乱码
		req.setCharacterEncoding("utf-8");
		// 避免输出到页面的中文数据乱码
		res.setContentType("text/html;charset=utf-8");
		// 下一步
		super.doFilter(req, res, chain);
	}
}
