//
//  ViewController.h
//  Calculator1
//
//  Created by Leonardo Talero on 11/1/15.
//  Copyright © 2015 unir. All rights reserved.
//

#import <UIKit/UIKit.h>
int metodo;
int numeroSeleccionado;
float actualTotal;

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *pantalla;


- (IBAction)numero1:(id)sender;
- (IBAction)numero2:(id)sender;
- (IBAction)numero3:(id)sender;
- (IBAction)numero4:(id)sender;
- (IBAction)numero5:(id)sender;
- (IBAction)numero6:(id)sender;
- (IBAction)numero7:(id)sender;
- (IBAction)numero8:(id)sender;
- (IBAction)numero9:(id)sender;
- (IBAction)numero0:(id)sender;
- (IBAction)suma:(id)sender;
- (IBAction)resta:(id)sender;
- (IBAction)multiplicacion:(id)sender;
- (IBAction)division:(id)sender;
- (IBAction)igual:(id)sender;
- (IBAction)limpiar:(id)sender;

@end


