<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <g:set var="entityName" value="${message(code: 'model.label', default: 'Model')}"/>
    <title><g:message code="default.create.label" args="[entityName]"/> | Jails auto application</title>
</head>

<body>

<g:link class="btn btn-outline-secondary mb-3" action="index"><g:message code="default.list.label" args="[entityName]"/></g:link>

<div id="create-model" class="content scaffold-create" role="main">
    <h1><g:message code="default.create.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <g:hasErrors bean="${this.model}">
        <ul class="errors" role="alert">
            <g:eachError bean="${this.model}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message
                        error="${error}"/></li>
            </g:eachError>
        </ul>
    </g:hasErrors>
    <g:form resource="${this.model}" method="POST" class="j-form">
            <f:all bean="model"/>
            <g:submitButton name="create" class="btn btn-primary" value="${message(code: 'default.button.create.label', default: 'Create')}"/>
    </g:form>
</div>
</body>
</html>
