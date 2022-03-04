<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Home | Jails auto application</title>
</head>

<body>
<div class="row">
    <div class="col-12">
        <h1>Welcome ${name}!</h1>

        <p class="lead">Take a look at our wonderful fleet of vehicles.</p>

        <p>There are ${vehicleTotal} vehicles in the database.</p>
    </div>
</div>

<div class="row mb-4">
    <div class="col-12"><h2>Our vehicle collection</h2></div>

    <g:each in="${vehicleList}" var="vehicle">
        <div class="col-12 col-sm-6 col-lg-4 mb-3">
            <g:link controller="vehicle" action="show" id="${vehicle.id}" class="card-link">
                <div class="card mb-2">
                    <div class="card-header bg-info">
                        <h1 class="card-title m-0">${vehicle.name}</h1>
                    </div>

                    <div class="card-body">
                        <h2 class="card-subtitle text-muted mb-2">${vehicle.make.name} ${vehicle.model.name} - ${vehicle.year}</h2>

                        <p class="small m-0 d-flex"><i
                                class="bi bi-file-person-fill me-2 mb-1"></i>${vehicle.driver.firstName} ${vehicle.driver.lastName}</p>
                    </div>
                </div>
            </g:link>
            <a class="btn btn-sm btn-warning mb-4" href="/vehicle/edit/${vehicle.id}"><i class="bi bi-pencil-fill me-2"></i>Edit ${vehicle.name}</a>
        </div>
    </g:each>

    <div class="col-12">
        <a class="btn btn-lg btn-outline-secondary mb-4" href="/vehicle/create">Create new Vehicle</a>
    </div>

    <div class="col-12">
        <h2 class="divider">User settings</h2>
        <g:form action="updateName">
            <g:if test="${flash.message}">
                <div class="alert alert-warning d-flex align-items-center" role="alert">
                    <i class="bi bi-info-circle-fill me-3"></i>
                    ${flash.message}
                </div>
            </g:if>
            <label for="email-input-666" class="form-label">Enter new user name</label>
            <g:textField id="email-input-666" name="name" value="" placeholder="${name}" class="form-control mb-3"/>
            <g:submitButton name="Update name" class="btn btn-primary"/>
        </g:form>
    </div>
</div>

<asset:javascript src="application.js"/>
</body>
</html>
