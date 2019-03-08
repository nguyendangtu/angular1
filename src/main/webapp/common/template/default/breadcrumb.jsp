<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="content-grid">
    <c:if test="${not empty breadcrumb}">
        <div class="noindex">
            <ul class="breadcrumb clearfix">
                <li class="first"><span>You are in</span></li>
                <li class="prev"><a href="/${breadcrumb[0]}" style="text-transform: capitalize">${breadcrumb[0]}</a></li>
                <li class="last"><span style="text-transform: capitalize">${breadcrumb[1]}</span></li>
            </ul>
        </div>
    </c:if>
</div>
