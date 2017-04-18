//
//  main.m
//  GuessTheWord
//
//  Created by 陈炯 on 2017/4/18.
//  Copyright © 2017年 Jiong. All rights reserved.
//

#import <Foundation/Foundation.h>

void printWord(NSString *word, NSMutableArray<NSString*> *usedLetter) {
    printf("\nWorld: ");
    
    BOOL missingLetters = NO;
    
    printf("\nGuesses: %ld/8\n", [usedLetter count]);
    if(missingLetters == NO) {
        printf("It looks like you live on ... for now.\n");
        exit(0);
    } else {
        if ([usedLetter count] == 8) {
            printf("Oops - you died! The word was %s.\n", [word cStringUsingEncoding:NSUTF8StringEncoding]);
            exit(0);
        } else {
            printf("Enter a guess: ");
        }
    }
    
    for (NSInteger i = 0; i < [word length]; ++i) {
        unichar letter = [word characterAtIndex:1];
        NSString *letterString = [NSString stringWithFormat:@"%C", letter];
        
        if ([usedLetter containsObject:letterString]) {
            printf("%C", letter);
        } else {
            printf("_");
            missingLetters = YES;
        }
    }
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
     
        NSString *word = @"JAMES";
        NSMutableArray<NSString*> *usedLetter = [NSMutableArray arrayWithCapacity:8];
        printf("Welcome to the game\n");
        printf("Press a letter to guess, or Ctrl+C to quit.\n");
        //printWord(word, usedLetter);
        
        while (1) {
            char cstring[256];
            scanf("%s", cstring);
            
            NSString *input = [NSString stringWithCString:cstring encoding:NSUTF8StringEncoding];
            if ([input length] != 1) {
                printf("Please type exactly one letter, or Ctrl+C to quit.");
            } else {
                unichar letter = [input characterAtIndex:0];
                NSString *letterString = [[NSString stringWithFormat:@"%C", letter] uppercaseString];
                
                if([usedLetter containsObject:letterString]) {
                    printf("You used that letter already!\n");
                } else {
                    [usedLetter addObject:letterString];
                }
            }
            
            printWord(word, usedLetter);
        }
    }
    return 0;
}
