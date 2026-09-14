package controllers;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import services.interfaces.ICategoryService;
import services.implementations.CategoryService;
import java.io.IOException;
import java.sql.SQLException;

public class CategoryServlet extends HttpServlet {
    private ICategoryService categoryService;

    @Override
    public void init() {
        categoryService = new CategoryService();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        try {
            if ("getID".equals(action)) {
                request.setAttribute("category", categoryService.getCategoryById(request.getParameter("id")));
            }

            request.setAttribute("categories", categoryService.getAllCategories());
            request.getRequestDispatcher("/admin/categories.jsp").forward(request, response);
        } catch (SQLException e) {
            throw new ServletException("Couldn't load categories", e);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        try {
            if ("add".equals(action)) {
                categoryService.addCategory(
                        request.getParameter("name"),
                        request.getParameter("description")
                );
            } else if ("update".equals(action)) {
                categoryService.updateCategory(
                        request.getParameter("id"),
                        request.getParameter("name"),
                        request.getParameter("description")
                );
            } else if ("delete".equals(action)) {
                categoryService.deleteCategory(request.getParameter("id"));
            } else {
                response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid action");
                return;
            }

            response.sendRedirect(request.getContextPath() + "/admin/categories");
        } catch (IllegalArgumentException e) {
            request.setAttribute("error", e.getMessage());
            doGet(request, response);
        } catch (SQLException e) {
            throw new ServletException("Couldn't save category", e);
        }
    }
}
