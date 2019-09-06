INCLUDE "rst.asm"
INCLUDE "interrupts.asm"
INCLUDE "header.asm" ; Cartridge header
INCLUDE "wram.asm"

SECTION "Game", ROM0

INCLUDE "audio.asm"
; Graphics, tiles and map
INCLUDE "tiles.asm" ; Tiles
INCLUDE "lcd.asm" ; Graphics things
INCLUDE "coeur.asm"
INCLUDE "text.asm" ; Texts

main:
    di ; Disable interrupts

clear_wram:
    ld bc, 8*1024 ; 8 Kb of RAM
    ld de, $C000
.clear_wram_loop
    xor a
    ld [de], a
    dec bc
    inc de
    ld a, b
    or c
    jr nz, .clear_wram_loop

    ld a, %00000001
    ldh [$FF], a ; Enable VBlank Interruption
    ei ; Enable interrupts

    ; Screen position
    xor a ; A = 0
    ldh [$42], a ; X Pos = 0
    ldh [$43], a ; Y Pox = 0

    ; DMG palette
    ld a, %11100100 ; DMG Pal
    ldh [$47], a

    call audio_off
    call wait_vblank
    call lcd_off
    call clear_bg
    call clear_oam
	call load_fonts
    call coeur
	
	ld hl, $99E2
    ld de, nom
    call display_text
	call lcd_on_9800
	
    call loop

loop:
    halt
    nop
    jp loop