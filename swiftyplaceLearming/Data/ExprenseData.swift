//
//  ExprenseData.swift
//  swiftyplaceLearming
//
//  Created by Авазбек Надырбек уулу on 2/11/26.
//

import Foundation

struct ExpenseData: Identifiable {
    let month: Int
    let fixedExpenses: Double
    let variableExpenses: Double
    var totalExpenses: Double {
        fixedExpenses + variableExpenses
    }
    
    var id: Int { return month }
    
    static func examples() -> [ExpenseData] {
        [ExpenseData(month: 1, fixedExpenses: 100, variableExpenses: 130),
         ExpenseData(month: 2, fixedExpenses: 100, variableExpenses: 10),
         ExpenseData(month: 3, fixedExpenses: 100, variableExpenses: 0),
         ExpenseData(month: 4, fixedExpenses: 100, variableExpenses: 1230),
         ExpenseData(month: 5, fixedExpenses: 100, variableExpenses: 990),
         ExpenseData(month: 6, fixedExpenses: 100, variableExpenses: 230),
         ExpenseData(month: 7, fixedExpenses: 100, variableExpenses: 0),
         ExpenseData(month: 8, fixedExpenses: 160, variableExpenses: 0),
         ExpenseData(month: 9, fixedExpenses: 160, variableExpenses: 350),
         ExpenseData(month: 10, fixedExpenses: 160, variableExpenses: 480),
         ExpenseData(month: 11, fixedExpenses: 160, variableExpenses: 0),
         ExpenseData(month: 12, fixedExpenses: 160, variableExpenses: 0)]
    }
}

