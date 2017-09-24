//
//  BubbleSort.m
//  BubbleSort
//
//  Created by Herbert Hu on 2017/9/24.
//  Copyright © 2017年 Herbert Hu. All rights reserved.
//

#import "BubbleSort.h"

@implementation BubbleSort

// 冒泡排序
+ (void)bubbleSort:(NSMutableArray *)list {
    
    // 外循环
    for (int i=1; i<[list count]; i++) {
        
        // 内循环
        for (int j=0; j < [list count]-i; j++) {
            
            // j索引对应值
            NSInteger temp_1 = [[list objectAtIndex:j] integerValue];
            
            // j+1索引对应值
            NSInteger temp_2 = [[list objectAtIndex:j+1] integerValue];
            
            if (temp_1 > temp_2) {
                
                NSNumber *tempHold =[[list objectAtIndex:j] copy];
                [list replaceObjectAtIndex:j withObject:[list objectAtIndex:j+1]];
                [list replaceObjectAtIndex:j+1 withObject:tempHold];
            }            
        }
    }
}

@end
