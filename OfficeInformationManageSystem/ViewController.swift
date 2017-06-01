//
//  ViewController.swift
//  OfficeInformationManageSystem
//
//  Created by 邹前立 on 2017/6/1.
//  Copyright © 2017年 zouqianli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // 部门
    var humanResourcesDepartment:Department = Department(identify:1001,name:"人事部");
    var marketingDepartment:Department = Department(identify:1002,name:"市场部");
    // 职务
    var manager:Position = Position(identify: 3001, name: "经理");
    var assistant:Position = Position(identify: 3002, name: "助理");
    var staffMember:Position = Position(identify: 3003, name: "职员");
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // 设置数据
        self.setData();
        // 打印员工信息
        self.printStaffInfo(arr: humanResourcesDepartment.staff);
        self.printStaffInfo(arr: marketingDepartment.staff);
        
        print("市场部总共有\(marketingDepartment.getAllMembersCount())名职员");
        print("人事部总共有\(humanResourcesDepartment.getAllMembersCount())名职员");
    }
    
    /// 设置数据
    func setData() {
        
        let s1 = Staff(identify: 201706010001, name:"员工一", age: 20, gender: 1,department: humanResourcesDepartment, position:manager);
        let s2 = Staff(identify: 201706010002, name:"员工二", age: 30, gender: 2,department: humanResourcesDepartment, position:assistant);
        let s3 = Staff(identify: 201706010003, name:"员工三", age: 27, gender: 3,department: humanResourcesDepartment, position:staffMember); // 默认 男
        
        humanResourcesDepartment.staff.append(s1);
        humanResourcesDepartment.staff.append(s2);
        humanResourcesDepartment.staff.append(s3);
        
        let s4 = Staff(identify: 201706010004, name:"员工四", age: 22, gender: 1,department: marketingDepartment, position:staffMember);
        let s5 = Staff(identify: 201706010005, name:"员工五", age: 35, gender: 2,department: marketingDepartment, position:manager);
        let s6 = Staff(identify: 201706010006, name:"员工六", age: 70, gender: 3,department: marketingDepartment, position:staffMember);// 超过18~65 默认18
        let s7 = Staff(identify: 201706010007, name:"员工七", age: 28, gender: 2,department: marketingDepartment, position:staffMember);
        
        marketingDepartment.staff.append(s4);
        marketingDepartment.staff.append(s5);
        marketingDepartment.staff.append(s6);
        marketingDepartment.staff.append(s7);
    }
    
    /// 打印员工信息
    ///
    /// - Parameter arr: 部门.员工
    func  printStaffInfo(arr:[Staff]) {
        for staff in arr {
            staff.printStaff();
        }
    }
}

