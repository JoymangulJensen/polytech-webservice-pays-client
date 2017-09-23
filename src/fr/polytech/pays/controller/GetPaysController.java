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
import fr.polytech.pays.ws.PaysServiceStub.GetUnPays;
import fr.polytech.pays.ws.PaysServiceStub.GetUnPaysResponse;
import fr.polytech.pays.ws.PaysServiceStub.Pays;

@WebServlet("/getPays")
public class GetPaysController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public GetPaysController() {
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

		String nomPays = request.getParameter("nomPays");
		PaysServiceStub unStub = new PaysServiceStub ();
		GetUnPays getPays = new GetUnPays();
		GetUnPaysResponse sr;
		getPays.setNomp(nomPays);
		try {
			sr = unStub.getUnPays(getPays);
			Pays unPays = sr.get_return();
			request.setAttribute("pays", unPays);
			this.getServletContext()
			.getRequestDispatcher("/unPays.jsp")
			.forward(request, response);
		} catch (PaysServiceExceptionException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
}
