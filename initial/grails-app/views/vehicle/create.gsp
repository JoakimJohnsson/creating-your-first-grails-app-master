<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <g:set var="entityName" value="${message(code: 'vehicle.label', default: 'Vehicle')}"/>
    <title><g:message code="default.create.label" args="[entityName]"/> | Jails auto application</title>
</head>

<body>

<g:link class="btn btn-outline-secondary mb-3" action="index"><g:message code="default.list.label" args="[entityName]"/></g:link>

<div class="row">
    <div class="col-12">
        <h1><g:message code="default.create.label" args="[entityName]"/></h1>
        <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
        </g:if>
        <g:hasErrors bean="${this.vehicle}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.vehicle}" var="error">
                    <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message
                            error="${error}"/></li>
                </g:eachError>
            </ul>
        </g:hasErrors>
        <g:form resource="${this.vehicle}" method="POST" class="j-form">
                <f:all bean="vehicle"/>
                <g:submitButton name="create" class="btn btn-primary" value="${message(code: 'default.button.create.label', default: 'Create')}"/>
        </g:form>
    </div>
</div>
</body>
</html>
