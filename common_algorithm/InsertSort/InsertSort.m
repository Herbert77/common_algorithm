//
//  InsertSort.m
//  InsertSort
//
//  Created by Herbert Hu on 2017/9/24.
//  Copyright © 2017年 Herbert Hu. All rights reserved.
//

#import "InsertSort.h"

@implementation InsertSort

// 快速插入排序
+ (void)directInsertSort:(NSMutableArray *)list {
    
    for (int i=0; i<[list count]; i++) {
        
        if (i==0) {
            continue;
        }
        
        // 待插入的值，其前面的序列是已经排好的
        NSInteger sortedValue = [[list objectAtIndex:i] integerValue];
        int j = i;
        
        // 前面的序列在如下条件，需要向右侧移位
        // [[list objectAtIndex:j-1] integerValue]>sortedValue && j > 0
        while (j>0 && [[list objectAtIndex:j-1] integerValue]>sortedValue) {
            
            [list replaceObjectAtIndex:j withObject:[list objectAtIndex:j-1]];
            j--;
        }
        
        [list replaceObjectAtIndex:j withObject:[NSNumber numberWithInteger:sortedValue]];
    }
}

// 折半插入排序
+ (void)binaryInsertSort:(NSMutableArray *)list {

    NSInteger list_length = [list count];

    for (int i=1; i < list_length; i++) {

        NSInteger insertedValue = [[list objectAtIndex:i] integerValue];
        
        int left_index = 0;
        int right_index = i-1;
        
        while (left_index <= right_index) {
            
            int middle_index = (left_index + right_index)/2;
            NSInteger middleValue = [[list objectAtIndex:middle_index] integerValue];
            if (middleValue < insertedValue) {
                
                left_index = middle_index + 1;
            }
            else if (middleValue > insertedValue){
                
                right_index = middle_index - 1;
            }
        }
        
        for (int j=i; j>left_index; j--) {
            
            [list replaceObjectAtIndex:j withObject:[list objectAtIndex:j-1]];
        }
        
        [list replaceObjectAtIndex:left_index withObject:[NSNumber numberWithInteger:insertedValue]];
    }
}

@end
