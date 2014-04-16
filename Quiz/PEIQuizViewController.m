//
//  PEIQuizViewController.m
//  Quiz
//
//  Created by Juan Carlos Jiménez on 14/04/14.
//  Copyright (c) 2014 Product Engine. All rights reserved.
//

#import "PEIQuizViewController.h"

@interface PEIQuizViewController ()

//JC - integer and array pointers definitions

@property (nonatomic) int currentQuestionIndex;

@property (nonatomic, copy) NSArray *questions;

@property (nonatomic, copy) NSArray *answers;


//JC - outlet definitions

@property (nonatomic, weak) IBOutlet UILabel *questionLabel;

@property (nonatomic, weak) IBOutlet UILabel *answerLabel;

@end

@implementation PEIQuizViewController

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    //JC - Call the init method implemented by the superclass
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self) {
        //Create the arrays filled with questions and answers
        //and make pointers point to them
        self.questions = @[@"De qué está hecho el coñac?",
                           @"Cuanto es 7+7?",
                           @"Cuál es la capital de Vermont?"];
        
        self.answers = @[@"Uvas",
                         @"14",
                         @"Montpelier"];
    }

    //JC - Return the instance object
    return self;
    
}

//JC - Action definitions

- (IBAction)showQuestion:(id)sender
{
    //Step to the next Question
    self.currentQuestionIndex++;
    
    //Am I past the last question?
    if (self.currentQuestionIndex == [self.questions count]){
        
        //Go back to the  first question
        self.currentQuestionIndex = 0;
        
    }
    
    //Get the string at that index in the questions array
    NSString *question = self.questions[self.currentQuestionIndex];
    
    //Display the string in the questionLabel
    
    self.questionLabel.text = question;
    
    //Reset the answerLabel
    
    self.answerLabel.text = @"???";
    
    
    
}

- (IBAction)showAnswer:(id)sender
{

    //What is the answer for currentQuestion?
    NSString *answer = self.answers[self.currentQuestionIndex];
    
    //Display the answer in the answerLabel
    self.answerLabel.text = answer;
    
    
}

@end
