//
//  NSString+encode.h
//  iOS-encode-test
//
//  Created by 卢大维 on 15/1/21.
//  Copyright (c) 2015年 weather. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Base64.h"
#import "GZIP.h"
#include <openssl/evp.h>

@interface LDEncode : NSObject

+ (NSString *)getMd5_16Bit_String:(NSString *)srcString;
+ (NSString *)getMd5_32Bit_String:(NSString *)srcString;
+ (NSString *)getSha1String:(NSString *)srcString;
+ (NSString *)getSha256String:(NSString *)srcString;
+ (NSString *)getSha384String:(NSString *)srcString;
+ (NSString*) getSha512String:(NSString*)srcString;

+(NSString *)testOpenssl:(NSString *)srcString;
+(NSString *)urlEncodeString:(NSString *)srcString encode:(NSStringEncoding)encoding;
@end
