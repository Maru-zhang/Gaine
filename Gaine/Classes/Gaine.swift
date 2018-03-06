//
//  Gaine.swift
//  Gaine
//
//  Created by Maru on 06/03/2018.
//

import Foundation

public func Gaine<T>(_ target: T, initialization: ((inout T) throws -> Void)? = nil) rethrows -> T {
    var value = target
    try initialization?(&value)
    return value
}
