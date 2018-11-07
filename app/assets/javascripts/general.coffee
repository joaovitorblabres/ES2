$(document).on 'turbolinks:load', ->
  $('body, .mdl-layout__drawer, .mdl-layout__content').niceScroll()
  componentHandler.upgradeDom()
