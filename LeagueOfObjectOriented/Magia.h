//
//  Magia.h
//  RPG
//
//  Created by MICHEL ZARZOUR on 11/19/13.
//  Copyright (c) 2013 MICHEL ZARZOUR. All rights reserved.
//

#import "Arma.h"
@class Jogador;

@interface Magia : Arma{
    double forca;
}


-(double)calcularForcaAtaque:(Jogador*)jogador;
@end
