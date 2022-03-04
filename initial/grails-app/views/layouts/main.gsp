<!doctype html>
<html lang="en" class="no-js">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>
    <g:layoutTitle default="JAILS AUTO application"/>
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <asset:stylesheet src="application.css"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
    <asset:link rel="icon" href="favicon.ico" type="image/x-ico"/>
    <g:layoutHead/>
</head>

<body>
<a href="#content" class="visually-hidden-focusable" tabindex="-1"><g:message code="default.link.skip.label"
                                                                                   default="Skip to content&hellip;"/></a>
<div>
    <header class="navbar-light">
        <nav class="navbar navbar-expand-lg">
            <div class="container">
                <a class="navbar-brand" href="#"><asset:image class="j-logotype" src="jails-logo.svg" alt="Jails Logo"/></a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
                        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ms-auto pt-3 pt-lg-0">
                        <g:if test="${session.name}">
                            <li class="nav-item">
                                <p class="userAvatar">
                                    <i class="bi bi-person-fill me-2 mb-1"></i>
                                    <span class="d-none d-lg-inline">${Utils.getFirstCharacterOfString(session.name)}</span>
                                    <span class="d-inline d-lg-none">${session.name}</span>
                                </p>
                            </li>
                        </g:if>
                        <li class="nav-item"><a class="nav-link" href="/"><i class="bi bi-house-door-fill me-2 mb-1"></i><span>Home</span></a></li>
                        <li class="nav-item"><a class="nav-link" href="/vehicle"><i class="bi bi-cart-fill me-2 mb-1"></i><span>Vehicle</span></a>
                        </li>
                        <li class="nav-item"><a class="nav-link" href="/model"><i class="bi bi-circle-square me-2 mb-1"></i><span>Model</span></a>
                        </li>
                        <li class="nav-item"><a class="nav-link" href="/make"><i class="bi bi-palette2 me-2 mb-1"></i><span>Make</span></a></li>
                        <li class="nav-item"><a class="nav-link" href="/driver"><i class="bi bi-file-person-fill me-2 mb-1"></i><span>Driver</span>
                        </a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </header>
    <main class="container py-3 py-sm-5" id="content">
        <g:layoutBody/>
    </main>
</div>
<footer class="footer bg-info" role="contentinfo">
    <div class="container">
        <div class="row">
            <div class="col-12 p-5 d-flex flex-column align-items-center justify-content-center">
                <h2>Information</h2>

                <p>(P) + (C) 2022 Joakim Johnsson productions</p>
            </div>
        </div>
    </div>
</footer>

<div id="spinner" class="spinner" style="display:none;">
    <g:message code="spinner.alt" default="Loading&hellip;"/>
</div>
<asset:javascript src="application.js"/>
</body>
</html>
