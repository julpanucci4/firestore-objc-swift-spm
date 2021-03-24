//
//  File.swift
//  
//
//  Created by Julian Panucci on 3/24/21.
//

import Foundation
import FirebaseFirestore

internal func isFirestorePassthroughType<T: Any>(_ value: T) -> Bool {
  return
	T.self == GeoPoint.self
}


open class HelloWorld: {
	open static func sayHello() {
		print("Hello")
	}
}

