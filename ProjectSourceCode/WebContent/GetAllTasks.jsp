
<%-- 
    Document   : GetAllTasks
    Created on : Aug 31, 2012, 11:17:34 AM
    Author     : rao
--%>

<%@page import="itu.dk.smds.e2013.common.TcpClient"%>
<%@page import="itu.dk.smds.e2013.servlets.GetAllTasksServlet"%>
<%@page import="java.util.logging.Level"%>
<%@page import="java.util.logging.Logger"%>
<%@page import="org.jdom2.JDOMException"%>
<%@page import="org.jdom2.output.XMLOutputter"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="itu.dk.smds.e2013.common.TasksJDOMParser"%>
<%@page import="org.jdom2.Document"%>
<%@page import="java.io.InputStream"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Get All Tasks</title>
    </head>
    <body>
        <h1>Available tasks:</h1>        
        <textarea id="txtAreaTaskXml" cols="100" rows="30" >
        
        <%
        TcpClient tcpClient = new TcpClient();
        //This line takes the all xml file
            String query = "//task";
        
          String tasksDoc= tcpClient.openConnection(query);
          System.out.println("message from server "+tasksDoc);
          
        
            /*
               try {
                InputStream xmlStream = getServletContext().getResourceAsStream("/WEB-INF/task-manager-xml.xml");
                //This line takes the all xml file
                    String query = "//task";
               
                Document tasksDoc = TasksJDOMParser.GetTasksByQuery(xmlStream, query);
                new XMLOutputter().output(tasksDoc, out);
                
            } catch (JDOMException ex) {
                Logger.getLogger(GetAllTasksServlet.class.getName()).log(Level.SEVERE, null, ex);
            }*/
        %>
		</textarea>
		
		
    </body>
</html>
