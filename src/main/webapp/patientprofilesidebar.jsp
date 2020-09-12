<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.shravan.hms.model.PatientProfile"%>
<%@page import="com.shravan.hms.model.Patient"%>
<%@page import="com.shravan.hms.dao.PatientDao"%>
    
<!DOCTYPE html>
<%
	PatientDao dao = new PatientDao();
	PatientProfile pProfile = new PatientProfile();
	Long mobile =(Long)session.getAttribute("patientId");
	pProfile = dao.getPatientById(mobile).getPatientProfile();
	%>
		
            <!-- Profile Sidebar -->
            <div class="col-md-5 col-lg-4 col-xl-3 theiaStickySidebar">
                <div class="profile-sidebar card">
                    <div class="widget-profile pro-widget-content">
                        <div class="profile-info-widget">
                            <a href="" class="booking-doc-img">
                                <img src="images/avatar.png" alt="User Image">
                            </a>
                            <div class="profile-det-info">
                                <h3><%=pProfile.getPatientFirstName()+" "+pProfile.getPatientLastName() %></h3>
                                <div class="patient-details">
                                    <h5><i class="fas fa-birthday-cake"></i><%=pProfile.getPatientDob()%></h5>
                                    <h5 class="mb-0"><i class="fas fa-map-marker-alt"></i><%=pProfile.getPatientState()+" , "+pProfile.getPatientCountry()%></h5>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="dashboard-widget ">
                        <nav class="dashboard-menu">
                            <ul class="list-group list-group-flush">
                                <li class=" list-group-item">
                                    <a href="patient-dashboard.jsp">
                                        <i class="fas fa-columns"></i>
                                        <span class="text-primary">Dashboard</span>
                                    </a>
                                </li>
                               
                                <li class="list-group-item">
                                    <a href="profile-settings.jsp">
                                        <i class="fas fa-user-cog"></i>
                                        <span class="text-primary">Profile Settings</span>
                                    </a>
                                </li>
                                <li class="list-group-item">
                                    <a href="change-patient-password.jsp">
                                        <i class="fas fa-lock"></i>
                                        <span class="text-primary">Change Password</span>
                                    </a>
                                </li>
                                <li class="list-group-item">
                                    <a href="LogOut">
                                        <i class="fas fa-sign-out-alt"></i>
                                        <span class="text-primary">Logout</span>
                                    </a>
                                </li>
                            </ul>
                        </nav>
                    </div>

                </div>
            </div>