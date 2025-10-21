package com.huremasys.config;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.nio.file.*;

public class SwaggerUIServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

	@Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        String path = req.getPathInfo();
        if (path == null || path.equals("/")) path = "/index.html";

        Path file = Paths.get(getServletContext().getRealPath("/swagger-ui" + path));

        if (Files.exists(file)) {
            String mime = getServletContext().getMimeType(file.toString());
            resp.setContentType(mime != null ? mime : "text/plain");
            Files.copy(file, resp.getOutputStream());
        } else {
            resp.sendError(HttpServletResponse.SC_NOT_FOUND);
        }
    }
}
