//
//  InsertSort.h
//  InsertSort
//
//  Created by Herbert Hu on 2017/9/24.
//  Copyright © 2017年 Herbert Hu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface InsertSort : NSObject

// 直接插入排序
+ (void)directInsertSort:(NSMutableArray *)list;

// 折半插入排序
+ (void)binaryInsertSort:(NSMutableArray *)list;

@end
