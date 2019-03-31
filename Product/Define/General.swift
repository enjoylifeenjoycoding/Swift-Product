//
//  General.swift
//  Product
//
//  Created by 赵宇鹏 on 2019/2/19.
//  Copyright © 2019年 赵宇鹏. All rights reserved.
//

import UIKit

//MARK: 屏幕的宽
let SCREEN_WIDTH = UIScreen.main.bounds.size.width

//MARK: 屏幕的高
let SCREEN_HEIGHT = UIScreen.main.bounds.size.height

//MARK: 状态栏高度
let STATUSBAR_HEIGHT = UIApplication.shared.statusBarFrame.height

//MARK: 导航栏高度:通用
let NAVIGATIONBAR_HEIGHT = UINavigationController().navigationBar.frame.size.height

//MARK: 颜色
func kColor(red:CGFloat, green:CGFloat, blue:CGFloat) -> UIColor {
    return UIColor.init(red: red/255.0, green: green/255.0, blue: blue/255.0, alpha: 1.0)
}

//MARK: - 调试输出函数
func DELog<T>(_ message: T, fileName: String = #file, methodName: String = #function, lineNumber: Int = #line)
{
    #if DEBUG
    // 要把路径最后的字符串截取出来
    let fName = ((fileName as NSString).pathComponents.last!)
    print("\(fName).\(methodName)[\(lineNumber)]: \(message)")
    #endif
}

//MARK: - pt 转 px
extension Double {
    func px() -> CGFloat {
        return CGFloat.init(CGFloat.init(self)/750*SCREEN_WIDTH)
    }
}
extension Float {
    func px() -> CGFloat {
        return CGFloat.init(CGFloat.init(self)/750*SCREEN_WIDTH)
    }
}
extension Int {
    
    func px() -> CGFloat {
        return CGFloat.init(CGFloat.init(self)/750*SCREEN_WIDTH)
    }
}
extension CGFloat {
    
    func minus() -> CGFloat{
        return 0 - self
    }
    
}

