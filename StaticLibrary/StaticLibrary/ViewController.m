//
//  ViewController.m
//  StaticLibrary
//
//  Created by 安宁 on 17/3/22.
//  Copyright © 2017年 安宁. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

}

#pragma mark - 静态库

#pragma mark 查看内部具体函数结构

// libtool -dynamic file.a -o file1.a



#pragma mark  查看库包含的cpu架构
//命令
//lipo -info libzbar.a

//信息
//Architectures in the fat file: libzbar.a are: armv6 armv7 i386

//分离.a文件
//xcrun -sdk iphoneos lipo -extract_family armv7 -output libx-inter.a libx.a

//.a操作
//ar -x libx-armv7.a

//如果出错可以先执行下面 在执行 ar -x libx-armv7.a
//lipo libx-inter.a -thin armv7s -output libx-armv7s.a



//两个不同的.o 文件冲突 ，静态库分离


@end


































