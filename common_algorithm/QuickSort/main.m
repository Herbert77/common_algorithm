//
//  main.m
//  QuickSort
//
//  Created by Herbert Hu on 2017/9/26.
//  Copyright © 2017年 Herbert Hu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "QuickSort.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        NSMutableArray *arr = [[NSMutableArray alloc] initWithArray:@[@3, @7, @2, @8, @10, @1]];
        
        [QuickSort quickSortWithArray:arr withLeft:0 andRight:[arr count]-1];
        
        NSLog(@"%@", arr);
    }
    return 0;
}
