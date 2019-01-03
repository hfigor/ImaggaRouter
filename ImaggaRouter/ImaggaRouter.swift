//
//  ImaggaRouter.swift
//  ImaggaRouter
//
//  Created by Frank Cipolla on 1/3/19.
//  Copyright © 2019 Frank Cipolla. All rights reserved.
//

import Foundation

public enum ImaggaRouter {
    static let baseURLPath = "http://api.imagga.com/v1"
    static let authenticationToken = "Basic xxx"
    
    case content
    case tags(String)
    case colors(String)
    
    var path: String {
        switch self {
        case .content:
            return "/content"
        case .tags:
            return "/tagging"
        case .colors:
            return "/colors"
        }
    }
}
