function modalResultShow() {
    if (isGenerated == 'true') {
        var myModal = new bootstrap.Modal(document.getElementById('result_image_modal'), {
            keyboard: false
        })
        myModal.show();
    } else {
        alert("No output image to show. Upload a greyscale image first")
        document.getElementById("formFileSm").focus();

    }

}
window.addEventListener("load", () => {
    if (isGenerated == 'true') {
        modalResultShow();
    }
});

function submitForm() {
    file = document.getElementById("formFileSm")
    category = document.getElementById("category")
    if (file.value !== '' && category.value !== 'Select') {
        document.getElementById("inputForm").submit();
        document.getElementById("inputForm").reset();
    } else {
        if (file.value === '' && category.value === 'Select') {
            file.focus();
            category.focus();
        } else if (file.value === '') {
            file.focus();
        } else if (category.value === 'Select') {
            category.focus();
        }
    }
}

// let intro = document.querySelector('.intro');
// let logo = document.querySelector('.logo-header');
// let logoSpan = document.querySelectorAll('.logo');

// window.addEventListener('load', () => {
//     setTimeout(() => {
//         logoSpan.forEach((span, idx) => {
//             setTimeout(() => {
//                 span.classList.add('active');
//             }, (idx + 1) * 400)
//         });

//         setTimeout(() => {
//             logoSpan.forEach((span, idx) => {
//                 setTimeout(() => {
//                     span.classList.remove('active')
//                     span.classList.add('fade');
//                 }, (idx + 1) * 50)
//             });
//         }, 2000)

//         setTimeout(() => {
//             intro.style.top = '-100vh'
//         }, 2300)
//     })
// })