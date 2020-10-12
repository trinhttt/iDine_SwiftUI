//
//  iDineApp.swift
//  iDine
//
//  Created by Trinh Thai on 10/11/20.
//

import SwiftUI

@main
struct iDineApp: App {
    var body: some Scene {
        let order = Order()
        WindowGroup {
            AppView().environmentObject(order)
        }
    }
}
