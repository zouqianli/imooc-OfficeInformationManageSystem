//
//  Department.swift
//  OfficeInformationManageSystem
//
//  Created by 邹前立 on 2017/6/1.
//  Copyright © 2017年 zouqianli. All rights reserved.
//
/**
 1)类型描述：能够描述部门编号、部门名称、获取所有该部门员工信息
 2)要求：设定方法统计该部门员工个数
 */
import Foundation

class Department {
    var identify:Int = 0; // 部门编号
    var name:String = ""; // 部门名称
    var staff = [Staff](); // 该部门所有员工信息
    
    /// 获取该部门员工数量
    ///
    /// - Returns: 返回该部门所有员工个数
    func getAllMembersCount() -> Int {
        return self.staff.count;
    }
    
    init(identify:Int,name:String) {
        self.identify = identify;
        self.name = name;
    }
}
