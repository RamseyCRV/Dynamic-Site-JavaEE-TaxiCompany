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
 * Servlet implementation class IMasina
 */
@WebServlet("/IMasina")
public class IMasina extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public IMasina() {
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
		String Marca=request.getParameter("Marca");
		String Model=request.getParameter("Model");
		String AnFabricatie=request.getParameter("AnFabricatie");
		String SerieSasiu=request.getParameter("SerieSasiu");
		String Combustibil=request.getParameter("Combustibil");
		String Tarif=request.getParameter("Tarif");
		String Capacitate=request.getParameter("Capacitate");
		String NrInmatriculare=request.getParameter("NrInmatriculare");
		String UltimaRevizie=request.getParameter("UltimaRevizie");
		String Rca=request.getParameter("Rca");
		String Casco=request.getParameter("Casco");
		String Km=request.getParameter("Km");
		
		
		try {

			Class.forName("com.mysql.jdbc.Driver");
			Connection c = DriverManager.getConnection(urlBazaDate, user1,password1);
			Statement s = c.createStatement();
			String im = "insert into masini"
					+ "(Id,Marca,Model,AnFabricatie,SerieSasiu,Combustibil,Tarif,Capacitate,NrInmatriculare,UltimaRevizie,Rca,Casco,Km)"
					+ "values('" + Id + "','" + Marca + "','" + Model + "','" + AnFabricatie + "','" + SerieSasiu + "',"
							+ "'" + Combustibil + "','" + Tarif + "','" + Capacitate + "','" + NrInmatriculare + "',"
							+ "'" + UltimaRevizie + "','" + Rca + "','" + Casco + "','" + Km + "')";
			s.executeUpdate(im);
			s.close();
		
		} catch (Exception e) {
			e.printStackTrace();
			
		}
		response.sendRedirect("MasiniA.jsp");
	}

}
