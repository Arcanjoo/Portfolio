document.addEventListener("DOMContentLoaded", function() {
    const prevButtons = document.querySelectorAll('.prev');
    const nextButtons = document.querySelectorAll('.next');
    const slides = document.querySelectorAll('.slides');

    slides.forEach((slide, index) => {
        let currentIndex = 0;
        const images = slide.querySelectorAll('img');
        
        // Função para esconder todas as imagens e mostrar a atual
        function updateCarousel() {
            images.forEach((img, i) => {
                img.style.display = i === currentIndex ? 'block' : 'none';
            });
        }

        // Evento para o botão 
        prevButtons[index].addEventListener('click', function() {
            currentIndex = (currentIndex === 0) ? images.length - 1 : currentIndex - 1;
            updateCarousel();
        });

        // Evento para o botão
        nextButtons[index].addEventListener('click', function() {
            currentIndex = (currentIndex === images.length - 1) ? 0 : currentIndex + 1;
            updateCarousel();
        });

        // Inicializa o carrossel
        updateCarousel();
    });
});
