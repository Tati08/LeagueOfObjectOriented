//
//  Jogador.h
//  RPG
//
//  Created by MICHEL ZARZOUR on 11/19/13.
//  Copyright (c) 2013 MICHEL ZARZOUR. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Arma;

@interface Jogador : NSObject{
    NSString *nome;
    int raca;
    float vida;
    int forcaEscudo;
    int ataque;
    int defesa;
    Arma *armaPrimaria;
    Arma *armaSecundaria;
}

@property (nonatomic,strong) NSString *nome;
@property int raca;
@property float vida;
@property int ataque;
@property int defesa;
@property float forcaTotal;
@property int forcaEscudo;
@property Arma *armaPrimaria;
@property Arma *armaSecundaria;

-(id)init;

+(int)ELFO;
+(int)HUMANO;
+(int)ORC;
+(int)ANAO;

-(float)ataque:(Jogador*)adversario;
-(float)sofreAtaque:(Arma*)armaUsada forca:(double)forca;

@end
