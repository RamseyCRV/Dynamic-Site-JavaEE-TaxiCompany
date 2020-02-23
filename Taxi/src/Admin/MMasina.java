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
 * Servlet implementation class MMasina
 */
@WebServlet("/MMasina")
public class MMasina extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MMasina() {
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
		
		try{
			Connection c = DriverManager.getConnection(urlBazaDate, user1, password1);
			Statement s = c.createStatement(); 
			
			String mod="update masini set Marca='"+Marca+"',Model='"+Model+"',AnFabricatie='"+AnFabricatie+"',"
					+ "SerieSasiu='"+SerieSasiu+"',Combustibil='"+Combustibil+"',Tarif='"+Tarif+"',Capacitate='"+Capacitate+"',"
							+ "NrInmatriculare='"+NrInmatriculare+"',UltimaRevizie='"+UltimaRevizie+"',Rca='"+Rca+"',"
									+ "Casco='"+Casco+"',Km='"+Km+"' where Id='"+Id+"'";
			s.executeUpdate(mod);
			
			s.close();
		}catch(Exception e){
			e.printStackTrace();
		}
		finally{
			System.out.println("modificat");
		}
		response.sendRedirect("MasiniA.jsp");
	}

}
