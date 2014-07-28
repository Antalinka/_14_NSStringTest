//
//  AppDelegate.m
//  _14_StringsTest
//
//  Created by Exo-terminal on 3/26/14.
//  Copyright (c) 2014 Evgenia. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    /*
    NSString* string1 = @"string 1";
    NSString* string2 = @"string 2";
    
    NSArray* array = [NSArray arrayWithObjects:string1,string2, nil];
    
    for (NSString* string in array) {
        if ([string isEqualToString:@"string 1"]) {
            NSLog(@"index = %d", [array indexOfObject:string]);
        }
    }

    NSString* string = @"Hello World World";
    
    NSLog(@"%@", string);
    NSRange range =[string rangeOfString:@"world" options:NSCaseInsensitiveSearch | NSBackwardsSearch ];
    
    if (range.location != NSNotFound) {
        NSLog(@"%@", NSStringFromRange(range));
    }else{
        NSLog(@"not found");
    }*/
    NSString* text = @"NSString class declares the programmatic interface for an object that manages immutable strings. An immutable string is a text string that is defined when it is created and subsequently cannot be changed. NSString is implemented to represent an array of Unicode characters, in other words, a text string.The mutable subclass of NSString is NSMutableString.The NSString class has two primitive methods—length and characterAtIndex:—that provide the basis for all other methods in its interface. The length method returns the total number of Unicode characters in the string. characterAtIndex: gives access to each character in the string by index, with index values starting at 0.NSString declares methods for finding and comparing strings. It also declares methods for reading numeric values from strings, for combining strings in various ways, and for converting a string to different forms (such as encoding and case changes).The Application Kit also uses NSParagraphStyle and its subclass NSMutableParagraphStyle to encapsulate the paragraph or ruler attributes used by the NSAttributedString classes. Additionally, methods to support string drawing are described in NSString Additions, found in the Application Kit.NSString is “toll-free bridged” with its Core Foundation counterpart, CFStringRef. See “Toll-Free Bridging” for more information on toll-free bridging.";
    
//    text = [];
//    text = [text substringToIndex:12];
//      text = [text substringWithRange:NSMakeRange(12,59)];
//    NSRange range = [text rangeOfString:@"The mutable subclass of NSString "];
//    
//    if (range.location != NSNotFound) {
//        text = [text substringToIndex:range.location];
//    }
    
   /*
    NSRange searchRange = NSMakeRange(0, [text length]);
    NSInteger counter = 0;
    
    
    while (YES) {
        NSRange range = [text rangeOfString:@"NSString" options:0 range:searchRange];
        if (range.location != NSNotFound) {
            NSInteger index = range.location + range.length;
            searchRange.location = index;
            searchRange.length = [text length]-index;
            counter++;
            NSLog(@"%@", NSStringFromRange(range));
            
        }else{
            break;
        }
        
    }
    NSLog(@"counter = %d",counter);*/
    
//    text = [text stringByReplacingOccurrencesOfString:@"NSString" withString:@"TRALALA"];
  /*  text = [text uppercaseString];
    
    NSLog(@"%@", text);
    
    NSLog(@"%d", [@"546" intValue]);
    */
    
    text = [text stringByReplacingOccurrencesOfString:@"." withString:@" "];
    text = [text stringByReplacingOccurrencesOfString:@"," withString:@" "];
    text = [text stringByReplacingOccurrencesOfString:@"\"" withString:@" "];
    
    NSArray* array = [text componentsSeparatedByString:@" "];
    
    NSLog(@"%@", array);
    
    text = [array componentsJoinedByString:@"_"];
    
    NSLog(@"%@", text);
    
    
    
    
    
//    NSString* regexString =
//    @"^([\\d]+(?:\\s?[ab])?)\\s((?:Mr|Ms|Mrs|Mister)\\s[\\w/]+|[\\w/]+)(?:\\s(.*))?$";
//    
//    NSRegularExpression *regex =
//    [NSRegularExpression regularExpressionWithPattern:regexString
//                                              options:NSRegularExpressionCaseInsensitive
//                                                error:nil];
    
    
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
