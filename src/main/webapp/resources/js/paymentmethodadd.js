window.onload = function() {
    let paymentMethodSelect = document.getElementById("paymentMethod");
    paymentMethodSelect.onchange = updatePaymentMethodFields;
    updatePaymentMethodFields();
};

function updatePaymentMethodFields() {
    let paymentMethod = document.getElementById("paymentMethod").value;
    let cardFields = document.getElementById("cardFields");
    let paypalFields = document.getElementById("paypalFields");
    let bankFields = document.getElementById("bankFields");

    cardFields.style.display = (paymentMethod === "CARD") ? "block" : "none";
    paypalFields.style.display = (paymentMethod === "PAYPAL") ? "block" : "none";
    bankFields.style.display = (paymentMethod === "BANK") ? "block" : "none";
}

function submitForm(form) {
    let paymentMethodSelect = document.getElementById("paymentMethod");
    let paymentMethod = paymentMethodSelect.value;
    let infoField = document.getElementById("info");

    if (paymentMethod === "CARD") {
        let cardNumbers = document.getElementsByClassName("cardNumber");
        let cardNumberString = "";

        for (let i = 0; i < cardNumbers.length; i++) {
            cardNumberString += cardNumbers[i].value;
            if (i !== cardNumbers.length - 1) {
                cardNumberString += "-";
            }
        }

        infoField.value = cardNumberString;

    } else if (paymentMethod === "PAYPAL") {
        let emailPrefix = document.getElementById("emailPrefix").value;
        let emailDomain = document.getElementById("emailDomain").value;
        infoField.value = emailPrefix + emailDomain;

    } else if (paymentMethod === "BANK") {
        let bankName = document.getElementById("bankName").value;
        let accountNumber = document.getElementById("accountNumber").value;
        infoField.value = bankName + " " + accountNumber;
    }
    
    form.submit();
}