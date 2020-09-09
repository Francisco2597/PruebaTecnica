package Controladores;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Beans.Organizacion;
import Interfaces.IOrganizacion;
import Modelos.OrganizacionDAO;



/**
 * Servlet implementation class IndexCO
 */
@WebServlet(name="OrganizacionCO",urlPatterns={"/OrganizacionCO"})
public class OrganizacionCO extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OrganizacionCO() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8"); /** Problemas Tildes **/
	
		String strNombre = request.getParameter("strNombre"); 
		  String strDireccion = request.getParameter("strDireccion");
		  String strTelefono = request.getParameter("strTelefono"); 
		  String strIdExt = request.getParameter("strIdExt");
		  String strCoEnc = request.getParameter("strCoEnc"); 
		
		IOrganizacion orgDao =  new OrganizacionDAO();
		
		Organizacion org= new Organizacion();
		org.setStrNombre(strNombre);
		org.setStrDireccion(strDireccion);
		org.setStrTelefono(strTelefono);
		org.setStrCoEnc(strCoEnc);
		org.setStrIdExt(strIdExt);
		
		try {
			orgDao.insert(org);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
				request.getRequestDispatcher("/WEB-INF/vistas/main.jsp").forward(request, response);	
				return; 
		
		}
		
		
	



}
