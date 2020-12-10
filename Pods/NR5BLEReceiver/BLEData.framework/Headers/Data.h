//
//  Data.h
//  ParseData
//
//  Created by Yume on 2017/10/12.
//  Copyright © 2017年 Yume. All rights reserved.
//
@import Foundation;

#ifndef Data_h
#define Data_h

// Source : http://nknucc.nknu.edu.tw/~jwu/c/cpgch7.htm#third

//#pragma scalar_storage_order big-endian
//https://gcc.gnu.org/onlinedocs/gcc/Structure-Layout-Pragmas.html

// 1 Byte
#pragma pack(push)
#pragma pack(1)
typedef struct {
    uint8_t order;
} BTOrderHeader;

typedef struct {
    uint8_t reserve:7;
    uint8_t msgType:1; // 0 文字 1 特殊格式
    
    uint8_t metaOrder:5;
    uint8_t metaPirority:3;
} BTMetaHeader;

// 6 Byte
//#pragma pack(1)
typedef struct {
    uint8_t affiliation:4;  // 所屬單位，固定 0
    uint8_t attr:4;         // tc 位置
    
    uint8_t roadID:7; // 國五: 5
    uint8_t direction:1;
    
    uint16_t mileage;       // 里程 (10m)
    uint16_t battery;
    
    uint16_t tcID;
} BTInfo;

// BT2 3 從缺

// 4 + (0~15) Byte
// 路段績效 BT4
//#pragma pack(1)
typedef struct {
    BTMetaHeader meta;
    uint8_t roadID:7;
    uint8_t direction:1;
    // speeds ...
} BTRoadSegment;

typedef struct {
    uint8_t averageSpeed:4;
    uint8_t levelOfService:3;
    uint8_t reserved:1;
}BTRoadPerformance;

// 4 + text Byte
// 旅行時間 BT5
//#pragma pack(1)
typedef struct {
    BTMetaHeader meta;
    BTRoadPerformance roadPerformance;
    uint8_t travelDelay;
    // text
} BTTravelTime;


// 1 + text Byte
// 旅行時間 BT6~10
//#pragma pack(1)
typedef struct {
    uint8_t length;
    BTMetaHeader meta;
    uint8_t graph;
    // text
} BTEvent;
#pragma pack(pop)

#endif /* Data_h */
