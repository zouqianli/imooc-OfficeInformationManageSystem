//
//  Position.swift
//  OfficeInformationManageSystem
//
//  Created by 邹前立 on 2017/6/1.
//  Copyright © 2017年 zouqianli. All rights reserved.
//
/**
 类型描述：能够描述职务编号、职务名称
 */
import Foundation

class Position {
    var identify:Int = 0;
    var name:String = "";
    
    init(identify:Int,name:String) {
        self.identify = identify;
        self.name = name;
    }
}

