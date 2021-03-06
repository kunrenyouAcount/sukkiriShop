package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Product;
import model.PurchaseLogic;

@WebServlet("/PurchaseServlet")
public class PurchaseServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		//スコープからカートを取得
		List<Product> cart = (List<Product>) session.getAttribute("cart");
		//データベースから商品を減らす
		PurchaseLogic bo = new PurchaseLogic();
		boolean result = bo.subtractionProduct(cart);
		if(result) {
			//スコープのカートを削除する
			session.removeAttribute("cart");
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/purchaseResult.jsp");
		dispatcher.forward(request, response);
	}
}
