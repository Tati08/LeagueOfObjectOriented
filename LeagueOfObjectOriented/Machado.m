//
//  Machado.m
//  RPG
//
//  Created by MICHEL ZARZOUR on 11/19/13.
//  Copyright (c) 2013 MICHEL ZARZOUR. All rights reserved.
//

#import "Machado.h"
#import "Jogador.h"

@implementation Machado

-(double)calcularForcaAtaque:(Jogador*)jogador{
    forcaMaxima=10;
    desgaste++;
    double forca = (forcaMaxima-desgaste);
    if (jogador.raca == [Jogador ANAO]){
        forca = forca * 1.1;
    }
    if (forca<=0){
        NSLog(@"Seu Machado Nao da mais dano");
        return 0;
    }
    return forca;
    
}
@end
