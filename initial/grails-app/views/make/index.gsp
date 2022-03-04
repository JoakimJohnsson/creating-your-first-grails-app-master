<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <g:set var="entityName" value="${message(code: 'make.label', default: 'Make')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<a href="#list-make" class="visually-hidden-focusable" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>

<g:link class="btn btn-outline-secondary mb-3" action="create"><g:message code="default.new.label" args="[entityName]"/></g:link>

<div id="list-make" class="content scaffold-list" role="main">
    <h1><g:message code="default.list.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <f:table collection="${makeList}"/>

    <div class="pagination">
        <g:paginate total="${makeCount ?: 0}"/>
    </div>
</div>
</body>
</html>