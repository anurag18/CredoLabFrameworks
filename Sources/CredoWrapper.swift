//
//  File.swift
//  
//
//  Created by Anurag Sharma on 27/05/23.
//

import Foundation
import CredoAppCore

public class CredoWrapper {
    public static let shared = CredoWrapper()
    private init() {
        
    }
    
    public func testCredo(){
        print("CREDO Say Hi .....")
    }
}
