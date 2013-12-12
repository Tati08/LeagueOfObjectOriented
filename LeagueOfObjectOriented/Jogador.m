//
//  Jogador.m
//  RPG
//
//  Created by MICHEL ZARZOUR on 11/19/13.
//  Copyright (c) 2013 MICHEL ZARZOUR. All rights reserved.
//

#import "Jogador.h"
#import "Arma.h"
#import "Espada.h"
#import "Arco.h"
#import "FabricaDeArmas.h"
#import "FabricaDeRacas.h"

@implementation Jogador

static const int ELFO = 0;
static const int HUMANO=1;
static const int ORC=2;
static const int ANAO=3;

@synthesize nome;
@synthesize raca;
@synthesize vida;
@synthesize ataque;
@synthesize defesa;
@synthesize forcaTotal;
@synthesize forcaEscudo;
@synthesize armaPrimaria;
@synthesize armaSecundaria;


+(int)ELFO{
    return ELFO;
}


+(int)HUMANO{
    return HUMANO;
}

+(int)ORC{
    return ORC;
}

+(int)ANAO{
    return ANAO;
}


-(id)init
{
    self = [super init];
    if (self) {
        int escolha;
        FabricaDeArmas *galhinheiro;
        FabricaDeRacas *xikeiro;
        
        NSLog(@"digite o seu nome");
        scanf("%s",nome);
        
        vida = 100;
        
        forcaEscudo =10;
        
        NSLog(@"qual sera sua raca? digite 1 para elfo,2 para humano,3 para orc ou 4 para anao");
        scanf("%d",&escolha);
        raca = (escolha-1);
        
        [xikeiro ContruirComRacaEscolhida:raca andJogador:self];
        
        NSLog(@"qual sera sua arma primaria? digite 1 para arco,2 para espada,3 para machado ou 4 para magia");
        scanf("%d",&escolha);
        armaPrimaria = [galhinheiro contruirarmaescolhida:escolha];
        
        NSLog(@"qual sera sua arma secundaria? digite 1 para arco,2 para espada,3 para machado ou 4 para magia");
        scanf("%d",&escolha);
        armaSecundaria = [galhinheiro contruirarmaescolhida:escolha];
        
        
    }
    return self;
}

-(float)ataque:(Jogador*)adversario{
    float atk;
    /*Espada *esp = [Espada new];*/
    
    atk = [armaPrimaria calcularForcaAtaque:self] + self.ataque - adversario.defesa;
    [armaPrimaria statusDaArma:armaPrimaria];
    if (atk <= 0) {
        NSLog(@"Ataque sem efeito!");
        atk = 0;
    }
    adversario.vida = adversario.vida - atk;
    NSLog(@"Inimigo perdeu %.2f de vida!", atk);
    return vida;
}

-(float)sofreAtaque:(Arma*)armaUsada forca:(double)forca
{
    return -1;
}

@end



