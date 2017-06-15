package other;

import javax.servlet.ServletException;

import org.apache.struts.action.ActionServlet;
import org.apache.struts.action.PlugIn;
import org.apache.struts.config.ModuleConfig;

public class InitializationPlugIn implements PlugIn {

	@Override
	public void destroy() {
		// TODO 自動生成されたメソッド・スタブ

	}

	@Override
	public void init(ActionServlet servlet, ModuleConfig config) throws ServletException {

		/*ServletContext context = servlet.getServletContext();
        try {
            new BookManager().init(context);
        } catch (SQLException e) {
            context.log(e.getMessage());
        }*/
	}

}
