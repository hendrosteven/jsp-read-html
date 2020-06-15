<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.InputStream"%>
<%

        String pageName = request.getParameter("page");
    
        byte bufferArray[] = new byte[1024];
        ServletContext ctx = getServletContext();
        response.setContentType("application/text");
        
        BufferedReader reader  =  new BufferedReader(
                    new FileReader(ctx.getResource(pageName+".html").getFile()));
        StringBuilder builder = new StringBuilder();
        String line;
        
        while((line = reader.readLine())!= null){
           builder.append(line);
        }
        
        reader.close();
        response.getWriter().print(builder.toString());
        

%>