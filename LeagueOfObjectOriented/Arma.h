//
//  Arma.h
//  RPG
//
//  Created by MICHEL ZARZOUR on 11/19/13.
//  Copyright (c) 2013 MICHEL ZARZOUR. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Jogador;

@interface Arma : NSObject{
    float precisaodoAtaque;
}

-(double)calcularForcaAtaque:(Jogador*)jogador;
-(NSString *)statusDaArma:(Arma *)armaUsada;

@end
