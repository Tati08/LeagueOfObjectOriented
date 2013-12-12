//
//  Machado.h
//  RPG
//
//  Created by MICHEL ZARZOUR on 11/19/13.
//  Copyright (c) 2013 MICHEL ZARZOUR. All rights reserved.
//

#import "Arma.h"
@class Jogador;

@interface Machado : Arma{
    int forcaMaxima;
    int desgaste;
}

-(double)calcularForcaAtaque:(Jogador*)jogador;
@end
