<ul class="list-group list-group-flush mb-3">
    <g:each in="${domainProperties}" var="p">
        <li class="list-group-item ps-0">
            <span id="${p.name}-label" class="text-uppercase fw-bold"><g:message code="${domainClass.decapitalizedName}.${p.name}.label" default="${p.defaultLabel}" />:</span>
            <span class="property-value" aria-labelledby="${p.name}-label">${body(p)}</span>
        </li>
    </g:each>
</ul>