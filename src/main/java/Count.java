import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;


@WebServlet("/Count")
public class Count extends HttpServlet {
    private int hitCount;
    public void init() {
        // Reset hit counter.
        hitCount = 0;
    }
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res)  throws IOException {
        // Set response content type
        res.setContentType("text/html");
        // This method executes whenever the servlet is hit
        // increment hitCount
        hitCount++;
        PrintWriter bob = res.getWriter();
        String reset = req.getParameter("reset");
        String title = "Total Number of Hits";
        String docType = "<!doctype html public \"-//w3c//dtd html 4.0 " + "transitional//en\">\n";
        if (reset == null) {
            bob.println(docType +
                    "<html>\n" +
                    "<head><title>" + title + "</title></head>\n" +
                    "<body bgcolor = \"#f0f0f0\">\n" +
                    "<h1 align = \"center\">" + title + "</h1>\n" +
                    "<h2 align = \"center\">" + hitCount + "</h2>\n" +
                    "</body> </html>");
        } else {
            hitCount = 0;
            bob.println(docType +
                    "<html>\n" +
                    "<head><title>" + title + "</title></head>\n" +
                    "<body bgcolor = \"#f0f0f0\">\n" +
                    "<h1 align = \"center\">" + title + "</h1>\n" +
                    "<h2 align = \"center\">" + hitCount + "</h2>\n" +
                    "</body> </html>");
        }
    }
    //(inside doget)
    //int count = 0;
//    count++
    //res.setContentType("text/html")
//      PrintWriter out = res.getWriter();
    //out.println("<h1> you have visted this page " + count + " times<h1>");

//    String reset = req.getParameter("reset")
//
////    if(reset != null){
////        count = 0;
////    }


}










