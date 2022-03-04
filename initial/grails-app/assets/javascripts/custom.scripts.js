const myForm = document.getElementsByClassName("j-form")[0];
const myFormLabels = myForm.getElementsByTagName("label");
const myFormNumberInputs = myForm.getElementsByTagName("input");

for (const element of myFormLabels) {
    element.className = "form-label";
}

for (const element of myFormNumberInputs) {
    if (element.getAttribute("type") !== "submit") {
        element.className = "form-control";
    }
}
