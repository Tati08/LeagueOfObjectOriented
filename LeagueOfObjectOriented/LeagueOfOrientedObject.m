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
    
    int turno=1;
    //Arma *esp = [Arco new];
    
    Jogador *j1 = [[Jogador alloc] init;
    Jogador *j2 = [[Jogador alloc] init;
    while (verificarVencedor = false)
        {
            if(turno == 1)
            {
                [j1 ataque:j2];
                turno = 0;
            }
            if(turno == 0)
            {
                [j2 ataque:j1];
                turno = 1;
            }

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
