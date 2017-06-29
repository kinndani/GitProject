package admin.adminIndex.bl;

import javax.servlet.http.HttpSession;

import admin.adminIndex.bean.Administrator;
import admin.adminIndex.dao.LoginDAO;
import other.Globals;

public class LoginManager {


	public boolean login(HttpSession session, String loginName, String password) {

		// Administratorインスタンスがログイン可能かどうかチェック
        Administrator admin = new Administrator();

        //Beanに入力値をセット
        admin.setLoginName(loginName);
        admin.setPassword(password);

        //データベースで整合性チェックy
        LoginDAO ldao = new LoginDAO();
        boolean login = ldao.login(admin);

        //整合性OKならセッションに登録
        if (login) {
            session.setAttribute(Globals.SESSION_LOGIN_ADMIN, admin);
        }

		return login;
	}

}
