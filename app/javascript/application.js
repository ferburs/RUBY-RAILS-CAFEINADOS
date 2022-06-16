// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
//= require jquery
//= require jquery_ujs

import 'bootstrap'
import 'css/styles'

function fecha() {
    var date;
    date = new Date().toLocaleDateString();
    return date
}