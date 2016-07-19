//
//  NSString+lgb_string.m
//  TTObject
//
//  Created by lgb789 on 16/5/18.
//  Copyright © 2016年 com.lgb. All rights reserved.
//

#import "NSString+lgb_string.h"
#import <CommonCrypto/CommonDigest.h>

@implementation NSString (lgb_string)

- (NSString*)lgb_md5
{
    const char* ptr = [self UTF8String];
    unsigned char md5Buffer[CC_MD5_DIGEST_LENGTH];
    CC_MD5 (ptr, (unsigned int)strlen (ptr), md5Buffer);

    NSMutableString* output = [NSMutableString stringWithCapacity:CC_MD5_DIGEST_LENGTH * 2];
    for (int i = 0; i < CC_MD5_DIGEST_LENGTH; i++)
    {
        [output appendFormat:@"%02x", md5Buffer[i]];
    }
    return output;
}

+ (BOOL)lgb_isEmpty:(NSString *)str
{
    if ([str length] == 0)
    {
        return YES;
    }

    if (![[str stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] length])
    {
        return YES;
    }

    return NO;
}

@end
