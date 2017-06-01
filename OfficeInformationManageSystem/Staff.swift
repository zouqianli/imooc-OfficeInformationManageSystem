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
    var departmentName:String = "";
    var positionName:String = "";
    
    init(identify:Int,name:String,age:Int,gender:Int,departmentName:String,positionName:String) {
        self.identify = identify;
        self.name = name;
        self.age = age;
        self.gender = gender;
        self.departmentName = departmentName;
        self.positionName = positionName;
    }
    func staffIntro() -> String {
        var gender = "";
        if self.gender == 2 {
            gender = "女";
        }else {
            gender = "男";
        }
        if self.age < 18 || self.age > 65 {
            self.age = 18;
        }
        
        return "姓名：\(self.name)"+"工号：\(self.identify)"+"性别：\(gender)"+"年龄：\(self.age)"+"职务：\(self.departmentName+self.positionName)"
    }
    
    func printStaff() {
        var gender = "";
        if self.gender == 2 {
            gender = "女";
        }else {
            gender = "男";
        }
        if self.age < 18 || self.age > 65 {
            self.age = 18;
        }
        print("姓名：\(self.name)");
        print("工号：\(self.identify)");
        print("性别：\(gender)");
        print("年龄：\(self.age)");
        print("职务：\(self.departmentName+self.positionName)");
        
    }

}
