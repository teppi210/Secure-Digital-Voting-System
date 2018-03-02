import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = { "/register"})
public class RegisterServlet extends HttpServlet
{
    private static final long serialVersionUID = 1L; // I do not know what this is for!

    public RegisterServlet()
    {
        super();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/WEB-INF/pages/register.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        String fname = request.getParameter("firstName");
        String lname = request.getParameter("lastName");
        String pub  = request.getParameter("publicKey");
        if (DatabaseUtils.registerVoter(pub, fname, lname))
        {   // TODO do something if successful
        } else
        {   // TODO do something if unsuccessful
        }
        doGet(request, response);
    }
}
