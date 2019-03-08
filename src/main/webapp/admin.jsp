<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<tiles:insertDefinition name="adminTemplate">
    <tiles:putAttribute name="page-content">
        <center><h1>Welcome to Admin page</h1></center>
    </tiles:putAttribute>
</tiles:insertDefinition>
