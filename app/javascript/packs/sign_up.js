let currentStep = 1
const progressBar = document.querySelector('.progress-bar')

document.getElementById('new_user').addEventListener('submit', function (event) {
    if(currentStep !== 3){
        event.preventDefault();
        advanceStep();
    }
})

document.getElementById('next-login-step').addEventListener('click', advanceStep)

function advanceStep() {
    switch (currentStep) {
        case 1:
            document.querySelectorAll('.first-step').forEach(function (element) {
                element.classList.add('hidden')
            })
            document.querySelectorAll('.second-step').forEach(function (element) {
                element.classList.remove('hidden')
            })
            currentStep = 2
            progressBar.style.width = '60%'
            break;
        case 2:
            document.querySelectorAll('.second-step').forEach(function (element) {
                element.classList.add('hidden')
            })
            document.querySelectorAll('.third-step').forEach(function (element) {
                element.classList.remove('hidden')
            })
            currentStep = 3
            progressBar.style.width = '90%'
            break;
        default:
            break;
    }
}