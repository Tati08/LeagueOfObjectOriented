//
//  LeagueOfOrientedObject.m
//  LeagueOfObjectOriented
//
//  Created by Vinicius Miana on 12/8/13.
//  Copyright (c) 2013 Vinicius Miana. All rights reserved.
//

#import "LeagueOfOrientedObject.h"
#import <Foundation/Foundation.h>
#import "Jogador.h"
#import "time.h"
#import "stdlib.h"
#import "Espada.h"
#import "Arma.h"
#import "Arco.h"
#import "Magia.h"
#import "Machado.h"

@implementation LeagueOfOrientedObject

-(void)jogar {
    
    //int aux;
    //Arma *esp = [Arco new];
    Arma *esp = [[Arco alloc] initWith:100];
    Jogador *j1 = [[Jogador alloc] initWithNome:@"Joaquim" raca:2];
    Jogador *j2 = [[Jogador alloc] initWithNome:@"Pedro" raca:2];
    srand((unsigned int)time(NULL));
    //j1.nome=@"Joaquim";
    [j1 setArmaPrimaria:esp];
    //j2.nome=@"Pedro";
    /*NSLog(@"escolha a classe do jogador 1:");
     scanf("%d",&aux);
     j1.raca = aux;
     NSLog(@"escolha a classe do jogador 2:");
     scanf("%d",&aux);
     j2.raca = aux;*/
    NSLog(@"Jogador 1 classe %d , jogador 2 classe %d",j1.raca,j2.raca);
    [j1 ataque: j2];
    NSLog(@"vida = %.2f ataqueJ = %d defesa= %d", j2.vida, j1.ataque,j2.defesa);
    [j1 ataque: j2];
    NSLog(@"vida = %.2f ataqueJ = %d", j2.vida, j1.ataque);
    

}

-(Boolean)verificarVencedor {
    return TRUE;
}

-(Jogador*)vencedor {
    return Nil;
}

static LeagueOfOrientedObject *_instancia=nil;

+ (LeagueOfOrientedObject *) instancia {
    
    if(_instancia == nil){
        _instancia = [[LeagueOfOrientedObject alloc] init];
    }
    
    return _instancia;
}

@end
