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
 * Servlet implementation class ICurse
 */
@WebServlet("/ICurse")
public class ICurse extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ICurse() {
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
		String CodMasina=request.getParameter("CodMasina");
		String CodSofer=request.getParameter("CodSofer");
		String Km=request.getParameter("Km");
		String Combustibil=request.getParameter("Combustibil");
		String SumaIncasata=request.getParameter("SumaIncasata");
		String NrFactura=request.getParameter("NrFactura");
		String DataFactura=request.getParameter("DataFactura");	
		
		try {

			Class.forName("com.mysql.jdbc.Driver");
			Connection c = DriverManager.getConnection(urlBazaDate, user1,password1);
			Statement s = c.createStatement();
			String im = "insert into curse"
					+ "(Id,CodMasina,CodSofer,Km,Combustibil,SumaIncasata,NrFactura,DataFactura)"
					+ "values('" + Id + "','" + CodMasina + "','" + CodSofer + "','" + Km + "','" + Combustibil + "',"
							+ "'" + SumaIncasata + "','" + NrFactura + "','" + DataFactura + "')";
			s.executeUpdate(im);
			s.close();
		
		} catch (Exception e) {
			e.printStackTrace();
			
		}
		response.sendRedirect("CurseA.jsp");
	}

}
