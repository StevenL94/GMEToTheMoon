//
//  Stonk.swift
//  GMEToTheMoon
//
//  Created by Steven Lee on 9/2/21.
//

import Foundation

struct Stonk: Identifiable {
    let id = UUID()
    let source: String
}

extension Stonk {
    static func sampleData() -> [Stonk]{
        return [Stonk(source: "E*TRADE"), Stonk(source: "Charles Schwab"), Stonk(source:"RobinDaHood"), Stonk(source: "Webull"), Stonk(source: "IBKR")]
    }
}
