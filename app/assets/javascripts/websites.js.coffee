$(document).on 'ready page:load', ->

  $(".revealer").click (event) ->
    event.preventDefault()
    $(".revealable").hide "fast"
    id = this.id
    $('.focused').removeClass('focused')
    $(this).parent().parent().addClass('focused')
    $('#' + id + '.revealable').show "slow"