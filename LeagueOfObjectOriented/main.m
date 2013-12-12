//
//  main.m
//  RPG
//
//  Created by MICHEL ZARZOUR on 11/19/13.
//  Copyright (c) 2013 MICHEL ZARZOUR. All rights reserved.
//

//#import <Foundation/Foundation.h>
//#import "Jogador.h"
//#import "time.h"
//#import "stdlib.h"
//#import "Espada.h"
//#import "Arma.h"
//#import "Arco.h"
//#import "Magia.h"
//#import "Machado.h"
#import "LeagueOfOrientedObject.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {

        LeagueOfOrientedObject* partida = [LeagueOfOrientedObject instancia];
        
        [partida jogar];
        
        
    }
    return 0;
}

