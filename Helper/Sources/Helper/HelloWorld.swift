//
//  File.swift
//  
//
//  Created by Julian Panucci on 3/24/21.
//

import Foundation

@objc
open class HelloWorld: NSObject{
	
	@objc
	open var foo = "";
	
	public override init() {
		print("Hello")
	}
	
	public static func sayHello() {
		print("Hello")
	}
	
	public func hi() {
		print("Hi")
	}
}
