//
//  CollisionCategories.swift
//  Snake_2
//
//  Created by Mikhail Zakharov on 09.06.2020.
//  Copyright © 2020 Mikhail Zakharov. All rights reserved.
//

import Foundation

struct CollisionCategories {
    static let snake: UInt32      = 0x1 << 0
    static let snakeHead: UInt32  = 0x1 << 1
    static let apple: UInt32      = 0x1 << 2
    static let edgeBody: UInt32   = 0x1 << 3
}

