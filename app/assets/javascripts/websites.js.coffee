$(document).ready ->

  $(".revealer").click (event) ->
    event.preventDefault()
    $(".revealable").hide "fast"
    id = this.id
    $('#' + id + '.revealable').show "slow"
