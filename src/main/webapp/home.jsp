<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<tiles:insertDefinition name="defaultTemplate">
	<tiles:putAttribute name="page-content">
	    <c:import url="/common/template/default/carousel.jsp" />
		<c:import url="/common/template/default/tabcontent.jsp" />
	</tiles:putAttribute>
</tiles:insertDefinition>
