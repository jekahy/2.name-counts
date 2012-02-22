//
//  main.m
//  name counts
//
//  Created by Жека Г on 2/18/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{

    @autoreleasepool {
       
        NSMutableDictionary *dict=[[NSMutableDictionary alloc]init];
        
       
        int x=1;
        while(true){
            char buf[100];
            
            printf("Enter name:");
            
            
            gets(buf);
            NSString *string=[NSString stringWithCString:buf encoding:NSASCIIStringEncoding];
            [string stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            if(string.length==0 || string==(id)[NSNull null] || [string isEqualToString:@"(null)"] || string==nil) {
                break; 
            } else{               
                
                if([dict objectForKey:string]!=nil){
                    int d=[[dict objectForKey:string] intValue]+1;
                    [dict setValue:[NSNumber numberWithInt:d] forKey:string];
                } else{
                    [dict setValue:[NSNumber numberWithInt:x] forKey:string];

                }                                 
                
            
            }            
            
            
        }
        for(id key in dict){
            NSLog(@"key:%@ value:%@",key,[dict objectForKey:key]);
        }       
        
    }
    return 0;
}

