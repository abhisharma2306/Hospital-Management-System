<%@page import="javax.swing.JOptionPane"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%					
int click = JOptionPane.showConfirmDialog(null,"Are you Sure You Want To Log Out");
if(click==0){
response.sendRedirect("homepage.jsp");
}
else 
{
response.sendRedirect("receptionistmenu.jsp");
}
%>  