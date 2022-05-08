import Rails from "@rails/ujs"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import "@hotwired/turbo-rails"

Rails.start()
Turbolinks.start()
ActiveStorage.start()

import "../stylesheets/application"
