secoder =

  code: [3, 4, 2, 8]
  next: 0

  match: ->
    console.log "match"

  digit: (n) ->
    if this.code[this.next++] != n
      this.next = 0
    else if this.next == this.code.length
      this.match()

[9, 9, 3, 4, 2, 8, 6, 7, 0, 7, 8, 9].map (n) ->
  secoder.digit n