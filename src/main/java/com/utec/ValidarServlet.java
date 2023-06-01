package com.utec;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ValidarServlet
 */
@WebServlet("/validar")
public class ValidarServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ValidarServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();

		try {
			String nombre = request.getParameter("nombre");
			String edad = request.getParameter("edad");
			String direccion = request.getParameter("direccion");
			String tel = request.getParameter("tel");

			if (nombre != null && !nombre.isEmpty()) {
			    // Procesar los datos y redirigir a página correspondiente
			    Usuario usuario = new Usuario(nombre, edad, direccion, tel);
			    request.setAttribute("usuario", usuario);
			    RequestDispatcher rd = request.getRequestDispatcher("/ingresar");
	            rd.forward(request, response);
			} else {
				request.setAttribute("mensajeError", "Falta ingresar un nombre");
	            RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
	            rd.include(request, response);
			}

		} finally

		{
			out.close();
		}
	}

}
