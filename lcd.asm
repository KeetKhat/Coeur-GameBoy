SECTION "LCD", ROM0

; VBlank stuff

vblank:
    push af
    push bc
    push de
    push hl
	ld a, 1
	ld [vblank_occured], a
	pop hl
	pop de
	pop bc
	pop af
	ret

wait_vblank:
    ldh a, [$44] ; Write the LYC content in A
    cp 144; ; Compare A with 144 
    jr nz, wait_vblank ; Go to wait_vblank until A < 144
    ret

; END of VBlank stuff

lcd_off:
    ld a, %00010001 ; LCD OFF, Tile Map = $9800, Window OFF, BG Tile Data = $8000, BG Tile Map = 9800, Sprite 8x8, Sprite OFF, BG ON 
    ldh [$40], a ; Now we can turn off the screen
    ret

lcd_on_9800:
	ld a, %10010001 ; LCD ON, Tile Map = $9800, Window OFF, BG Tile Data = $8000, BG Tile Map = 9800, Sprite 8x8, Sprite OFF, BG ON
	ldh [$40], a
	ret

; HL = Tiles bin
; DE = VRAM Location
; BC = Bytes to copy
load_tiles:
	ld		a,	[hli] ; A = The first tile = $8010 , increment HL to go the next byte of the tile
	ld		[de],	a ; Copy the byte in the VRAM
	inc		de ; Increment DE because we need to go to the next memory address ($8010 => $8011)
	dec		bc ; Decrement BC
	ld		a,	b ; Check if B or C are equal to 0 since we've put the total of bytes in BC (16 bits register)
	or		c
	jr		nz,	load_tiles ; If it's not, do the loop again
	ret

; HL = Map location
; DE Text string
display_text:
	ld a, [de]
	ld [hli], a
	inc de
	and a
	jr nz, display_text
	ret

clear_bg:
	ld de, 32*32 ; The size of the BG Map
	ld hl, $9800 ; The map display
.clear_bg_loop
	xor a ; A = 0
	ld [hli], a
	dec de ; Decrement  DE
	ld a, d ; Check if D or E are equal to 0
	or e
	jr nz, .clear_bg_loop
	ret

clear_oam:
	ld hl, $FE00
	ld d, 40*4
.clear_oam_loop
	xor a
	ld [hl], a
	inc l
	dec d
	jr nz, .clear_oam_loop
	ret

load_fonts:
    ld hl, fonts
    ld de, $8010
    ld bc, 41*16
    call load_tiles
	ret