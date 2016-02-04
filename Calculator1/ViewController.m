//
//  ViewController.m
//  Calculator1
//
//  Created by Leonardo Talero on 11/1/15.
//  Copyright © 2015 unir. All rights reserved.
//

#import "ViewController.h"
#import <limits.h>


@interface ViewController ()


@end

@implementation ViewController


- (IBAction)numero1:(id)sender{
    if ([self limitLabelLength]) {
        numeroSeleccionado= numeroSeleccionado +1;
    }

    [self mostrar];
   
}
- (IBAction)numero2:(id)sender{
    if ([self limitLabelLength]) {
        numeroSeleccionado= numeroSeleccionado +2;
    }
    [self mostrar];

    
}
- (IBAction)numero3:(id)sender{
    if ([self limitLabelLength]) {
        numeroSeleccionado= numeroSeleccionado +3;
    }
 [self mostrar];

    
}
- (IBAction)numero4:(id)sender{
    
    if ([self limitLabelLength]) {
        numeroSeleccionado= numeroSeleccionado +4;
    }
[self mostrar];

}
- (IBAction)numero5:(id)sender{
    
    if ([self limitLabelLength]) {
        numeroSeleccionado= numeroSeleccionado +5;
    }
    [self mostrar];

}
- (IBAction)numero6:(id)sender{
    if ([self limitLabelLength]) {
        numeroSeleccionado= numeroSeleccionado +6;
    }
 [self mostrar];

    
}
- (IBAction)numero7:(id)sender{
    if ([self limitLabelLength]) {
        numeroSeleccionado= numeroSeleccionado +7;
    }
   [self mostrar];

    
}
- (IBAction)numero8:(id)sender{
    if ([self limitLabelLength]) {
        numeroSeleccionado= numeroSeleccionado +8;
    }
    [self mostrar];

    
}
- (IBAction)numero9:(id)sender{
    
    if ([self limitLabelLength]) {
        numeroSeleccionado= numeroSeleccionado +9;
    }
    
   [self mostrar];

    
}
- (IBAction)numero0:(id)sender{
   
    if ([self limitLabelLength]) {
        numeroSeleccionado= numeroSeleccionado +0;
    }
   
        [self mostrar];
   
    
}

- (IBAction)multiplicacion:(id)sender{
    calcular();
    
    metodo=1;
    
    numeroSeleccionado=0;
    
}
- (IBAction)division:(id)sender{
    calcular();
    metodo=2;
    numeroSeleccionado=0;
    
}
- (IBAction)suma:(id)sender{
    calcular();
    metodo=3;
    numeroSeleccionado=0;
}
- (IBAction)resta:(id)sender{
    calcular();
    metodo=4;
    numeroSeleccionado=0;
    
}
- (IBAction)igual:(id)sender{
    calcular();
    metodo=0;
    numeroSeleccionado=0;
    _pantalla.text=[NSString stringWithFormat:@"%.2f",actualTotal];
 
}
- (IBAction)limpiar:(id)sender{
    metodo=0;
    actualTotal=0;
    numeroSeleccionado=0;
    _pantalla.text=[NSString stringWithFormat:@"0"];
    
    
}
- (void)viewDidLoad {
    [super viewDidLoad];
   
    
   
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) mostrar
{
    
    
        _pantalla.text=[NSString stringWithFormat:@"%i",numeroSeleccionado];
    
    
}


void calcular() {
    if (actualTotal==0) {
        actualTotal=numeroSeleccionado;
        
    }else{
        switch (metodo) {
            case 1:
                
                actualTotal=actualTotal*numeroSeleccionado;
                
                break;
            case 2:
                actualTotal=actualTotal / numeroSeleccionado;
                
                break;
            case 3:
                actualTotal=actualTotal + numeroSeleccionado;
                
                break;
            case 4:
                actualTotal=actualTotal - numeroSeleccionado;
                
                break;
                
            default:
                break;
        }
        
    }
  
    
}


- (bool)limitLabelLength {
    bool resu;
    if ([self.pantalla.text length] >= 9) {
               
        resu=false;
    }else{
         numeroSeleccionado= numeroSeleccionado * 10;
        resu=true;
    }
    return resu;
    
}

@end
