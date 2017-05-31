//
//  History.swift
//  TipCaculator
//
//  Created by healer on 5/31/17.
//  Copyright © 2017 healer. All rights reserved.
//

import Foundation

class History {
    private var CaculatorTip: String
    private var Time: String
    public static var Histories = [History] ()
    
   
    init(TotalTip: String, Time: String) {
        self.CaculatorTip = TotalTip
        self.Time = Time
    }
    
    func getCaculatorTip() -> String{
        return CaculatorTip
    }
    func getTime() -> String{
        return Time
    }
    
}
