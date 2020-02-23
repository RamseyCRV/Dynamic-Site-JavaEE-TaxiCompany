package Admin;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class MSofer
 */
@WebServlet("/MSofer")
public class MSofer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MSofer() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String urlBazaDate = "jdbc:mysql://localhost/taxi";
		String user1 = "root";
		String password1 = "";
		
	

		String Id=request.getParameter("Id");
		String Nume=request.getParameter("Nume");
		String Prenume=request.getParameter("Prenume");
		String Cnp=request.getParameter("Cnp");
		String SerieCi=request.getParameter("SerieCi");
		String NrCi=request.getParameter("NrCi");
		String AnPermis=request.getParameter("AnPermis");
		String User=request.getParameter("User");
		String Password=request.getParameter("Password");
		
		try{
			Connection c = DriverManager.getConnection(urlBazaDate, user1, password1);
			Statement s = c.createStatement(); 
			
			String mod="update soferi set Nume='"+Nume+"',Prenume='"+Prenume+"',Cnp='"+Cnp+"',"
					+ "SerieCi='"+SerieCi+"',NrCi='"+NrCi+"',AnPermis='"+AnPermis+"',User='"+User+"',"
							+ "Password='"+Password+"' where Id='"+Id+"'";
			s.executeUpdate(mod);
			
			s.close();
		}catch(Exception e){
			e.printStackTrace();
		}
		finally{
			System.out.println("modificat");
		}
		response.sendRedirect("SoferiA.jsp");
	}

}
