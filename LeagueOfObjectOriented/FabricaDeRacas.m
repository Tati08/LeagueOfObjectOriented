//
//  FabricaDeRacas.m
//  LeagueOfObjectOriented
//
//  Created by MARCUS SEIXAS on 12/12/13.
//  Copyright (c) 2013 Vinicius Miana. All rights reserved.
//

#import "FabricaDeRacas.h"

@implementation FabricaDeRacas

-(void)ContruirComRacaEscolhida:(int)raca andJogador:(Jogador *)pessoa
{
    if(raca == 0)
    {
        pessoa.ataque = 0;
        pessoa.defesa = 10;
    }
    if(raca == 1)
    {
        pessoa.ataque = 0;
        pessoa.defesa = 15;
    }
    if(raca == 2)
    {
        pessoa.ataque = 10;
        pessoa.defesa = 5;
    }
    if(raca == 3)
    {
        pessoa.ataque = 5;
        pessoa.defesa = 15;
    }
}

@end
