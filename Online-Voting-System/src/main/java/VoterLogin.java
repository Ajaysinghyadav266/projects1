

import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/VoterLogin")
public class VoterLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DbManager db = new DbManager();
		java.sql.Connection con = db.getConnection();
		
		String vNumber = request.getParameter("voterNumber");
try {
			
			PreparedStatement st1 = con.prepareStatement("select vNumber from temp_vc_number where vNumber = '"+vNumber+"'");
	        
			ResultSet rs1= st1.executeQuery("select vNumber from temp_vc_number where vNumber = '"+vNumber+"'");
			if(rs1.next()) {
				response.sendRedirect("voted.jsp");
			}else {
				
				PreparedStatement st  = con.prepareStatement("select * from voters where vNumber = '"+vNumber+"'");
				ResultSet rs = ((java.sql.Statement) st).executeQuery("select * from voters where vNumber = '"+vNumber+"'");
				
				if(rs.next()) {
					response.sendRedirect("voterWelcome.jsp");
				}else {
					response.sendRedirect("invalid.jsp");
				}
				
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
