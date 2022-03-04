const myForm = document.getElementsByClassName("j-form")[0];
const myFormLabels = myForm.getElementsByTagName("label");
const myFormInputs = myForm.getElementsByTagName("input");
const myFormSelects = myForm.getElementsByTagName("select");

for (const element of myFormLabels) {
    element.className = "form-label";
}

for (const element of myFormSelects) {
    element.className = "form-select";
}

for (const element of myFormInputs) {
    if (element.getAttribute("type") !== "submit") {
        element.className = "form-control";
    }
}
