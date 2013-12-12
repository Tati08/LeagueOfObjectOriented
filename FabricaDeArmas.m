//
//  FabricaDeArmas.m
//  LeagueOfObjectOriented
//
//  Created by MARCUS SEIXAS on 12/12/13.
//  Copyright (c) 2013 Vinicius Miana. All rights reserved.
//

#import "FabricaDeArmas.h"
#import "Arma.h"
#import "Arco.h"
#import "Espada.h"
#import "Machado.h"
#import "Magia.h"

@implementation FabricaDeArmas


-(Arma *)contruirarmaescolhida:(int)escolhida
{
    Arma *galhinha;
    if(escolhida == 1)
    {
        galhinha = [[Arco alloc] initWith:30];
    }
    if(escolhida == 2)
    {
        galhinha = [[Espada alloc] init];
    }
    if(escolhida == 3)
    {
        galhinha = [[Machado alloc] init];
    }
    if(escolhida == 4)
    {
        galhinha = [[Magia alloc] init];
    }
    return galhinha;
}
@end
