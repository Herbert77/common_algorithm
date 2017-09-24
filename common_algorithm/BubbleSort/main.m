//
//  main.m
//  BubbleSort
//
//  Created by Herbert Hu on 2017/9/24.
//  Copyright © 2017年 Herbert Hu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BubbleSort.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
       
//        NSMutableArray *arr = [[NSMutableArray alloc] initWithArray:@[@3, @7, @2, @8, @10, @1]];
        
        NSMutableArray *arr = [[NSMutableArray alloc] initWithArray:@[@3, @7, @2, @8, @10, @1, @20, @6, @3, @4]];

        
        [BubbleSort bubbleSort:arr];
        
        NSLog(@"%@", arr);
    }
    return 0;
}
