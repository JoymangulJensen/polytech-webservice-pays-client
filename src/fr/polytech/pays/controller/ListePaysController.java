package fr.polytech.pays.controller;


import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import fr.polytech.pays.ws.PaysServiceExceptionException;
import fr.polytech.pays.ws.PaysServiceStub;
import fr.polytech.pays.ws.PaysServiceStub.GetListeTousLesPays;
import fr.polytech.pays.ws.PaysServiceStub.GetListeTousLesPaysResponse;
import fr.polytech.pays.ws.PaysServiceStub.Pays;


/**
 * Servlet implementation class Traitement
 */
@WebServlet("/index.jsp")
public class ListePaysController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ListePaysController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			appelWebservice(request, response);
		} catch (ServletException e) {
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			appelWebservice(request, response);
		} catch (ServletException e) {
			e.printStackTrace();
		}
	}

	public void appelWebservice(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		//String nbrea = request.getParameter("nombrea");

		// on se connecte au stub
		PaysServiceStub unStub = new PaysServiceStub ();
		// on définit une référence sur la méthode à appeler
		GetListeTousLesPays mesPays = new GetListeTousLesPays();
		// on dénit un objet pour récupérer les données de la méthode getTousLesProprietaires()
		GetListeTousLesPaysResponse sr = null; 
		// On construit une collection avec le type fourni par le web service
		
		List<Pays> listeProp = new ArrayList<Pays>();
		// On construit une référence sur la méthode getTousLesProprietaires ()
		try {
			sr = unStub.getListeTousLesPays(mesPays);
		} catch (PaysServiceExceptionException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		// On récupère les données dans un tableau 
		Pays[]  tabProp = sr.get_return();
		request.setAttribute("mesPays", tabProp);



		//request.setAttribute("pays", String.valueOf(r));

		this.getServletContext()
		.getRequestDispatcher("/lesPays.jsp")
		.forward(request, response);


	}

}
