//
//  Magia.m
//  RPG
//
//  Created by MICHEL ZARZOUR on 11/19/13.
//  Copyright (c) 2013 MICHEL ZARZOUR. All rights reserved.
//

#import "Magia.h"
#import "Jogador.h"

@implementation Magia

-(id)init{
    self = [super init];
    if (self) {
        forca = 2;
        forcaMaxima = 10;
    }
    return self;
}

-(double)calcularForcaAtaque:(Jogador*)jogador{
    
    forca = forca + 2;
    if(forca >= forcaMaxima){
        forca = forcaMaxima;
    }
    if (jogador.raca == [Jogador ELFO] || jogador.raca == [Jogador ORC]){
        forca=forca*1.2;
    }

    return forca;
}


@end
