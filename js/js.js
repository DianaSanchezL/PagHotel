//validar fecha de regreso posterior a fecha de salida
function validarFechas() {
    var fechaSalida = new Date(document.getElementById("fecha_salida").value);
    var fechaRegreso = new Date(document.getElementById("fecha_regreso").value);

    if (fechaRegreso < fechaSalida) {
        alert("La fecha de regreso debe ser posterior a la fecha de salida.");
        return false; 
    }else{
       return true; 
    }
}
//transicion de imágenes sección contáctenos
const images = document.querySelectorAll('.imagen-contacto img');
let currentImageIndex = 0;

function fadeInNextImage() {
    images[currentImageIndex].style.opacity = 0;
    currentImageIndex = (currentImageIndex + 1) % images.length;
    images[currentImageIndex].style.opacity = 1;
}
setInterval(fadeInNextImage, 4000);
//menu hamburguesa responsive
let menu = document.querySelector('#menu');
let navbar = document.querySelector('.navbar');
let navLinks = document.querySelectorAll('.navbar a');
menu.addEventListener('click', () => {
    menu.classList.toggle('active');
    navbar.classList.toggle('active');
});
navLinks.forEach((link) => {
    link.addEventListener('click', () => {
        menu.classList.remove('active');
        navbar.classList.remove('active');
    });
});