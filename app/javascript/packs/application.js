// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)

document.addEventListener("turbolinks:load", function() {
  for (const button of [...document.querySelectorAll('i.fas.nav-button:not(#nav-button-logout)')]) {
    button.addEventListener('click', (e) => {

      // Se ocultan todos los elementos que han sido mostrados,
      // para mostrar las pantallas en su estado inicial al regresar.
      for (const shown of [...document.querySelectorAll('.shown')]) {
        shown.classList.replace('shown', 'hidden');
      }

      document.getElementById(`${button.dataset.goto}-container`)
        .classList.replace('hidden', 'shown');
    });
  }

  document.querySelector('#login-container > form')
    .addEventListener('ajax:success', ({
      target,
      detail
    }) => {
      const response = detail[0];
      const messageContainer = target.querySelector('.message-container');
      if (!response) {
        messageContainer.classList.add('error');
        messageContainer.innerText = 'Las credenciales ingresadas son incorrectas';
      }
    });

  for (const button of [...document.querySelectorAll('.card > input[type=button]')]) {
    button.addEventListener('click', async ({
      target
    }) => {
      const relatedTarget = document.querySelector(target.dataset.target);
      const g = await fetch(target.dataset.url);
      const data = await g.json();

      target.closest('.shown').classList.replace('shown', 'hidden');

      if (data) {
        relatedTarget.querySelector('h2').innerText = data.titulo;
        relatedTarget.querySelector('h3 > span').innerText = data.coreografia;
        relatedTarget.querySelector('p').innerText = data.resumen;

        relatedTarget.classList.replace('hidden', 'shown');
      } else {
        document.getElementById('login-container').classList.replace('hidden', 'shown');
      }
    });
  }

  for (const img of [...document.querySelectorAll('#videos-container > .thumbnails-container > img')]) {
    img.addEventListener('click', async ({
      target
    }) => {

      const relatedTarget = document.querySelector(target.dataset.target);
      const g = await fetch(target.dataset.url);
      const data = await g.json();

      relatedTarget.innerHTML = '';

      if (data) {

        const titulo = document.createElement('h2');

        if (data.length) {

          const video = document.createElement('video');

          video.src = '/assets/violencia_3.mp4';
          video.controls = true;

          titulo.innerText = 'Archivos originales';

          relatedTarget.appendChild(video);
          relatedTarget.appendChild(titulo);

          for (const obra of data) {

            const tituloObra = document.createElement('h3');
            const coreografia = document.createElement('h4');

            tituloObra.innerText = obra.titulo;
            coreografia.innerText = obra.coreografia;

            relatedTarget.appendChild(tituloObra);
            relatedTarget.appendChild(coreografia);
          }
        } else {

          titulo.innerText = 'No existen cápsulas asociadas al concepto';
          relatedTarget.appendChild(titulo);
        }

        relatedTarget.classList.replace('hidden', 'shown');

      } else {
        target.closest('.shown').classList.replace('shown', 'hidden');
        document.getElementById('login-container').classList.replace('hidden', 'shown');
      }
    });
  }

  for (const img of [...document.querySelectorAll('#prensa-container > .thumbnails-container > img')]) {
    img.addEventListener('click', async ({
      target
    }) => {
      document.querySelector(target.dataset.target).classList.replace('hidden', 'shown');
    });
  }
});
