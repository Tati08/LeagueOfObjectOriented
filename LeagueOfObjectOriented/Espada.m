//
//  Espada.m
//  RPG
//
//  Created by MICHEL ZARZOUR on 11/19/13.
//  Copyright (c) 2013 MICHEL ZARZOUR. All rights reserved.
//

#import "Espada.h"
#import "Jogador.h"

@implementation Espada

-(double)calcularForcaAtaque:(Jogador*)jogador{
    forcaMaxima=10;
    double forca = (forcaMaxima-desgaste);
    desgaste++;
    if (jogador.raca == [Jogador HUMANO] || jogador.raca == [Jogador ORC]){
        forca = forca * 1.1;
    }
    if (forca<=0){
        NSLog(@"Sua Espada Nao da mais dano");
        return 0;
    }
   return forca;
    
}
-(NSString *)statusDaArma:(Arma *)armaUsada {
    NSLog(@"Sua espada desgastou em %d", desgaste);
    return nil;
}

-(id)init{
    self = [super init];
    if (self) {
        desgaste = 0;
        forcaMaxima = 10;
    }
    return self;
}


@end
