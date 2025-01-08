package himedia.kdt.controller;

import java.io.IOException;
import java.util.List;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import learnbyteaching.guestbook.dao.GuestbookDao;
import learnbyteaching.guestbook.dao.GuestbookDaoImpl;
import learnbyteaching.guestbook.vo.GuestbookVo;

@WebServlet("/gb")
public class GuestbookServlet extends BaseServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String actionName = req.getParameter("a");
		
		if ("deleteform".equals(actionName)) {
			RequestDispatcher rd = getServletContext()
					.getRequestDispatcher("/WEB-INF/views/deleteform.jsp");
			rd.forward(req, resp);
		} else {
			GuestbookDao dao = new GuestbookDaoImpl(dbUser, dbPass);
			List<GuestbookVo> list = dao.getList();
			
			req.setAttribute("list", list);
			
			RequestDispatcher rd = getServletContext()
					.getRequestDispatcher("/WEB-INF/views/list.jsp");
			rd.forward(req, resp);
		}
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String actionName = req.getParameter("a");
		
		if ("delete".equals(actionName)) {
			GuestbookDao dao = new GuestbookDaoImpl(dbUser, dbPass);
			Integer no = Integer.valueOf(req.getParameter("no"));
			String password = req.getParameter("password");	
			
			dao.delete(no,password);
			
			resp.sendRedirect(req.getContextPath() + "/gb");
		} else {
		String name = req.getParameter("name");
		String password = req.getParameter("pass");
		String content = req.getParameter("content");
		
		GuestbookDao dao = new GuestbookDaoImpl(dbUser, dbPass);
		GuestbookVo vo = new GuestbookVo(name, password, content);
		dao.insert(vo);
		
		resp.sendRedirect(req.getContextPath() + "/gb");
		}
	}
}
