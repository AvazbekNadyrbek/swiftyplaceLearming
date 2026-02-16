//
//  ExpenseGridView.swift
//  swiftyplaceLearming
//
//  Created by Авазбек Надырбек уулу on 2/11/26.
//

import SwiftUI

struct ExpenseGridView: View {
    
    let expenseData = ExpenseData.examples()
    let totalExpense: Double = 13500
    
    var body: some View {
        Grid(alignment: .trailing) {
            
            GridRow {
                
                Color.clear
                    .gridCellUnsizedAxes([.vertical, .horizontal])
                
                Text("Month")
                Text("Fixed")
                Text("Total")
                    .bold()
            }
            
            Divider()
                .gridCellUnsizedAxes([.vertical, .horizontal])

            ForEach(expenseData) { data in
                
                GridRow {
                    Text(month(for: data.month))
                    Text(String(format: "%.2f", data.fixedExpenses))
                    Text(String(format: "%.2f", data.variableExpenses))
                    Text(String(format: "%.2f", data.totalExpenses))
                }
                
                
            }
            
            Divider()
                .gridCellUnsizedAxes([.vertical, .horizontal])
            GridRow {
                Text("Total")
                    .bold()
                Color.clear
                    .gridCellUnsizedAxes([.vertical, .horizontal])
                    .gridCellColumns(2)
                Text("$" + String(format: "%.2f", totalExpense))
            }
        }
    }
    
    let formatter = DateFormatter()
    func month(for number: Int) -> String {
        formatter.shortMonthSymbols[number - 1]
    }
}

#Preview {
    ExpenseGridView()
}
