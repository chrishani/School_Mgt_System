package anurudda.actions;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import anurudda.db.DB;




@WebServlet("/stdnt_add")
public class StudentAddAction extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			PrintWriter out = response.getWriter();
			//1. Collect Input Feilds Values
			String name = request.getParameter("name");
			//Date bday = request.getParameter("bday");
			String gender = request.getParameter("gender");
			String address = request.getParameter("address");
			String fname = request.getParameter("fname");
			String mname = request.getParameter("mname");
			String photo = request.getParameter("photo");
			
			String errors = "";
			// 3. Process Data (Validations)
			if (name == null || name.length() < 10) {
				errors += "Name must have 5 Characters Minimum.<br/>";
			}

			if (errors.equals("")) {
				try {
					Connection connection = DB.getCon();
					// 4. SQL & Execution
					String sql = "INSERT INTO students (stdntname,address,father,mother,photo) VALUES (?,?,?,?,?)";
					PreparedStatement ps = connection.prepareStatement(sql);
					ps.setString(1, name);
					ps.setString(2, address);
					ps.setString(3, fname);
					ps.setString(4, mname);
					ps.setString(5, photo);
					
					ps.executeUpdate();

					response.sendRedirect("msg.jsp?msg=Student's Details Saved Successfully.");

				} catch (Exception e) {
					e.printStackTrace();
				} 
			}else {
				// InValid Form
				response.sendRedirect("student/add.jsp?msg=" + errors);
			}
		}
			
		
		
	

}
