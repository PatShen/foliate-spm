//
//  FileLoader.swift
//  foliate-spm
//
//  Created by swx on 2026/2/4.
//  
//

import Foundation

class FileLoader {
    func loadReaderHTML() {
        guard let htmlPath = Bundle.module.path(forResource: "reader", ofType: "html", inDirectory: "foliate-js") else {
            print("html path not found.")
            return
        }
        print("path: \(htmlPath)")
    }

    func loadTreeJS() {
        guard let jsPath = Bundle.module.path(forResource: "tree", ofType: "js", inDirectory: "foliate-js/ui") else {
            print("js path not found.")
            return
        }
        print("path: \(jsPath)")
    }
}
