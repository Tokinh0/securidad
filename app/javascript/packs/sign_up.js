let currentStep = 1

document.addEventListener("turbolinks:load", function() {
    document.getElementById('next-login-step').addEventListener('click', function () {
        switch (currentStep) {
            case 1:
                document.querySelectorAll('.first-step').forEach(function (element) {
                    element.classList.add('hidden')
                })
                document.querySelectorAll('.second-step').forEach(function (element) {
                    element.classList.remove('hidden')
                })
                currentStep = 2
                break;
            case 2:
                document.querySelectorAll('.second-step').forEach(function (element) {
                    element.classList.add('hidden')
                })
                document.querySelectorAll('.third-step').forEach(function (element) {
                    element.classList.remove('hidden')
                })
                currentStep = 3
                break;
            default:
                break;
        }
    })
})
