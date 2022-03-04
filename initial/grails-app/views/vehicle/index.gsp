<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <g:set var="entityName" value="${message(code: 'vehicle.label', default: 'Vehicle')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/> | Jails auto application</title>
</head>

<body>

<div class="row" id="list-vehicle">
    <div class="col-12">

        <g:link class="btn btn-outline-secondary mb-3" action="create"><g:message code="default.new.label" args="[entityName]"/></g:link>

        <div class="content scaffold-list" role="main">
            <h1><g:message code="default.list.label" args="[entityName]"/></h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <f:table collection="${vehicleList}"/>

            <div class="pagination">
                <g:paginate total="${vehicleCount ?: 0}"/>
            </div>
        </div>

    </div>
</div>

</body>
</html>
