//
//  FabricaDeRacas.h
//  LeagueOfObjectOriented
//
//  Created by MARCUS SEIXAS on 12/12/13.
//  Copyright (c) 2013 Vinicius Miana. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Jogador.h"


@interface FabricaDeRacas : NSObject

-(void)ContruirComRacaEscolhida:(int)raca andJogador:(Jogador *)pessoa;
@end
