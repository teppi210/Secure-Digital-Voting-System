<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="${pageContext.request.contextPath}/">Secure Voting System</a>
        </div>
        <ul class="nav navbar-nav">
            <li <% if(request.getAttribute("homeActive") != null) { %> class="active" <% } %>>
                <a href="${pageContext.request.contextPath}/">Home</a>
            </li>
            <li <% if(request.getAttribute("dashboardActive") != null) { %> class="active" <% } %>>
                <a href="${pageContext.request.contextPath}/dashboard">Voter Dashboard</a>
            </li>
            <li <% if(request.getAttribute("electionManagerActive") != null) { %> class="active" <% } %>>
                <a href="${pageContext.request.contextPath}/electionmanager">Election Manager Dashboard</a>
            </li>
            <li <% if(request.getAttribute("createElectionActive") != null) { %> class="active" <% } %>>
                <a href="${pageContext.request.contextPath}/create-election">Create Election</a>
            </li>
            <li <% if(request.getAttribute("registerActive") != null) { %> class="active" <% } %>>
                <a href="${pageContext.request.contextPath}/register">Registration</a>
            </li>
            <li <% if(request.getAttribute("ballotActive") != null) { %> class="active" <% } %>>
                <a href="${pageContext.request.contextPath}/ballot">Submit a Ballot</a>
            </li>
            <li <% if(request.getAttribute("viewActive") != null) { %> class="active" <% } %>>
                <a href="${pageContext.request.contextPath}/view">View Election</a>
            </li>
        </ul>
    </div>
</nav>
