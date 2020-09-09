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
@WebServlet(name="IndexOrgCO",urlPatterns={"/IndexOrgCO"})
public class IndexOrgCO extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public IndexOrgCO() {
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
	
		
		

		IOrganizacion orgDao =  new OrganizacionDAO();
//		List<Organizacion> orgList = new ArrayList<Organizacion>();
		try {
			List<Organizacion> orgList = orgDao.findAll();
			 if(null!=orgList&&orgList.size()>0) {
				  request.setAttribute("orgList", orgList);
				  }
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
				request.getRequestDispatcher("/WEB-INF/vistas/orgList.jsp").forward(request, response);	
				return; 
		
		}
		
		
	



}
