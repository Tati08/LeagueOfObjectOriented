//
//  Arma.m
//  RPG
//
//  Created by MICHEL ZARZOUR on 11/19/13.
//  Copyright (c) 2013 MICHEL ZARZOUR. All rights reserved.
//
#import "time.h"
#import "stdlib.h"
#import "Arma.h"
#import "Jogador.h"

@implementation Arma
double aux;

-(double)calcularForcaAtaque:(Jogador*)jogador{
  
    if ([jogador raca] == [Jogador ELFO]) {
            [jogador setDefesa:[jogador defesa]+10];

    }else if([jogador raca] == [Jogador ORC]){
            jogador.ataque=+10;
            jogador.defesa=+5;
    }else if([jogador raca] == [Jogador ANAO]){
            jogador.ataque=+5;
            jogador.defesa=+15;
    }else if([jogador raca] == [Jogador HUMANO]){
            jogador.defesa=+15;
    }
    
    [jogador setForcaTotal:jogador.ataque-jogador.defesa];
    return 0;
}

-(NSString *)statusDaArma:(Arma *)armaUsada {
    return @"Teste";
}

@end
