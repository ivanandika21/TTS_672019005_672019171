package kedaikopi.web;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kedaikopi.dao.KedaikopiDao;
import kedaikopi.dao.KedaikopiImpl;
import kedaikopi.model.Kedaikopi;

@WebServlet("/")
public class KedaikopiController extends HttpServlet {

	private static final long serialVersionUID = 1L;
	// private static final long serialVersionUID = 1L;
	private KedaikopiDao kedaikopiDao;
	
	public void init() {
		kedaikopiDao = new KedaikopiImpl();
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getServletPath();

		try {
			switch (action) {
			case "/new":
				showNewForm(request, response);
				break;
			case "/insert":
				insertData(request, response);
				break;
			case "/update":
				updateData(request, response);
				break;
			case "/delete":
				deleteData(request, response);
				break;
			case "/edit":
				showEditForm(request, response);
				break;
			default:
				listKedaikopi(request, response);
				break;
			}
		} catch (SQLException ex) {
			throw new ServletException(ex);
		}
	}

	private void insertData(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException {
		String makanan = request.getParameter("makanan");
		String minuman = request.getParameter("minuman");
		String jumlahMkn = request.getParameter("jumlahMkn");
		String jumlahMnm = request.getParameter("jumlahMnm");
		String hargatotal = request.getParameter("hargatotal");
		boolean verifikasi = Boolean.valueOf(request.getParameter("verifikasi"));
		
		Kedaikopi insertData = new Kedaikopi(makanan, minuman, jumlahMkn, jumlahMnm, hargatotal, verifikasi);
		kedaikopiDao.insertData(insertData);
		response.sendRedirect("list");
	}
	
	private void updateData(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		String makanan = request.getParameter("makanan");
		String minuman = request.getParameter("minuman");
		String jumlahMkn = request.getParameter("jumlahMkn");
		String jumlahMnm = request.getParameter("jumlahMnm");
		String hargatotal = request.getParameter("hargatotal");
		boolean verifikasi = Boolean.valueOf(request.getParameter("verifikasi"));
		
		Kedaikopi updateData = new Kedaikopi(id, makanan, minuman, jumlahMkn, jumlahMnm, hargatotal, verifikasi);
		kedaikopiDao.updateData(updateData);
		response.sendRedirect("list");
	}
	
	private void deleteData(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		kedaikopiDao.deleteData(id);
		response.sendRedirect("list");
	}
	
	private void listKedaikopi(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException {
		List<Kedaikopi> listKedaikopi = kedaikopiDao.selectAllTodos();
		request.setAttribute("listKedaikopi", listKedaikopi);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/kedaikopi/kedaikopi-list.jsp");
		dispatcher.forward(request, response);
	}

	private void showNewForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("/kedaikopi/kedaikopi-form.jsp");
		dispatcher.forward(request, response);
	}

	private void showEditForm(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		Kedaikopi existingNota = kedaikopiDao.selectData(id);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/kedaikopi/kedaikopi-form-admin.jsp");
		request.setAttribute("kedaikopi", existingNota);
		dispatcher.forward(request, response);
	}
}
