//
//  main.m
//  InsertSort
//
//  Created by Herbert Hu on 2017/9/24.
//  Copyright © 2017年 Herbert Hu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InsertSort.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        NSMutableArray *arr = [[NSMutableArray alloc] initWithArray:@[@3, @7, @2, @8, @10, @1]];
//        [InsertSort directInsertSort:arr];
//        NSLog(@"%i", (int)(1.2));
        
//        [InsertSort insertSort:arr];
//        NSLog(@"arr: %@", arr);
        
        [InsertSort binaryInsertSort:arr];
        NSLog(@"%@", arr);
        
        /*
             时间复杂度：O（n^2)
             空间复杂度：O（1）
         
             最少比较次数：（已排序的数组）n-1次
             最多比较次数：（降序的数组）n(n-1)/2次
         */
    }
    return 0;
}
