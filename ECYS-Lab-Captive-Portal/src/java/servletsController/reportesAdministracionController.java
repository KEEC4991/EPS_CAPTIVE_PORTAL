/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servletsController;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import servletsModel.Carrera;
import servletsModel.NetUser;

/**
 *
 * @author kgmt4
 */
@WebServlet(name = "reportesAdministracionController", urlPatterns = {"/reportesAdministracionController"})
public class reportesAdministracionController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet reportesAdministracionController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet reportesAdministracionController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.addHeader("Access-Control-Allow-Origin", "*");
        response.addHeader("Access-Control-Allow-Methods", "POST, GET, OPTIONS, PUT, DELETE, HEAD");
        response.addHeader("Access-Control-Allow-Headers", "X-PINGOTHER, Origin, X-Requested-With, Content-Type, Accept");
        response.setContentType("text/html;charset=UTF-8");

        try (PrintWriter out = response.getWriter()) {

            String valor_accion = request.getParameter("accion");
            int accion = Integer.valueOf(valor_accion);

            Carrera post_car = new Carrera();
            NetUser net_cons = new NetUser();

            switch (accion) {
                case 0: {
                    out.println(new NetUser().getConnectionHistory());
                    break;
                }
                case 1: {
                    out.println(post_car.getEstudiantesCarrera());
                    break;
                }
                case 2: {
                    out.println(post_car.getEdadEstudiantesPorSegmento());
                    break;
                }
                case 3: {
                    out.println(post_car.getCantidadEstudiantesPorCarnet());
                    break;
                }
                case 4: {
                    String query = request.getParameter("consulta");
                    int rango_fechas = Integer.valueOf(request.getParameter("rango"));
                    out.println(post_car.getConsultaConexionesFecha(query, rango_fechas));
                    break;
                }
                case 5: {
                    String date_inicial = request.getParameter("inicio");
                    String date_final = request.getParameter("final");
                    out.println(post_car.getConsultaConexionesTotales(date_inicial, date_final));
                    break;
                }
                case 6: {
                    String date_busqueda = request.getParameter("fecha");
                    out.println(post_car.getDetalleConexiones(date_busqueda));
                    break;
                }
                case 7: {
                    out.println(post_car.getDashboardConcurrenciaCarreras());
                    break;
                }
                case 8: {
                    out.println(net_cons.getConsumoDiario());
                    break;
                }
                case 9: {

                    break;
                }
                default: {
                    out.println("no funciona");
                    break;
                }
            }

        }

    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.addHeader("Access-Control-Allow-Origin", "*");
        response.addHeader("Access-Control-Allow-Methods", "POST, GET, OPTIONS, PUT, DELETE, HEAD");
        response.addHeader("Access-Control-Allow-Headers", "X-PINGOTHER, Origin, X-Requested-With, Content-Type, Accept");
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

            String valor_accion = request.getParameter("accion");
            int accion = Integer.valueOf(valor_accion);

            switch (accion) {
                case 0: {
                    break;
                }
                case 1: {
                    out.println(new NetUser().getConnectionHistory());
                    break;
                }
            }

        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
