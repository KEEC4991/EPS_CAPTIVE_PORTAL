package servletsController;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import servletsModel.NetUser;
import servletsModel.Usuario;

/**
 *
 * @author kgmt4
 */
@WebServlet(urlPatterns = {"/gestionUsuariosAdmin"})
public class gestionUsuariosAdmin extends HttpServlet {

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
            out.println("<title>Servlet gestionUsuariosAdmin</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet gestionUsuariosAdmin at " + request.getContextPath() + "</h1>");
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
        String valores = request.getParameter("accion");

        try (PrintWriter out = response.getWriter()) {

            int accion = Integer.valueOf(valores);
            Usuario inter_admin = new Usuario();

            switch (accion) {
                case 0: {
                    String listado;
                    listado = inter_admin.get_usuarios_admin();
                    out.print(listado);
                    break;
                }
                case 1: {
                    break;
                }
                case 3: {
                    String respuesta = inter_admin.get_tipos_usuarios_admin();
                    out.print(respuesta);
                    break;
                }
                case 4: {
                    String respuesta = inter_admin.get_tipos_estado_usuarios_admin();
                    out.print(respuesta);
                    break;
                }
                case 5: {
                    String param_nombre = request.getParameter("nombre");
                    String param_correo = request.getParameter("correo");
                    String param_descrip = request.getParameter("descrip");
                    String param_tipo_user = request.getParameter("tipo_user");
                    String param_estado = request.getParameter("estado");
                    String param_passwd = request.getParameter("contrasena");
                    String respuesta = inter_admin.registrar_usuario_admin(param_nombre, param_correo, param_tipo_user, param_estado, param_descrip, param_passwd);
                    out.print(respuesta);
                    break;
                }
                case 6: {
                    String param_id_usuario = request.getParameter("id_usuario");
                    String respuesta = inter_admin.eliminar_usuario_admin(param_id_usuario);
                    out.print(respuesta);
                    break;
                }
                case 7: {
                    String param_id_usuario = request.getParameter("id_usuario");
                    String param_id_estado = request.getParameter("id_estado");
                    String respuesta = inter_admin.cambiar_estado_usuario_admin(param_id_usuario, param_id_estado);
                    out.print(respuesta);
                    break;
                }
                case 8: {
                    String param_id_usuario = request.getParameter("id_usuario");
                    String param_id_estado = request.getParameter("id_tipo_usuario");
                    String respuesta = inter_admin.cambiar_tipo_usuario_admin(param_id_usuario, param_id_estado);
                    out.print(respuesta);
                    break;
                }
                case 9: {
                    NetUser usuarios_red = new NetUser();
                    out.println(usuarios_red.getNetUsers());
                    break;
                }
                case 10: {
                    String param_id_usuario = request.getParameter("id_usuario");
                    String param_no_carnet = request.getParameter("no_carnet");
                    String respuestas = "[" + inter_admin.delete_net_user(param_id_usuario) + "," + inter_admin.delete_net_user_from_radius(param_no_carnet) + "]";
                    out.println(respuestas);
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

        response.setContentType("text/html;charset=UTF-8");

        String valores = getInitParameter("accion");
        try (PrintWriter out = response.getWriter()) {

            out.println(valores);
        }

        //processRequest(request, response);
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
