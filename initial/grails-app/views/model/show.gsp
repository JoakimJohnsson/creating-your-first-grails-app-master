<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <g:set var="entityName" value="${message(code: 'model.label', default: 'Model')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>

<g:link class="btn btn-outline-secondary mb-3" action="index"><g:message code="default.list.label" args="[entityName]"/></g:link>
<g:link class="btn btn-outline-secondary mb-3" action="create"><g:message code="default.new.label" args="[entityName]"/></g:link>

<div id="show-model" class="content scaffold-show" role="main">
    <h1><g:message code="default.show.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <f:display bean="model"/>
    <g:form resource="${this.model}" method="DELETE" class="j-form">
            <g:link class="btn btn-warning me-2 btn-sm" action="edit" resource="${this.model}"><g:message code="default.button.edit.label" default="Edit"/></g:link>
            <input class="btn btn-outline-danger btn-sm" type="submit" value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                   onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
    </g:form>
</div>
</body>
</html>
