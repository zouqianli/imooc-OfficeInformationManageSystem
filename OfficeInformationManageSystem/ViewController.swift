//
//  ViewController.swift
//  OfficeInformationManageSystem
//
//  Created by 邹前立 on 2017/6/1.
//  Copyright © 2017年 zouqianli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var marketingDepartment = Department();
    var humanResourcesDepartment = Department();

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setData();
        
        self.printStaffInfo(arr: humanResourcesDepartment.staff);
        self.printStaffInfo(arr: marketingDepartment.staff);
        
        print("市场部总共有 \(marketingDepartment.getAllMembersCount()) 名职员");
        print("人事部总共有 \(humanResourcesDepartment.getAllMembersCount()) 名职员");
    }
    func setData() {
        let s1 = Staff(identify: 201706010001, name:"员工一", age: 20, gender: 1,departmentName: "人事部", positionName: "经理");
        let s2 = Staff(identify: 201706010002, name:"员工二", age: 30, gender: 2,departmentName: "人事部", positionName: "助理");
        let s3 = Staff(identify: 201706010003, name:"员工三", age: 27, gender: 3,departmentName: "人事部", positionName: "职员");
        
        humanResourcesDepartment.staff.append(s1);
        humanResourcesDepartment.staff.append(s2);
        humanResourcesDepartment.staff.append(s3);
        
        let s4 = Staff(identify: 201706010004, name:"员工四", age: 22, gender: 1,departmentName: "市场部", positionName: "经理");
        let s5 = Staff(identify: 201706010005, name:"员工五", age: 35, gender: 2,departmentName: "市场部", positionName: "助理");
        let s6 = Staff(identify: 201706010006, name:"员工六", age: 70, gender: 3,departmentName: "市场部", positionName: "职员");
        
        marketingDepartment.staff.append(s4);
        marketingDepartment.staff.append(s5);
        marketingDepartment.staff.append(s6);
    }

    func  printStaffInfo(arr:[Staff]) {
        for staff in arr {
            staff.printStaff();
        }
    }
}

