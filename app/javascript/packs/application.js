import Rails from "@rails/ujs"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import "@hotwired/turbo-rails"

Rails.start()

ActiveStorage.start()

import "bootstrap"
import "../stylesheets/application"
import { auto } from "@popperjs/core"

document.addEventListener('turbo:load', () => {
    if (document.querySelector('.splide')){
        let spliders = document.querySelectorAll('.splide');
        for(let i = 0; i< spliders.length; i++){
            new Splide( spliders[i],{
                autowidth: true, 
                arrows: false,
                pagination: false
            } ).mount();
        }   
    }
  } );