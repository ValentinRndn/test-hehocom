<?php
/* Template Name: Technical Section Page */
get_header(); ?>

<section class="tech-section">
    <div class="technic-container">
        <div class="left-technic-container">
            <img id="main-image" src="<?php echo get_stylesheet_directory_uri(); ?>/assets/img/technic/curly.webp" alt="Curly Hair">

             
        <div class="popup-container" id="popup-container">
            <h3 id="popup-title"></h3>
            <p id="popup-content"></p>
            <div class="popup-link">
                <a href="https://valentin-renaudin.com">
                    <span>ÇA M'INTÉRESSE !</span>
                </a>
                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"><path fill="currentColor" fill-rule="evenodd" d="M12 22c5.523 0 10-4.477 10-10S17.523 2 12 2S2 6.477 2 12s4.477 10 10 10M9.97 8.47a.75.75 0 0 1 1.06 0l3 3a.75.75 0 0 1 0 1.06l-3 3a.75.75 0 1 1-1.06-1.06L12.44 12L9.97 9.53a.75.75 0 0 1 0-1.06" clip-rule="evenodd"/></svg>
            </div>
        </div>
        </div>
        <div class="right-technic-container">
            <h1>TROUVEZ LE PRODUIT PARFAIT POUR LES BESOINS DE VOS CHEVEUX !</h1>
            <p>Comment trouver le bon shampoing, masque et autres soins capillaires ?</p>
            <div class="tabs" id="tab-buttons-container"></div>
        </div>


    </div>
</section>

<?php get_footer(); ?>

<script>

const tabData = {
    1: {
        image: "<?php echo get_stylesheet_directory_uri(); ?>/assets/img/technic/colored.webp",
        title: "Cheveux Colorés",
        description: "Nos produits sont spécialement formulés pour prolonger la couleur et protéger vos cheveux colorés."
    },
    2: {
        image: "<?php echo get_stylesheet_directory_uri(); ?>/assets/img/technic/dry.webp",
        title: "Cheveux Secs et Abîmés",
        description: "Hydratez et réparez vos cheveux secs et abîmés avec nos produits nourrissants."
    },
    3: {
        image: "<?php echo get_stylesheet_directory_uri(); ?>/assets/img/technic/curly.webp",
        title: "Cheveux Bouclés",
        description: "Découvrez nos produits spécialement conçus pour définir et sublimer vos boucles."
    },
    4: {
        image: "<?php echo get_stylesheet_directory_uri(); ?>/assets/img/technic/wavy.webp",
        title: "Cheveux Ondulés",
        description: "Trouvez les produits parfaits pour mettre en valeur vos ondulations naturelles."
    },
    5: {
        image: "<?php echo get_stylesheet_directory_uri(); ?>/assets/img/technic/frizzy.webp",
        title: "Cheveux Frisés",
        description: "Dominez les frisottis et obtenez des cheveux lisses et définis avec nos solutions anti-frisottis."
    },
    6: {
        image: "<?php echo get_stylesheet_directory_uri(); ?>/assets/img/technic/kinky.webp",
        title: "Cheveux Crépus",
        description: "Hydratez et renforcez vos cheveux crépus avec nos soins enrichis en nutriments."
    },
    7: {
        image: "<?php echo get_stylesheet_directory_uri(); ?>/assets/img/technic/blond.webp",
        title: "Cheveux Blonds",
        description: "Protégez et illuminez vos cheveux blonds avec nos soins spécifiques pour cheveux blonds."
    },
    8: {
        image: "<?php echo get_stylesheet_directory_uri(); ?>/assets/img/technic/straight.webp",
        title: "Cheveux Raides",
        description: "Nos solutions pour garder vos cheveux raides, lisses et soyeux toute la journée."
    }
};

document.addEventListener('DOMContentLoaded', function () {
    const tabButtonsContainer = document.getElementById('tab-buttons-container');
    const mainImage = document.getElementById('main-image');
    const popupTitle = document.getElementById('popup-title');
    const popupContent = document.getElementById('popup-content');
    const popupContainer = document.getElementById('popup-container');

   
    if (tabButtonsContainer) {
    
        Object.keys(tabData).forEach(function(key) {
            const tab = tabData[key];

       
            const button = document.createElement('button');
            button.classList.add('tab-button');
            button.setAttribute('data-tab', key);

           
            if (key === "1") {
                button.classList.add('active');
         
                mainImage.src = tab.image;
                popupTitle.textContent = tab.title;
                popupContent.textContent = tab.description;
            }

       
            const img = document.createElement('img');
            img.src = tab.image;
            img.alt = tab.title;
            img.style.width = "50px"; 

            const span = document.createElement('span');
            span.textContent = tab.title;

    
            button.appendChild(img);
            button.appendChild(span);


            tabButtonsContainer.appendChild(button);
        });

        const tabButtons = document.querySelectorAll('.tab-button');

        tabButtons.forEach(button => {
            button.addEventListener('click', function () {
                const tabId = this.getAttribute('data-tab');

              
                mainImage.src = tabData[tabId].image;

            
                popupTitle.textContent = tabData[tabId].title;
                popupContent.textContent = tabData[tabId].description;

                tabButtons.forEach(btn => btn.classList.remove('active'));

                this.classList.add('active');
            });
        });
    } else {
        console.error("Le conteneur des boutons n'existe pas.");
    }
});


</script>
