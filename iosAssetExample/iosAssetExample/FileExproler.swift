//
//  FileExproler.swift
//  iosAssetExample
//
//  Created by N2018-0257-001-009 on 2023/02/21.
//

import Foundation

struct FileExploler {
    
    init() {
        print(file)
        print(dictionary)
    }
    lazy var file: String = {
        return Bundle.main.path(forResource: "setting", ofType:"plist" ) ?? ""
    }()
    lazy var dictionary: NSDictionary = {
        return NSDictionary(contentsOfFile: file) ?? [:]
    }()

    lazy var url1: String = {
        if let  urtl1  = dictionary.value(forKey: "url1") as? String {
            return urtl1
        }
        return ""
    }()
    lazy var url2: String = {
        if let  urtl2  = dictionary.value(forKey: "url2") as? String {
            return urtl2
        }
        return ""
    }()
    lazy var url3: String = {
        if let  urtl3  = dictionary.value(forKey: "url3") as? String {
            return urtl3
        }
        return ""
    }()

}
