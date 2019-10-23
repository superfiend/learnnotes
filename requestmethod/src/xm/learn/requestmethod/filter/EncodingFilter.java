package xm.learn.requestmethod.filter;

import java.io.IOException;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
  * ����һ��ͳһ���ñ�����������Ĺ�����
 */
@WebFilter("/*")
public class EncodingFilter extends HttpFilter {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doFilter(HttpServletRequest req, HttpServletResponse res, FilterChain chain)
			throws IOException, ServletException {
		// ����post���͵�������������
		req.setCharacterEncoding("utf-8");
		// ���������ҳ���������������
		res.setContentType("text/html;charset=utf-8");
		// ��һ��
		super.doFilter(req, res, chain);
	}
}
