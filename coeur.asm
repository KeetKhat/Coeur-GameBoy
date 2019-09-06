coeur: ; Au début je voulais faire une boucle mais en fait non
    ld a, $F8
    ldh [$43], a
    ld hl, coeur_tiles
    ld de, $8300
    ld bc, 4*16
    call load_tiles

    ld a, $30
    ld hl, $9844
    ld [hli], a

    ld a, $30
    ld hl, $9845
    ld [hli], a

    ld a, $30
    ld hl, $9846
    ld [hli], a

    ld a, $30
    ld hl, $9847
    ld [hli], a

    ld a, $30
    ld hl, $984B
    ld [hli], a

    ld a, $30
    ld hl, $984C
    ld [hli], a

    ld a, $30
    ld hl, $984D
    ld [hli], a

    ld a, $30
    ld hl, $984E
    ld [hli], a

    ld a, $30
    ld hl, $9863
    ld [hli], a

    ld a, $31
    ld hl, $9864
    ld [hli], a

    ld a, $31
    ld hl, $9865
    ld [hli], a

    ld a, $31
    ld hl, $9866
    ld [hli], a

    ld a, $31
    ld hl, $9867
    ld [hli], a

    ld a, $30
    ld hl, $9868
    ld [hli], a

    ld a, $30
    ld hl, $986A
    ld [hli], a

    ld a, $32
    ld hl, $986B
    ld [hli], a

    ld a, $32
    ld hl, $986C
    ld [hli], a

    ld a, $32
    ld hl, $986D
    ld [hli], a

    ld a, $32
    ld hl, $986E
    ld [hli], a

    ld a, $30
    ld hl, $986F
    ld [hli], a

    ld a, $30
    ld hl, $9882
    ld [hli], a

    ld a, $31
    ld hl, $9883
    ld [hli], a

    ld a, $31
    ld hl, $9884
    ld [hli], a

    ld a, $31
    ld hl, $9885
    ld [hli], a

    ld a, $31
    ld hl, $9886
    ld [hli], a

    ld a, $32
    ld hl, $9887
    ld [hli], a

    ld a, $32
    ld hl, $9888
    ld [hli], a

    ld a, $30
    ld hl, $9889
    ld [hli], a

    ld a, $32
    ld hl, $988A
    ld [hli], a

        ld a, $32
    ld hl, $988A
    ld [hli], a

    ld a, $32
    ld hl, $988B
    ld [hli], a

    ld a, $32
    ld hl, $988C
    ld [hli], a

    ld a, $32
    ld hl, $988D
    ld [hli], a

    ld a, $32
    ld hl, $988E
    ld [hli], a

    ld a, $32
    ld hl, $988F
    ld [hli], a

    ld a, $30
    ld hl, $9890
    ld [hli], a

    ld a, $30
    ld hl, $98A2
    ld [hli], a

    ld a, $31
    ld hl, $98A3
    ld [hli], a

    ld a, $31
    ld hl, $98A4
    ld [hli], a

    ld a, $31
    ld hl, $98A5
    ld [hli], a

    ld a, $31
    ld hl, $98A6
    ld [hli], a

    ld a, $31
    ld hl, $98A7
    ld [hli], a

    ld a, $32
    ld hl, $98A8
    ld [hli], a
    
    ld a, $32
    ld hl, $98A9
    ld [hli], a
    
    ld a, $32
    ld hl, $98AA
    ld [hli], a
    
    ld a, $32
    ld hl, $98AB
    ld [hli], a
    
    ld a, $32
    ld hl, $98AC
    ld [hli], a
    
    ld a, $32
    ld hl, $98AD
    ld [hli], a
    
    ld a, $32
    ld hl, $98AE
    ld [hli], a
    
    ld a, $32
    ld hl, $98AF
    ld [hli], a

    ld a, $30
    ld hl, $98B0
    ld [hli], a

    ld a, $30
    ld hl, $98C2
    ld [hli], a
    
    ld a, $31
    ld hl, $98C3
    ld [hli], a
        
    ld a, $31
    ld hl, $98C4
    ld [hli], a
        
    ld a, $31
    ld hl, $98C5
    ld [hli], a
        
    ld a, $31
    ld hl, $98C6
    ld [hli], a
        
    ld a, $31
    ld hl, $98C7
    ld [hli], a
        
    ld a, $31
    ld hl, $98C8
    ld [hli], a
            
    ld a, $32
    ld hl, $98C9
    ld [hli], a
                
    ld a, $32
    ld hl, $98CA
    ld [hli], a
                
    ld a, $32
    ld hl, $98CB
    ld [hli], a
                
    ld a, $32
    ld hl, $98CC
    ld [hli], a
                
    ld a, $32
    ld hl, $98CD
    ld [hli], a
                
    ld a, $32
    ld hl, $98CE
    ld [hli], a
                
    ld a, $32
    ld hl, $98CF
    ld [hli], a

    ld a, $30
    ld hl, $98D0
    ld [hli], a

    ld a, $30
    ld hl, $98E3
    ld [hli], a
    
    ld a, $31
    ld hl, $98E4
    ld [hli], a
        
    ld a, $31
    ld hl, $98E5
    ld [hli], a
        
    ld a, $31
    ld hl, $98E6
    ld [hli], a
        
    ld a, $31
    ld hl, $98E7
    ld [hli], a
        
    ld a, $31
    ld hl, $98E8
    ld [hli], a
        
    ld a, $31
    ld hl, $98E9
    ld [hli], a

    ld a, $32
    ld hl, $98EA
    ld [hli], a

    ld a, $32
    ld hl, $98EB
    ld [hli], a
    
    ld a, $32
    ld hl, $98EC
    ld [hli], a
    
    ld a, $32
    ld hl, $98ED
    ld [hli], a
    
    ld a, $32
    ld hl, $98EE
    ld [hli], a

    ld a, $30
    ld hl, $98EF
    ld [hli], a
    
    ld a, $30
    ld hl, $9904
    ld [hli], a
    
    ld a, $31
    ld hl, $9905
    ld [hli], a
        
    ld a, $31
    ld hl, $9906
    ld [hli], a
        
    ld a, $31
    ld hl, $9907
    ld [hli], a
        
    ld a, $31
    ld hl, $9908
    ld [hli], a
        
    ld a, $31
    ld hl, $9909
    ld [hli], a
        
    ld a, $31
    ld hl, $990A
    ld [hli], a

    ld a, $32
    ld hl, $990B
    ld [hli], a
    
    ld a, $32
    ld hl, $990C
    ld [hli], a
    
    ld a, $32
    ld hl, $990D
    ld [hli], a

    ld a, $30
    ld hl, $990E
    ld [hli], a

    ld a, $30
    ld hl, $9925
    ld [hli], a
    
    ld a, $31
    ld hl, $9926
    ld [hli], a
    
    ld a, $31
    ld hl, $9927
    ld [hli], a
    
    ld a, $31
    ld hl, $9928
    ld [hli], a
    
    ld a, $31
    ld hl, $9929
    ld [hli], a
    
    ld a, $31
    ld hl, $992A
    ld [hli], a

    ld a, $32
    ld hl, $992B
    ld [hli], a

    ld a, $32
    ld hl, $992C
    ld [hli], a
    
    ld a, $30
    ld hl, $992D
    ld [hli], a
    
    ld a, $30
    ld hl, $9946
    ld [hli], a
    
    ld a, $31
    ld hl, $9947
    ld [hli], a
    
    ld a, $31
    ld hl, $9948
    ld [hli], a
    
    ld a, $31
    ld hl, $9949
    ld [hli], a
    
    ld a, $31
    ld hl, $994A
    ld [hli], a
    
    ld a, $31
    ld hl, $994B
    ld [hli], a
    
    ld a, $30
    ld hl, $994C
    ld [hli], a
    
    ld a, $30
    ld hl, $9967
    ld [hli], a
    
    ld a, $31
    ld hl, $9968
    ld [hli], a
    
    ld a, $31
    ld hl, $9969
    ld [hli], a

    ld a, $31
    ld hl, $996A
    ld [hli], a
    
    ld a, $30
    ld hl, $996B
    ld [hli], a
    
    ld a, $30
    ld hl, $9988
    ld [hli], a
    
    ld a, $31
    ld hl, $9989
    ld [hli], a
    
    ld a, $30
    ld hl, $998A
    ld [hli], a

    ld a, $30
    ld hl, $99A9
    ld [hli], a
    ret