SECTION "Audio", ROM0

audio_off:
    xor a
    ldh [$26], a
    ret

audio_on:
    ld a, %10000000
    ldh [$26], a ; Sound is turned on
    ld a, %01110111
    ldh [$24], a ; L/R Max volume
    ld a, %11111111
    ldh [$25], a ; All the channels will be routed to the left and right
    ret