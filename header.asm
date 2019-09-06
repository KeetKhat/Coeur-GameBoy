SECTION "Entry", ROM0 [$100]
nop
jp main

SECTION "Header", ROM0[$104]

;Nintendo Logo
DB $CE, $ED, $66, $66, $CC, $0D, $00, $0B
DB $03, $73, $00, $83, $00, $0C, $00, $0D
DB $00, $08, $11, $1F, $88, $89, $00, $0E
DB $DC, $CC, $6E, $E6, $DD, $DD, $D9, $99
DB $BB, $BB, $67, $63, $6E, $0E, $EC, $CC
DB $DD, $DC, $99, $9F, $BB, $B9, $33, $3E

;Title
DB "COEUR <3       "
DS 7

;Manufacturer code
DS 4

;CGB Flag
DB $00

;Licence code
DB "00"

;SGB Compatibility
DB $00

;Cartridge type
DB $00

;ROM Size
DB $00

;RAM Size
DB $00

;Destination code
DB $01

;Old license code
DB $33

;ROM version number
DB $00

;Header checksum
DB $FF

;Global checksum
DW $FACE
