//
//  Arco.m
//  RPG
//
//  Created by MICHEL ZARZOUR on 11/19/13.
//  Copyright (c) 2013 MICHEL ZARZOUR. All rights reserved.
//

#import "Arco.h"
#import "Jogador.h"

@implementation Arco


-(double)calcularForcaAtaque:(Jogador*)jogador{
    if (qtdeFlecha==0) {
        NSLog(@"Suas flechas acabaram");
        return 0;
    }
    NSLog(@"Voce ainda tem %d Flechas",qtdeFlecha);
    double forca;
    forca=10;
    if (jogador.raca == [Jogador ELFO]) {
        forca =forca *1.1;
    }
    
    qtdeFlecha--;
    return forca;
}

-(id) initWith:(int) flechas {
    self = [super init];
    if (self) {
        qtdeFlecha = flechas;
    }
    return self;
}
    
@end
