//
//  Staff.swift
//  OfficeInformationManageSystem
//
//  Created by 邹前立 on 2017/6/1.
//  Copyright © 2017年 zouqianli. All rights reserved.
//
/**
  1)类型描述：能够描述员工姓名、工号、年龄、性别、所属部门、职务信息
  2)要求：
         1、 设定方法限定年龄只能是18--65之间,反之则设置默认为18岁
         2、 设定方法限定性别只能是“男”或者“女”,反之则设置默认为"男"
         3、 设定方法，实现员工自我介绍信息，将员工信息作为字符串返回
 */
import Foundation

class Staff {
    var identify:Int = 0;
    var name:String = "";
    var age:Int = 0;
    var gender:Int = 0;
    var department:Department;
    var position:Position;
    
    init(identify:Int,name:String,age:Int,gender:Int,department:Department,position:Position) {
        self.identify = identify;
        self.name = name;
        self.age = age;
        self.gender = gender;
        self.department = department;
        self.position = position;
    }
    
    /// 过滤显示年龄
    ///
    /// - Parameter age: 员工年龄
    /// - Returns: 超过18~65 默认值18
    func setAge(age:Int) -> Int {
        if self.age < 18 || self.age > 65 {
            self.age = 18; // 默认18
        }
        return self.age;
    }
    
    /// 过滤显示性别
    ///
    /// - Parameter gender: 性别
    /// - Returns: 1：男， 2：女，其他：男
    func setGender(gender:Int) -> String {
        var gender = "";
        if self.gender == 2 {
            gender = "女";
        }else {
            gender = "男"; // 默认男
        }
        return gender;
    }
    /// 自我介绍
    ///
    /// - Returns: 自我介绍信息字符串
    func staffIntro() -> String {
        // 过滤显示年龄
        self.age = self.setAge(age: self.age);
        // 过滤显示性别
        var gender = ""; // 数据类型不一致 Int->String
        gender = self.setGender(gender:self.gender);
        
        return "姓名：\(self.name)"+"工号：\(self.identify)"+"性别：\(gender)"+"年龄：\(self.age)"+"职务：\(self.department.name+self.position.name)"
    }
    
    /// 控制台输出 自我介绍信息字符串
    func printStaff() {
        // 过滤显示年龄
        self.age = self.setAge(age: self.age);
        // 过滤显示性别
        var gender = ""; // 数据类型不一致 Int->String
        gender = self.setGender(gender:self.gender);
        
        print("姓名：\(self.name)");
        print("工号：\(self.identify)");
        print("性别：\(gender)");
        print("年龄：\(self.age)");
        print("职务：\(self.department.name+self.position.name)");
        print("===================");
    }

}
