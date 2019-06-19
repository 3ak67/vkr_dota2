$ ->
  $('.js-search-input').autocomplete({
    source: Routes.search_path(),
    minLength: 2,

  })
#  .data( "ui-autocomplete")
#  ._renderItem = (ul, item) ->
#      index = Math.floor(Math.random() * (4 - 1 + 1)) + 1
#      path = Routes.hero_path(item)
#      return $('<li>')
#                    .append('<div class="ui-item-image"><a href=' + path + '><img src="/assets/search-' + index + '.png"/></div><div class="ui-item-text"><p>' + item.value + '</p></a></div>')
#                    .appendTo(ul)