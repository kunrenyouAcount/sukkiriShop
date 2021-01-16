package model;

import dao.BusinessDAO;
import dao.UserDAO;

public class RegisterCheckLogic {
	public boolean execute(User user) {
		//データベースにアクセスするためのDAOクラスをインスタンス化し、登録済み(true)、未登録(false)を返す
		UserDAO dao = new UserDAO();
		User checkedUser = dao.checkByUserID(user);
		return checkedUser != null;
	}
	public boolean execute(Business business) {
		//データベースにアクセスするためのDAOクラスをインスタンス化し、登録済み(true)、未登録(false)を返す
		BusinessDAO dao = new BusinessDAO();
		Business checkedUser = dao.checkBybusinessID(business);
		return checkedUser != null;
	}
}
